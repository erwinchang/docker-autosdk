#!/bin/bash

export PATH=${PATH}:/opt/gcc-linaro-arm-linux-gnueabihf-4.7-2013.03-20130313_linux/bin
export TT_DWORK=${WORK_DIR}

alias dwork='cd ${WORK_DIR}'
echo ""
echo "command list"
echo "dwork: cd workspace dir"
echo ""

echo ""
echo "need to setup GLSDK....ex. export GLSDK="
echo ""
[ -d ${WORK_DIR}/ti-glsdk_dra7xx-evm_7_04_00_03 ] && {
    export GLSDK="${WORK_DIR}/ti-glsdk_dra7xx-evm_7_04_00_03"
    echo "GLSDK: $GLSDK"
}
dwork
