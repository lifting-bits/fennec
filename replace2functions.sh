#!/bin/bash

# MODE 2
# use this mode if you wish to keep a copy of the original function and
# use it within your replacement
# for example, if you want to check a certain characteristic of the original
# function, and replace it only if it meets a particular condition, this mode
# will allow you to call the original function from your replacement

remillPath=$1 # path to remill-build directory in copy of McSema
llvmPath=$2 # path to build directory in copy of LLVM
idaPath=$3 # path to copy of IDA
original=$4 # original binary, containing function that you want to replace
replacement=$5 # replacement binary, containing the new function
originalFunction=$6 # name of original function
newFunction=$7 # name of replacement function
originalStub=$8 # name of stub function being called within replacement function, representing original function that is being replaced
flags=$9 # any compilation flags/libraries to link

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
# change all functions marked as "internal" by McSema so that they can be accessed
sed -i 's/internal//g' $replacement.ll
sed -i 's/internal//g' $original.ll
# find new names of functions, based on McSema's changes
functionToReplace=$(grep -o -m 1 sub_[^_]*_*$originalFunction $original.ll)
exitCode=$(echo $?)
if [ $exitCode = '1' ] # a stripped binary, where function name is the address
then
  functionToReplace=$originalFunction
fi
replacementFunction=$(grep -o -m 1 sub_[^_]*_*$newFunction $replacement.ll)
oldFunctionStub=$(grep -o -m 1 sub_[^_]*_*$originalStub $replacement.ll)
# recompile to bitcode
./$remillPath/libraries/llvm/bin/llvm-as -o $replacement.bc $replacement.ll
./$remillPath/libraries/llvm/bin/llvm-as -o $original.bc $original.ll

# run pass on original bitcode to replace function
./$llvmPath/bin/opt -load $llvmPath/lib/LLVMReplaceFunction.so -replaceFunction < $original.bc -original $functionToReplace -replacement $replacementFunction > $original.new.bc
# run pass on replacement bitcode to provide access to original function in replacement function
./$llvmPath/bin/opt -load $llvmPath/lib/LLVMReplaceFunction.so -replaceFunction < $replacement.bc -original $oldFunctionStub -replacement $functionToReplace > $replacement.new.bc

# recompile to [original].new
./$remillPath/libraries/llvm/bin/llc -filetype=obj $original.new.bc
./$remillPath/libraries/llvm/bin/llc -filetype=obj $replacement.new.bc
remill-clang-4.0 -Xlinker --allow-multiple-definition -o $original.new $original.new.o $replacement.new.o /usr/local/lib/libmcsema_rt64-4.0.a $flags
