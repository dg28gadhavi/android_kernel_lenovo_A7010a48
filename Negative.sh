#!/bin/sh
echo " Negative kernel by DG "
export KBUILD_BUILD_USER="Dhruv"
export KBUILD_BUILD_HOST="Negative"
export CROSS_COMPILE="/home/darkness/aarch64-linux-android-4.9/bin/aarch64-linux-android-"

export ARCH=arm64

make clean O=out/
make mrproper O=out/

make k5fpr_defconfig O=out/

make -j8 O=out/
