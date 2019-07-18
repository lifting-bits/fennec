#!/bin/bash

echo Path to original binary?
read original
echo Path to replacement binary?
read replacement
echo Function to replace?
read originalFunction
echo New function?
read newFunction

echo Path to remill-build directory?
read remillPath
echo Path to llvm/build?
read llvmPath

echo Compilation flags?
read flags

# lifting
mcsema-disass --disassembler /home/artem/ida-6.9/idal64 --os linux --arch amd64 --output "$original".cfg --binary "$original" --entrypoint main --log_file "$original".log
mcsema-lift-4.0 --arch amd64 --os linux --cfg "$original".cfg --output "$original".bc
mcsema-disass --disassembler /home/artem/ida-6.9/idal64 --os linux --arch amd64 --output "$replacement".cfg --binary "$replacement" --entrypoint main --log_file "$replacement".log
mcsema-lift-4.0 --arch amd64 --os linux --cfg "$replacement".cfg --output "$replacement".bc

# recording all paths
path1=$(pwd)
cd $remillPath/libraries/llvm/bin
mcsemaPath=$(pwd)
cd -
cd $llvmPath
passPath=$(pwd)
cd $path1

# finding names of functions and removing "internal"
./$remillPath/libraries/llvm/bin/llvm-dis $replacement.bc
./$remillPath/libraries/llvm/bin/llvm-dis $original.bc
sed -i 's/internal//g' $replacement.ll
functionToReplace=$(grep -o -m 1 sub_[^_]*_$originalFunction $original.ll | xargs)
replacementFunction=$(grep -o -m 1 sub_[^_]*_$newFunction $replacement.ll | xargs)
./$remillPath/libraries/llvm/bin/llvm-as -o $replacement.bc $replacement.ll

# running pass
./$llvmPath/bin/opt -load $llvmPath/lib/LLVMReplaceFunction.so -replaceFunction < $original.bc -original $functionToReplace -replacement $replacementFunction > $original.new.bc

# recompiling
./$remillPath/libraries/llvm/bin/llc -filetype=obj $original.new.bc
./$remillPath/libraries/llvm/bin/llc -filetype=obj $replacement.ll
remill-clang-4.0 -Xlinker --allow-multiple-definition -o $original.new $original.new.o $replacement.o /usr/local/lib/libmcsema_rt64-4.0.a $flags
