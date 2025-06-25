#!/bin/bash

#retrieve parameters
DEVICE_ID=${1:-fenix7}
CERTIFICATE_PATH=$2

#fail if one of the commands fails
#BUG it's not possible to set this flag, as monkeydo returns a non-zero exit code even when tests succeed
#set -e

#kill child processes when this scripts exists  
trap 'kill $(jobs -p) 2>/dev/null; pkill -f "Xvfb :1" 2>/dev/null; rm -f /tmp/.X1-lock 2>/dev/null; fix_ownership' EXIT

# Function to fix file ownership for host access
fix_ownership() {
    local host_uid=$(stat -c %u /app 2>/dev/null)
    local host_gid=$(stat -c %g /app 2>/dev/null)
    
    if [[ -n "$host_uid" && "$host_uid" != "0" && -d "bin" ]]; then
        chown -R "$host_uid:$host_gid" bin/ 2>/dev/null || true
    fi
}

#info displays a message passed as a parameter of read it from stdin
function info {
	#retrieve message from the parameter
	if [[ -n $1 ]]
	then
		message="$1"
		echo -e "$message"
	#or read the message directly
	else
		while read -r message
		do
			info "$message"
		done
	fi
}

#generate temporary certificate if required
if [[ -z $CERTIFICATE_PATH ]]
then
	info "Generating temporary certificate..."
	openssl genrsa -out /tmp/key.pem 4096 && openssl pkcs8 -topk8 -inform PEM -outform DER -in /tmp/key.pem -out /tmp/key.der -nocrypt
	CERTIFICATE_PATH=/tmp/key.der
fi

# Initialize device_ids array
device_ids=()

# If DEVICE_ID is '*', parse the manifest.xml
if [[ "$DEVICE_ID" == "all" ]]; then
    info "Loading device IDs from manifest.xml..."
    # Parse the manifest.xml to get device IDs
    while IFS= read -r id; do
        # Only add non-empty IDs to the array
        if [[ -n "$id" ]]; then
            device_ids+=("$id")
            info "Adding supported device: $id"
        fi
    done < <(xmllint --xpath '//*[local-name()="product"]/@id' /app/manifest.xml | sed 's/id="//;s/"//g' | tr ' ' '\n' | grep -v '^$' | head -n 3)  # Limit to 3 devices
else
    # If a specific DEVICE_ID is provided, add it to the list
    info "Single device mode: $DEVICE_ID"
    device_ids+=("$DEVICE_ID")
fi

# Set up virtual display once for all devices
info "Setting up virtual display for graphics support..."
export DISPLAY=:1

# Clean up any existing X server
pkill -f "Xvfb :1" 2>/dev/null || true
rm -f /tmp/.X1-lock 2>/dev/null

# Start Xvfb with more compatible settings
Xvfb "$DISPLAY" -screen 0 1280x1024x24 -ac +extension GLX +render -noreset &
xvfb_global_pid=$!

# Wait for Xvfb to be ready
sleep 3

# Verify display is working
if ! DISPLAY=:1 xdpyinfo >/dev/null 2>&1; then
    info "Warning: Virtual display may not be working properly"
fi

#clean up the test results directory
rm -rf test-results/*
#create the build directory
mkdir -p "test-results/build"

# Process each device sequentially
for DEVICE_ID in "${device_ids[@]}"; do

    info "=== Processing device: $DEVICE_ID ==="
	#clean up the build directory
    rm -rf test-results/build/*
    # Try compilation with current display setup
    info "Compiling application for device: $DEVICE_ID..."
	# Build the project with unit tests included
    if monkeyc -f monkey.jungle -d "$DEVICE_ID" -o "test-results/build/app.prg" -y "$CERTIFICATE_PATH" -t -l 3; then
        
		info "✓ Compilation successful for device: $DEVICE_ID"
        

        #create a fake display and run the simulator
        info "Launching simulator..."
        simulator &
        simulator_pid=$!

        # Give simulator more time to initialize
        sleep 2

        # Check if simulator is still running
        if ! kill -0 $simulator_pid 2>/dev/null; then
            info "Error: Simulator crashed during startup for device: $DEVICE_ID"
            continue  # Skip to the next device
        fi

        # Load app into simulator for display (without testing)
        info "Loading app into simulator for device: $DEVICE_ID..."
        timeout 15s monkeydo test-results/build/app.prg "$DEVICE_ID" &
        load_pid=$!

        # Wait for app to load and display
        sleep 8

        # Try to activate and interact with the simulator
        info "Activating simulator window..."
        DISPLAY=:1 xdotool search --name "CIQ Simulator" windowactivate 2>/dev/null || true
        DISPLAY=:1 xdotool key space 2>/dev/null || true
        sleep 1
        DISPLAY=:1 xdotool key Return 2>/dev/null || true
        sleep 1
        DISPLAY=:1 xdotool key Escape 2>/dev/null || true
        sleep 2

		info "Taking screenshot of the CIQ Simulator window..."
        screenshot_file="test-results/$DEVICE_ID/$DEVICE_ID"
        # Get the window ID of the CIQ Simulator
        simulator_window=$(DISPLAY=:1 xdotool search --name "CIQ Simulator" 2>/dev/null)

        # Log the window ID for debugging
        info "Simulator window ID: $simulator_window"

        if [[ -n "$simulator_window" ]] && command -v import >/dev/null 2>&1; then
            # Add a delay to ensure the window is ready
            sleep 15
            if DISPLAY=:1 import -window "$simulator_window" "${screenshot_file}.png" 2>/dev/null; then
                info "Screenshot saved (active window): ${screenshot_file}.png"
            else
                info "ERROR: Could not take screenshot of the active window"
            fi
        else
            info "ERROR: CIQ Simulator window not found"
        fi

        # Stop the app loading process
        if kill -0 $load_pid 2>/dev/null; then
            kill $load_pid 2>/dev/null
        fi

        #run tests
        info "Running tests for device: $DEVICE_ID..."
        result_file="test-results/$DEVICE_ID/test-results.txt"
        # Ensure the directory exists
        mkdir -p "test-results/$DEVICE_ID"
        # Run the tests and wait for completion
        monkeydo test-results/build/app.prg "$DEVICE_ID" -t > "$result_file"
        test_pid=$?

        # Wait a bit for tests to start and potentially create views
        sleep 3

        

		# Wait for tests to complete
    	wait $test_pid

        # Print the result
        if [[ -f "$result_file" ]]; then
            info "Test results saved to $result_file"
            info "Last line of results: $(tail -1 "$result_file")"

            # Retrieve the last line of the result starting with PASSED or FAILED
            result=$(tail -1 "$result_file")

            if [[ $result == PASSED* ]]; then
                info "Success for device: $DEVICE_ID!"
            else
                info "Failure for device: $DEVICE_ID!"
            fi
        else
            info "Error: Test results file was not created"
            info "Failure for device: $DEVICE_ID!"
        fi

        # Clean up processes for this device iteration
        info "Cleaning up processes for device: $DEVICE_ID..."
        
        # Kill simulator if still running
        if [[ -n "$simulator_pid" ]] && kill -0 $simulator_pid 2>/dev/null; then
            kill $simulator_pid 2>/dev/null
            sleep 1
        fi
        
        # Wait a moment for processes to fully terminate
        sleep 1
    else
        info "✗ Compilation failed for device: $DEVICE_ID"
    fi
done

# Create a montage of all screenshots
create_screenshot_montage() {
    info "Creating montage of all screenshots..."
    if command -v montage >/dev/null 2>&1; then
        # Find all PNG screenshots
        if [[ -d "test-results" ]]; then
            # Create a temporary file list
            find "test-results" -name "*.png" > /tmp/screenshot_list.txt
            
            # Check if we found any screenshots
            if [[ -s /tmp/screenshot_list.txt ]]; then
                # Create montage with 5 images per row, adding device names as labels
                montage -label '%t' -pointsize 36 -fill black -gravity south -geometry +4+4 -tile 5x $(cat /tmp/screenshot_list.txt) "test-results/screenshot_montage.png" && \
                convert "test-results/screenshot_montage.png" -resize 50% "test-results/screenshot_montage.png"
                info "Screenshot montage created at /test-results/screenshot_montage.png"
            else
                info "No screenshots found to create montage"
            fi
            rm -f /tmp/screenshot_list.txt
        else
            info "No test results directory found"
        fi
    else
        info "Warning: ImageMagick's montage command not found. Skipping montage creation."
    fi
}

# Create the montage after all tests are complete
create_screenshot_montage

# Fix ownership of created files so they're accessible on the host
# Get the host user's UID and GID from the mounted directory
host_uid=$(stat -c %u /app)
host_gid=$(stat -c %g /app)

if [[ $host_uid != "0" ]]; then
    info "Fixing file ownership for host access..."
    # Change ownership of all created files to match the host user
    chown -R "$host_uid:$host_gid" test-results/ 2>/dev/null || true
fi
