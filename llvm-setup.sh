#!/bin/bash

wget http://releases.llvm.org/4.0.1/llvm-4.0.1.src.tar.xz
tar xf llvm-4.0.1.src.tar.xz
mv llvm-4.0.1.src llvm
cd llvm
mkdir build
cd build
make
cmake -G "Unix Makefiles" ..
mv ReplaceFunction ../lib/Transforms
echo "add_subdirectory(ReplaceFunction)" >> ../lib/Transforms/CMakeLists.txt
make
