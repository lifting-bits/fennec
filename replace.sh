#!/bin/bash

remillPath=$1
llvmPath=$2
idaPath=$3
original=$4
replacement=$5
originalFunction=$6
newFunction=$7
flags=$8

# lifting
mcsema-disass --disassembler $idaPath --os linux --arch amd64 --output "$original".cfg --binary "$original" --entrypoint main --log_file "$original".log
mcsema-lift-4.0 --arch amd64 --os linux --cfg "$original".cfg --output "$original".bc
mcsema-disass --disassembler $idaPath --os linux --arch amd64 --output "$replacement".cfg --binary "$replacement" --entrypoint main --log_file "$replacement".log
mcsema-lift-4.0 --arch amd64 --os linux --cfg "$replacement".cfg --output "$replacement".bc

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
