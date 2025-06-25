# ConnectIQ Tester

This is a fork of the project: https://github.com/matco/connectiq-tester

ConnectIQ Tester is a Docker container image that can be used to test your Garmin Connect IQ app on multiple devices automatically, when run it will find all supported devices, builds your app using the 'DEBUG' release for each device, then for each device, loads the app into the simulator, takes multiple screenshots, then closes the simulator and runs any unit tests. The test results and screenshots and all collated into an HTML test report.

The repo currently contains ConnectIQ SDK version `8.1.1` and the device files and fonts retrieved on `2025-05-26` from the SDK directory

## Usage

First you need to create a ciq.zip file from the /ciq directory that contains both the /Devices and /Fonts folders, the ciq.zip is not included in this repo as it exceeds Githubs 100mb limit. Once you have a ciq.zip file in the root folder you can build the docker image.

To build the docker image initally run:
```
docker build --platform linux/amd64 -t connect-tester:latest .
```
Then when the image is built you can run:
```
docker run --platform linux/amd64 --rm -v {PATH TO YOUR APP DIRECTORY}:/app -w /app connect-tester:latest all {PATH TO YOUR CERTIFICATE}
```

The Docker run command has 2 optional parameters:
* device_id: you can either specify a single device to test (eg. `venu`) or set to `all` to load all supported devices as listed in your `manifest.xml` file. If you don't specify a device id, it will default to `fenix7`.
* certificate_path: the path of the certificate that will be used to compile the application relatively to the folder of your application. If you don't provide one, a temporary certificate will be generated automatically.

The flag `-v` binds the folder containing your application to the `app` folder in the container. The flag `-w` tells the container to work in this repository (it is the working directory). It is required that the working directory matches the path where you bound your application in the container. With this command all devices will be tested

Following completion you will find there is a /test-results folder in your project root with a folder for each device, montage of all screenshots and an HTML test report

## Screenshots

Once the app is loaded on the simulator there are some steps to manipulate the UI using the keyboard keys, this is obviously app specific so you will need to adjust the script depending on your apps behaviour

eg. the following lines will press the Space key (SELECT on your Garmin Device), then take a screenshot

DISPLAY=:1 xdotool key space 2>/dev/null || true
sleep $key_press_sleep
take_screenshot "$DEVICE_ID" "screenshot-2" "$simulator_pid" "$simulator_window"

Since there is no offical way to control the simulator programatically this is a bit of a hack and doesnt work consistantly across devices as some have different buttons/keys mapped.

## Copyright

All the resources contained in the archive `devices.zip` are the property of Garmin. These resources have been fetched from the Garmin website and have been included in this repository to facilitate the creation of the Docker image.
