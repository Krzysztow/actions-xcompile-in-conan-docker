#!/bin/bash

set -e
set -u

BUILD_COMPILER_ARCH=$1

mkdir ${BUILD_COMPILER_ARCH}
cd ${BUILD_COMPILER_ARCH}

cmake --configure -DCMAKE_BUILD_TYPE=RelWithDebInfo ..
cmake --build .

TARGET="bin/http-server"
echo "Build finished, target created in $TARGET"

file "$TARGET"
