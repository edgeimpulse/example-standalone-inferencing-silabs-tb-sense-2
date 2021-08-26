#!/bin/bash
set -e

SCRIPTPATH="$( cd "$(dirname "$0")" ; pwd -P )"
WORKSPACE=${SCRIPTPATH}/ei-workspace
TEMPDIR=/tmp/build-$(date +%s)
FILE=example-standalone-inferencing-silabs-tb-sense-2.slcp

COMMAND=$1
STUDIO_PATH=$2

prepare-slcp()
{
    cd ${WORKSPACE}
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

if [ "$COMMAND" == "--build" ]; then
    echo "Building example-standalone-inferencing-silabs-tb-sense-2..."
    prepare-slcp
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
