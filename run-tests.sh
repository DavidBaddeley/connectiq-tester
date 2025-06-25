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

# Function to take a screenshot of a specific view
take_screenshot() {
    local device_id="$1"
    local view_name="$2"
    local simulator_pid="$3"
    local simulator_window="$4"
    
    info "Taking screenshot of the $view_name..."
    
    # Check if simulator is still running before taking screenshot
    if ! kill -0 $simulator_pid 2>/dev/null; then
        info "Error: Simulator crashed before taking $view_name screenshot for device: $device_id"
        return 1
    fi
    
    if [[ -n "$simulator_window" ]] && command -v import >/dev/null 2>&1; then
        # Add a delay to ensure the window is ready
        sleep 1
        if DISPLAY=:1 import -window "$simulator_window" "test-results/$device_id/$view_name.png" 2>/dev/null; then
            # Resize the screenshot to 300px width while maintaining aspect ratio
            if command -v convert >/dev/null 2>&1; then
                convert "test-results/$device_id/$view_name.png" -resize 300x "test-results/$device_id/$view_name.png"
                info "$view_name Screenshot saved"
            else
                info "$view_name Screenshot saved (ImageMagick convert not available for resizing)"
            fi
            return 0
        else
            info "Warning: Could not take screenshot of the active window"
            return 1
        fi
    else
        info "Warning: CIQ Simulator window not found"
        return 1
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

# Initialize HTML report
create_html_report() {
    cat > "test-results/test-results.html" << EOF
<!DOCTYPE html>
<html>
<head>
    <title>Connect IQ Test Results</title>
    <style>
        body { font-family: Arial, sans-serif; margin: 20px; }
        h1 { color: #333; }
        .device-section { 
            margin: 20px 0;
            padding: 15px;
            border: 1px solid #ddd;
            border-radius: 5px;
        }
        .device-header {
            display: flex;
            align-items: center;
            margin-bottom: 15px;
        }
        .device-name {
            color: #2c3e50;
            margin: 0;
        }
        .status {
            margin-left: 15px;
            padding: 5px 10px;
            border-radius: 3px;
            font-weight: bold;
        }
        .passed { background: #27ae60; color: white; }
        .failed { background: #e74c3c; color: white; }
        pre {
            background: #f8f9fa;
            padding: 15px;
            border-radius: 5px;
            overflow-x: auto;
            white-space: pre-wrap;
        }
        img {
            max-width: 100%;
            margin: 10px 0;
            border: 1px solid #ddd;
            border-radius: 5px;
        }
    </style>
</head>
<body>
    <h1>Connect IQ Test Results</h1>
EOF
}

append_device_results() {
    local device="$1"
    local result_file="$2"
    local status="$3"
    local status_class="failed"
    [[ $status == PASSED* ]] && status_class="passed"

    # Read the content of the result file
    local result_content
    result_content=$(cat "$result_file")

    cat >> "test-results/test-results.html" << EOF
    <div class="device-section">
        <div class="device-header">
            <h2 class="device-name">Device: $device</h2>
            <span class="status $status_class">$status</span>
        </div>
        <img src="$device/screenshot-1.png" alt="Screenshot for $device" onerror="this.style.display='none'"/>
        <img src="$device/screenshot-2.png" alt="Screenshot for $device" onerror="this.style.display='none'"/>
        <img src="$device/screenshot-3.png" alt="Screenshot for $device" onerror="this.style.display='none'"/>
        <img src="$device/screenshot-4.png" alt="Screenshot for $device" onerror="this.style.display='none'"/>
        <h3>Test Output:</h3>
        <pre>$result_content</pre>
    </div>
EOF
}

#clean up the test results directory
rm -rf test-results/*
#create the build directory
mkdir -p test-results/build
create_html_report

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
    done < <(xmllint --xpath '//*[local-name()="product"]/@id' /app/manifest.xml | sed 's/id="//;s/"//g' | tr ' ' '\n' | grep -v '^$'| head -n 100)  # Limit to X devices add '| head -n X'
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

# Shuffle the device list randomly
device_ids=($(printf '%s\n' "${device_ids[@]}" | shuf))

# First, compile applications for all devices while graphics environment is fresh
compiled_devices=()
info "=== COMPILATION PHASE ==="
for DEVICE_ID in "${device_ids[@]}"; do
    info "Compiling application for device: $DEVICE_ID..."
    
    # Create device-specific binary directory
    mkdir -p "test-results/build/$DEVICE_ID"
    
    # Try compilation with current display setup
    if monkeyc -f monkey.jungle -d "$DEVICE_ID" -o "test-results/build/$DEVICE_ID/app.prg" -y "$CERTIFICATE_PATH" -t -l 3; then
        info "✓ Compilation successful for device: $DEVICE_ID"
        compiled_devices+=("$DEVICE_ID")
    else
        info "✗ Compilation failed for device: $DEVICE_ID"
    fi
done

# Now run tests for all successfully compiled devices
info "=== TESTING PHASE ==="
for DEVICE_ID in "${compiled_devices[@]}"; do

    mkdir -p "test-results/$DEVICE_ID"
    # Copy the device-specific binary to the expected location
    #cp "bin/$DEVICE_ID/app.prg" "bin/app.prg"

    #create a fake display and run the simulator
    info "Launching simulator for device: $DEVICE_ID..."

    # Try to start simulator with more verbose output for debugging
    info "Starting simulator (debug mode)..."
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
    timeout 15s monkeydo test-results/build/$DEVICE_ID/app.prg "$DEVICE_ID" 2>&1 | tee /tmp/debug_output.txt &
    load_pid=$!

    # Wait for app to load and display
    info "Waiting for app to load..."
    if wait $load_pid; then
        info "App loaded successfully"
    else
        info "App loading completed with exit code $?"
    fi
    
    
    
    # Check if simulator is still running after app load
    if ! kill -0 $simulator_pid 2>/dev/null; then
        info "Error: Simulator crashed after app load for device: $DEVICE_ID"
        continue  # Skip to the next device
    fi
    
    simulator_window=$(DISPLAY=:1 xdotool search --name "CIQ Simulator" 2>/dev/null)
    info "Simulator window ID: $simulator_window"
    
    # Check if simulator is still running before taking screenshots
    if ! kill -0 $simulator_pid 2>/dev/null; then
        info "Error: Simulator crashed before screenshots for device: $DEVICE_ID"
        continue  # Skip to the next device
    fi
    key_press_sleep=1
    # Check debug output for beta lock message
    
    info "Debug output content:"
    cat /tmp/debug_output.txt
    take_screenshot "$DEVICE_ID" "screenshot-1" "$simulator_pid" "$simulator_window"
    sleep $key_press_sleep
    DISPLAY=:1 xdotool key space 2>/dev/null || true
    sleep $key_press_sleep
    DISPLAY=:1 xdotool key space 2>/dev/null || true
    sleep $key_press_sleep
    DISPLAY=:1 xdotool key space 2>/dev/null || true
    sleep $key_press_sleep
    take_screenshot "$DEVICE_ID" "screenshot-2" "$simulator_pid" "$simulator_window"

    sleep $key_press_sleep
    DISPLAY=:1 xdotool key Up 2>/dev/null || true
    sleep $key_press_sleep

    take_screenshot "$DEVICE_ID" "screenshot-3" "$simulator_pid" "$simulator_window"

    sleep $key_press_sleep
    DISPLAY=:1 xdotool key Up 2>/dev/null || true
    sleep $key_press_sleep

    take_screenshot "$DEVICE_ID" "screenshot-4" "$simulator_pid" "$simulator_window"

    
	# Check if simulator is still running before attempting to kill it
    simulator_crashed=false
    if [[ -n "$simulator_pid" ]]; then
        if kill -0 $simulator_pid 2>/dev/null; then
            info "Stopping simulator"
            kill $simulator_pid 2>/dev/null
            sleep 1
        else
            info "Simulator crashed - ERROR DETECTED"
            simulator_crashed=true
        fi
    else
        info "No simulator PID available for cleanup"
    fi

    # Initialize result variable early
    if [[ "$simulator_crashed" == "true" ]]; then
        result="FAILED: Simulator crashed during app loading"
        info "Setting result to FAILED due to simulator crash"
    else
        # Default result - will be updated after test execution
        result=""
    fi

    #run tests
    info "Running tests for device: $DEVICE_ID..."
    result_file=/tmp/result.txt
    info "About to execute: timeout 60s monkeydo test-results/build/$DEVICE_ID/app.prg \"$DEVICE_ID\" -t 2>&1 | tee \"$result_file\""
    # Run tests with timeout to prevent hanging and continue logging to terminal
    timeout 60s monkeydo test-results/build/$DEVICE_ID/app.prg "$DEVICE_ID" -t 2>&1 | tee "$result_file" &
    test_pid=$!

    # Start monitoring the result file in real-time
    info "Starting real-time monitoring of test output..."
    tail -f "$result_file" &
    tail_test_pid=$!

    # Wait a bit for tests to start and potentially create views
    sleep 3

	info "Waiting for tests to complete..."

    # Wait for tests to complete with timeout
    if wait $test_pid; then
        info "Tests completed successfully"
    else
        info "Tests completed with exit code $?"
    fi

    info "Test result file content:"
    cat "$result_file"

    # Save and process test results
    mkdir -p "test-results/$DEVICE_ID"
    cp "$result_file" "test-results/$DEVICE_ID/test-results.txt"
    
    # Only update result if it wasn't already set due to simulator crash
    if [[ -z "$result" ]]; then
        # Retrieve the last line of the result starting with PASSED or FAILED
        result=$(tail -1 "$result_file")
    fi
    
    # Append results to HTML report
    append_device_results "$DEVICE_ID" "$result_file" "$result"

    if [[ $result == PASSED* ]]; then
        info "Success for device: $DEVICE_ID!"
    else
        info "Failure for device: $DEVICE_ID!"
    fi

    # Display results in console too
    info < "$result_file"

    # Clean up processes for this device iteration
    info "Cleaning up processes for device: $DEVICE_ID..."
    
    # Kill tail process if still running
    if [[ -n "$tail_test_pid" ]] && kill -0 $tail_test_pid 2>/dev/null; then
        kill $tail_test_pid 2>/dev/null
        sleep 1
    fi
    
    # Kill simulator if still running
    if [[ -n "$simulator_pid" ]] && kill -0 $simulator_pid 2>/dev/null; then
        kill $simulator_pid 2>/dev/null
        sleep 1
    fi
done

# Fix ownership of created files so they're accessible on the host
# Get the host user's UID and GID from the mounted directory
host_uid=$(stat -c %u /app)
host_gid=$(stat -c %g /app)

if [[ $host_uid != "0" ]]; then
    info "Fixing file ownership for host access..."
    # Change ownership of all created files to match the host user
    chown -R "$host_uid:$host_gid" bin/ 2>/dev/null || true
fi

# Clean up temporary device-specific binaries (but keep test results)
info "Cleaning up temporary compilation files..."
for device in "${compiled_devices[@]}"; do
    rm -rf "bin/$device" 2>/dev/null || true
done

# Create a montage of all screenshots
create_screenshot_montage() {
    info "Creating montage of all screenshots..."
    if command -v montage >/dev/null 2>&1; then
        # Find all PNG screenshots
        if [[ -d "test-results" ]]; then
            # Create a temporary directory for labeled images
            mkdir -p /tmp/montage_images
            
            # Process each PNG file and create labeled copies
            while IFS= read -r image_path; do
                # Extract device name from path (e.g., test-results/fenix7/start-view.png -> fenix7)
                device_name=$(echo "$image_path" | sed 's|test-results/||' | sed 's|/.*||')
                # Extract image type from filename (e.g., start-view.png -> start-view)
                image_type=$(basename "$image_path" .png)
                # Create labeled filename: device-image_type.png
                labeled_filename="${device_name}-${image_type}.png"
                # Copy to temp directory with new name
                cp "$image_path" "/tmp/montage_images/$labeled_filename"
            done < <(find "test-results" -name "*.png")
            
            # Check if we found any screenshots
            if [[ -n "$(ls -A /tmp/montage_images)" ]]; then
                # Get list of all images
                images=($(ls /tmp/montage_images/*.png))
                total_images=${#images[@]}
                
                if [[ $total_images -gt 0 ]]; then
                    # Calculate how many images per montage (limit to 16 per montage to avoid memory issues)
                    images_per_montage=32
                    montage_count=$(( (total_images + images_per_montage - 1) / images_per_montage ))
                    
                    info "Creating $montage_count montage(s) with up to $images_per_montage images each..."
                    
                    for ((i=0; i<montage_count; i++)); do
                        start_idx=$((i * images_per_montage))
                        end_idx=$((start_idx + images_per_montage - 1))
                        
                        # Ensure we don't go beyond the array bounds
                        if [[ $end_idx -ge $total_images ]]; then
                            end_idx=$((total_images - 1))
                        fi
                        
                        # Create array of images for this montage
                        montage_images=()
                        for ((j=start_idx; j<=end_idx; j++)); do
                            montage_images+=("${images[j]}")
                        done
                        
                        # Create montage filename
                        montage_filename="test-results/screenshot_montage_$((i+1)).png"
                        
                        # Create montage with device names as labels
                        if [[ ${#montage_images[@]} -gt 0 ]]; then
                            montage -label '%t' -pointsize 20 -fill black -gravity south -geometry +4+4 -tile 4x "${montage_images[@]}" "$montage_filename"
                            
                            # Resize the montage to 80% to save space
                            convert "$montage_filename" -resize 80% "$montage_filename"
                            
                            info "Montage $((i+1)) created at $montage_filename with ${#montage_images[@]} images"
                        fi
                    done
                    
                    # Create a summary montage with just one image from each device if we have multiple montages
                    if [[ $montage_count -gt 1 ]]; then
                        info "Creating summary montage..."
                        summary_images=()
                        devices_processed=()
                        
                        for image in "${images[@]}"; do
                            device_name=$(basename "$image" | sed 's/-.*//')
                            if [[ ! " ${devices_processed[@]} " =~ " ${device_name} " ]]; then
                                summary_images+=("$image")
                                devices_processed+=("$device_name")
                            fi
                        done
                        
                        if [[ ${#summary_images[@]} -gt 0 ]]; then
                            montage -label '%t' -pointsize 20 -fill black -gravity south -geometry +4+4 -tile 4x "${summary_images[@]}" "test-results/screenshot_summary.png"
                            convert "test-results/screenshot_summary.png" -resize 80% "test-results/screenshot_summary.png"
                            info "Summary montage created at test-results/screenshot_summary.png"
                        fi
                    fi
                else
                    info "No screenshots found to create montage"
                fi
            else
                info "No screenshots found to create montage"
            fi
            
            # Clean up temporary directory
            rm -rf /tmp/montage_images
        else
            info "No test results directory found"
        fi
    else
        info "Warning: ImageMagick's montage command not found. Skipping montage creation."
    fi
}

# Create the montage after all tests are complete
create_screenshot_montage

# Add closing tags to HTML report
cat >> "test-results/test-results.html" << EOF
</body>
</html>
EOF