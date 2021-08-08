#!/bin/bash
set -e

SCRIPTPATH="$( cd "$(dirname "$0")" ; pwd -P )"
export PATH=${SCRIPTPATH}/slc_cli/:${PATH}
# WARNING:
# The workspace will be automatically removed.
WORKSPACE=${SCRIPTPATH}/ei-workspace
DL="wget -q"
UNZIP="unzip -q"
TEMPDIR=/tmp/build-$(date +%s)
FILE=example-standalone-inferencing-silabs-tb-sense-2.slcp

COMMAND=$1
STUDIO_PATH=$2

prepare-slcp()
{
    cd ${SCRIPTPATH}
    if ! [ -f edgeimpulse/model-parameters/anomaly_clusters.h ] || ! [ -f edgeimpulse/model-parameters/anomaly_types.h ]; then
        sed -i -e "s/#- {path: anomaly_clusters.h/- {path: anomaly_clusters.h/g" "${FILE}"
        sed -i -e "s/#- {path: anomaly_types.h/- {path: anomaly_types.h/g" "${FILE}"
        sed -i -e "s/- {path: anomaly_clusters.h/#- {path: anomaly_clusters.h/g" "${FILE}"
        sed -i -e "s/- {path: anomaly_types.h/#- {path: anomaly_types.h/g" "${FILE}"
    else
        sed -i -e "s/#- {path: anomaly_clusters.h/- {path: anomaly_clusters.h/g" "${FILE}"
        sed -i -e "s/#- {path: anomaly_types.h/- {path: anomaly_types.h/g" "${FILE}"
    fi

    if ! [ -f edgeimpulse/tflite-model/tflite-resolver.h ]; then
        sed -i -e "s/#- {path: tflite-resolver.h/- {path: tflite-resolver.h/g" "${FILE}"
        sed -i -e "s/- {path: tflite-resolver.h/#- {path: tflite-resolver.h/g" "${FILE}"
    else
        sed -i -e "s/#- {path: tflite-resolver.h/- {path: tflite-resolver.h/g" "${FILE}"
    fi

    if ! [ -f edgeimpulse/tflite-model/tflite-trained.cpp ] || ! [ -f edgeimpulse/tflite-model/tflite-trained.h ]; then
        sed -i -e "s;#- {path: edgeimpulse/tflite-model/tflite-trained.cpp;- {path: edgeimpulse/tflite-model/tflite-trained.cpp;g" "${FILE}"
        sed -i -e "s/#- {path: tflite-trained.h/- {path: tflite-trained.h/g" "${FILE}"
        sed -i -e "s;- {path: edgeimpulse/tflite-model/tflite-trained.cpp;#- {path: edgeimpulse/tflite-model/tflite-trained.cpp;g" "${FILE}"
        sed -i -e "s/- {path: tflite-trained.h/#- {path: tflite-trained.h/g" "${FILE}"

        sed -i -e "s;#- {path: edgeimpulse/tflite-model/trained_model_compiled.cpp;- {path: edgeimpulse/tflite-model/trained_model_compiled.cpp;g" "${FILE}"
        sed -i -e "s/#- {path: trained_model_compiled.h/- {path: trained_model_compiled.h/g" "${FILE}"
    else
        sed -i -e "s;#- {path: edgeimpulse/tflite-model/tflite-trained.cpp;- {path: edgeimpulse/tflite-model/tflite-trained.cpp;g" "${FILE}"
        sed -i -e "s/#- {path: tflite-trained.h/- {path: tflite-trained.h/g" "${FILE}"

        sed -i -e "s;#- {path: edgeimpulse/tflite-model/trained_model_compiled.cpp;- {path: edgeimpulse/tflite-model/trained_model_compiled.cpp;g" "${FILE}"
        sed -i -e "s/#- {path: trained_model_compiled.h/- {path: trained_model_compiled.h/g" "${FILE}"
        sed -i -e "s;- {path: edgeimpulse/tflite-model/trained_model_compiled.cpp;#- {path: edgeimpulse/tflite-model/trained_model_compiled.cpp;g" "${FILE}"
        sed -i -e "s/- {path: trained_model_compiled.h/#- {path: trained_model_compiled.h/g" "${FILE}"
    fi
}

prepare-workspace() {
    cd $1
    rm -rf edgeimpulse/mbedtls_hmac_sha256_sw
    sed -i -e "s/-Os/-O3/g" *project.mak
}

get-platform()
{
    echo $(uname -s 2>/dev/null)
}

patch-slc-python()
{
    # patching slc-cli Python3
    echo "Patching SLC Python"
    python3 -m pip install jinja2 pyxb html2text
    slc_python="slc_cli/bin/slc-cli/slc-cli.app/contents/Eclipse/developer/adapter_packs/python/bin"
    ln -sf /usr/local/bin/python ${slc_python}/python
    ln -sf /usr/local/bin/python3 ${slc_python}/python3
    ln -sf /usr/local/bin/python3.6 ${slc_python}/python3.6
    echo "Patching SLC Python OK"
}

download-dependencies()
{
    echo "Checking dependencies..."

    PLATFORM=$(get-platform)
    PYTHON3=$(python3 -V 2>/dev/null)
    if [[ ${PLATFORM} == "Darwin" && ! "$PYTHON3" =~ "3.6.8" ]]; then
        echo "Python 3.6.8 version required for macOS: https://www.python.org/downloads/release/python-368/"
        exit 1
    fi

    if ! [ -f slc_cli/slc ]; then
        echo "Downloading SLC..."
        mkdir -p ${TEMPDIR} && cd ${TEMPDIR}
        ${DL} https://cdn.edgeimpulse.com/build-system/SLC_CLI_Installers.zip
        ${UNZIP} SLC_CLI_Installers.zip
        cd SLC_CLI_Installers/

        if [ ${PLATFORM} == "Darwin" ]; then
            ${UNZIP} slc-cli.macosx.cocoa.x86_64.zip
            patch-slc-python
        elif [ ${PLATFORM} == "Linux" ]; then
            ${UNZIP} slc-cli.linux.gtk.x86_64.zip
        fi
        mv slc_cli ${SCRIPTPATH}
        rm -rf ${TEMPDIR}
        export PATH=${SCRIPTPATH}/SLC_Installers/slc_cli:${PATH}
        echo "Downloading SLC OK"
    fi
    echo "Checking dependencies OK"
}

generate-project()
{
    rm -rf ${WORKSPACE}
    export ARM_GCC_DIR="${STUDIO_PATH:=/opt/SimplicityStudio_v5}/developer/toolchains/gnu_arm/${GNU_TOOLCHAIN_VERSION:=10.2_2020q4}"
    slc generate -s "${STUDIO_PATH:=/opt/SimplicityStudio_v5}/developer/sdks/gecko_sdk_suite/v${GECKO_SDK_VERSION:=3.2}/" -p . -d ${WORKSPACE} -np -cp --with brd4166a -tlcn gcc
}

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
