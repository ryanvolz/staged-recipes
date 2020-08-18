#!/usr/bin/env bash

set -ex

./autogen.sh

mkdir build
cd build

config_args=(
    --prefix=$PREFIX
    --disable-static
)

../configure "${config_args[@]}"
make -j${CPU_COUNT}
make install
