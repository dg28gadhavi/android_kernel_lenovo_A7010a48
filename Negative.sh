#!/bin/sh
echo " Negative kernel by DG "
export KBUILD_BUILD_USER="Darkness"
export KBUILD_BUILD_HOST="Negative"
export CROSS_COMPILE="/home/negative123dark/aarch64-linux-android-7.x/bin/aarch64-linaro-linux-android-"

export ARCH=arm64

make clean O=out/
make mrproper O=out/

make k5fpr_defconfig O=out/

make -j8 O=out/
