#!/bin/bash

export PATH=/opt/gcc-linaro-7.4.1-2019.02-x86_64_aarch64-linux-gnu/bin:$PATH
export PATH=/opt/gcc-arm-none-eabi-8-2019-q3-update/bin:$PATH
export LD_LIBRARY_PATH=/opt/glibc-2.14/lib
export CROSS_COMPILE=aarch64-linux-gnu-

echo "#define A76_IPS" > drivers/crypto/crypto_control.h
echo "#define A76_SMX" >> drivers/crypto/crypto_control.h
