#!/usr/bin/env bash

module load cmake/3.17.2
module load gcc-compatibility/10.3.0

mkdir -p build
cd build
rm -fr *
cmake .. -DCMAKE_BUILD_TYPE=Release
make -j4
make install
cd ..
rm -fr build
