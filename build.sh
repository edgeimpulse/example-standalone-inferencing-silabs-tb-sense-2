#!/bin/bash
set -e

SCRIPTPATH="$( cd "$(dirname "$0")" ; pwd -P )"
export PATH=${SCRIPTPATH}/slc_cli/:${PATH}
# WARNING:
# The workspace will be automatically removed.
WORKSPACE=${SCRIPTPATH}/ei-workspace
DL="wget"
UNZIP="unzip"
TEMPDIR=/tmp/build-$(date +%s)

prepare-slcp()
{
    cd ${SCRIPTPATH}
    if ! [ -f edgeimpulse/model-parameters/anomaly_clusters.h ] || ! [ -f edgeimpulse/model-parameters/anomaly_types.h ]; then
        sed -i -e "s/#- {path: anomaly_clusters.h/- {path: anomaly_clusters.h/g" example-standalone-inferencing-silabs-tb-sense-2.slcp
        sed -i -e "s/#- {path: anomaly_types.h/- {path: anomaly_types.h/g" example-standalone-inferencing-silabs-tb-sense-2.slcp
        sed -i -e "s/- {path: anomaly_clusters.h/#- {path: anomaly_clusters.h/g" example-standalone-inferencing-silabs-tb-sense-2.slcp
        sed -i -e "s/- {path: anomaly_types.h/#- {path: anomaly_types.h/g" example-standalone-inferencing-silabs-tb-sense-2.slcp
    else
        sed -i -e "s/#- {path: anomaly_clusters.h/- {path: anomaly_clusters.h/g" example-standalone-inferencing-silabs-tb-sense-2.slcp
        sed -i -e "s/#- {path: anomaly_types.h/- {path: anomaly_types.h/g" example-standalone-inferencing-silabs-tb-sense-2.slcp
    fi
}

prepare-workspace() {
    cd $1
    rm -rf edgeimpulse/mbedtls_hmac_sha256_sw
}

get-platform()
{
    echo $(uname -s 2>/dev/null)
}

download-dependencies()
{
    echo "Checking dependencies"
    if ! [ -f slc_cli/slc ]; then
        mkdir -p ${TEMPDIR} && cd ${TEMPDIR}
        ${DL} https://cdn.edgeimpulse.com/build-system/SLC_CLI_Installers.zip
        ${UNZIP} SLC_CLI_Installers.zip
        cd SLC_CLI_Installers/

        PLATFORM=$(get-platform)
        if [ ${PLATFORM} == "Darwin" ]; then
            ${UNZIP} slc-cli.macosx.cocoa.x86_64.zip
        elif [ ${PLATFORM} == "Linux" ]; then
            ${UNZIP} slc-cli.linux.gtk.x86_64.zip
        fi
        mv slc_cli ${SCRIPTPATH}
        rm -rf ${TEMPDIR}
        export PATH=${SCRIPTPATH}/SLC_Installers/slc_cli:${PATH}
    fi
    echo "Checking dependencies OK"
}

generate-project()
{
    rm -rf ${WORKSPACE}
    slc generate -s ${STUDIO_PATH:=/opt/SimplicityStudio_v5}/developer/sdks/gecko_sdk_suite/v3.1/ -p . -d ${WORKSPACE} -np -cp --with brd4166a -tlcn gcc
}

COMMAND=$1
STUDIO_PATH=$2

if [ "$COMMAND" == "--build" ]; then
    echo "Building example-standalone-inferencing-silabs-tb-sense-2..."
    download-dependencies
    prepare-slcp
    generate-project
    prepare-workspace ${WORKSPACE}
    cd ${WORKSPACE} && make -j -f *.Makefile
elif [ "$COMMAND" == "--flash" ]; then
    echo "Flashing device"
    JLinkExe -CommandFile CommandFile.jlink
    cd ..
elif [ "$COMMAND" == "--clean" ]; then
    cd ${WORKSPACE}
    make -j -f *.Makefile clean
    cd ..
else
    echo "Invalid command: $COMMAND"
    exit 1
fi
