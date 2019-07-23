#!/bin/bash

# MODE 1
# use this mode if you have no use for the original function and want to replace
# it no matter what
# this will perform a single function replacement

remillPath=$1 # path to remill-build directory in copy of McSema
llvmPath=$2 # path to build directory in copy of LLVM
idaPath=$3 # path to copy of IDA
original=$4 # original binary, containing function that you want to replace
replacement=$5 # replacement binary, containing the new function
originalFunction=$6 # name of original function
newFunction=$7 # name of replacement function
flags=$8 # any compilation flags/libraries to link

# generate .cfg file, then lift to bitcode for original binary
mcsema-disass --disassembler $idaPath --os linux --arch amd64 --output $original.cfg --binary $original --entrypoint main --log_file $original.log
mcsema-lift-4.0 --arch amd64 --os linux --cfg $original.cfg --output $original.bc
# generate .cfg file, then lift to bitcode for replacement binary
# because McSema alters the way functions are called, this allows us to replace the function easily
mcsema-disass --disassembler $idaPath --os linux --arch amd64 --output $replacement.cfg --binary $replacement --entrypoint main --log_file $replacement.log
mcsema-lift-4.0 --arch amd64 --os linux --cfg $replacement.cfg --output $replacement.bc

# turn both bitcode files into .ll files
./$remillPath/libraries/llvm/bin/llvm-dis $replacement.bc
./$remillPath/libraries/llvm/bin/llvm-dis $original.bc
# change all functions in replacement file marked as "internal" by McSema so that they can be accessed
sed -i 's/internal//g' $replacement.ll
# find new names of functions, based on McSema's changes
functionToReplace=$(grep -o -m 1 sub_[^_]*_*$originalFunction $original.ll | xargs)
replacementFunction=$(grep -o -m 1 sub_[^_]*_*$newFunction $replacement.ll | xargs)
# recompile altered replacement .ll to bitcode
./$remillPath/libraries/llvm/bin/llvm-as -o $replacement.bc $replacement.ll

# run pass on original bitcode to replace function
./$llvmPath/bin/opt -load $llvmPath/lib/LLVMReplaceFunction.so -replaceFunction < $original.bc -original $functionToReplace -replacement $replacementFunction > $original.new.bc

# recompile to [original].new
./$remillPath/libraries/llvm/bin/llc -filetype=obj $original.new.bc
./$remillPath/libraries/llvm/bin/llc -filetype=obj $replacement.ll
remill-clang-4.0 -Xlinker --allow-multiple-definition -o $original.new $original.new.o $replacement.o /usr/local/lib/libmcsema_rt64-4.0.a $flags
