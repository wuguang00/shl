#!/bin/bash
if [[ -z $1 ]] # Default option used to setup basic enviroment for arm64
then
    # Delete exist ones in PATH.
    export PATH=`echo $PATH | sed 's/\/opt\/gcc-arm-none-eabi-8-2019-q3-update\/bin://g'`
    export PATH=`echo $PATH | sed 's/\/opt\/gcc-linaro-7.4.1-2019.02-x86_64_aarch64-linux-gnu\/bin://g'`
    export PATH=/opt/gcc-linaro-7.4.1-2019.02-x86_64_aarch64-linux-gnu/bin:$PATH
	export ARCH=arm64
    export CROSS_COMPILE=aarch64-linux-gnu-
else
    # Delete exist ones in PATH.
    export PATH=`echo $PATH | sed 's/\/opt\/gcc-linaro-7.4.1-2019.02-x86_64_aarch64-linux-gnu\/bin://g'`
    export PATH=`echo $PATH | sed 's/\/opt\/gcc-arm-none-eabi-8-2019-q3-update\/bin://g'`
    export PATH=/opt/gcc-arm-none-eabi-8-2019-q3-update/bin:$PATH
	export ARCH=armv7m
    export CROSS_COMPILE=arm-none-eabi-
fi

# Used to load the basic library needed.
GLIBC="/opt/glibc-2.14/lib /ic/tools/glibc/2.14/lib"
for dir in $GLIBC
do
	if [ -d $dir ]; then
		export LD_LIBRARY_PATH=$dir
	fi
done


