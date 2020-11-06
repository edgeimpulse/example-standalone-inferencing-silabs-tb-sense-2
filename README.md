# Edge Impulse Example: stand-alone inferencing (SiLabs Thunderboard Sense 2)

This runs an exported impulse on the Silicon Labs Thunderboard Sense 2. See the documentation at [Running your impulse locally (SiLabs Thunderboard Sense 2)](#).

## Building this project in Simplicity Studio

1. Clone this repository.

2. Open Simplicity Studio and start the import wizard using the menu: <b>Project->Import->MCU Project...</b>

3. Browse and select the project directory. 2 Projects are now dectected. Select the <b>firmware-silabs-thunderboard</b> project and press <b>Next</b>

    <img src="images/select_import_project.png" height="500">

4. The Build configurations. For now it is important that the GCC compiler is added in the Simplicity Studio toolchain.

    <img src="images/build_configurations.png" height="500">

5. Finally, set the name of the project and set the project location. Make sure that the project name matches the name of the project directory.

    <img src="images/project_name.png" height="500">

6. Build the project via **Project > Build project**.

## Building this project from the command line (locally)

You'll need to have Simplicity Studio 4 installed and configured. Then you can run:

**macOS**

```
$ mkdir -p ~/ei-workspace
$ ./build.sh --build /Applications/Simplicity\ Studio.app/Contents/Eclipse/ ~/ei-workspace
```

**Linux**

```
$ mkdir -p ~/ei-workspace
$ ./build.sh --build /opt/SimplicityStudio_v4 .
```

Replace `/opt/SimplicityStudio_v4` to the path your Simplicity Studio installation.

## Building this project with Docker

The Docker image contains all build tools required.

```
$ docker run --rm \
    -v $PWD:/home/example-standalone-inferencing-silabs-thunderboard \
    -v ~/ei-workspace-docker:/workspace \
    gregbreen/uncannier-thunderboard:gecko-sdk-suite-v2.7 \
    /bin/bash /home/example-standalone-inferencing-silabs-thunderboard/build.sh --build /opt/SimplicityStudio_v4 /workspace
```

## Flashing the firmware

You can either drag `./GNU ARM v7.2.1 - Default/example-standalone-inferencing-silabs-thunderboard.bin` to the `TB004` mass-storage device (mounts as a USB flash drive), or flash with the JLink tools via:

```
$ ./build.sh --flash
```
