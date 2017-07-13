#!/bin/sh
echo " Negative kernel by DG "
export KBUILD_BUILD_USER="DG"
export KBUILD_BUILD_HOST="Negative"
export CROSS_COMPILE="/home/negative/aarch64-linux-android-4.9/bin/aarch64-linux-android-"

export ARCH=arm64

make clean && make mrproper

make k5fpr_defconfig

make -j8