#!/usr/bin/env bash

set -ex

./bootstrap

mkdir build
cd build

config_args=(
    --prefix=$PREFIX
    --enable-static=no
    --with-hdc
)

../configure "${config_args[@]}"
make -j${CPU_COUNT}
make install
