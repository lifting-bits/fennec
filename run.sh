#!/bin/bash

remillPath=$2 # path to remill-build directory in copy of McSema
idaPath=$3 # path to copy of IDA
original=$4 # original binary, containing function that you want to replace
replacement=$5 # replacement binary, containing the new function
originalFunction=$6 # name of original function
newFunction=$7 # name of replacement function
llvmPath="llvm/build"

if [ $1 -eq 1 ] # mode 1, i.e. not using original function anymore
then
  flags=$8 # any compilation flags/libraries to link
  ./replace.sh $remillPath $llvmPath $idaPath $original $replacement $originalFunction $newFunction $flags
elif [ $1 -eq 2 ] # mode 2, i.e. storing original function for use in replacement function
then
  originalStub=$8 # name of stub function being called within replacement function, representing original function that is being replaced
  flags=$9 # any compilation flags/libraries to link
  ./replace2functions.sh $remillPath $llvmPath $idaPath $original $replacement $originalFunction $newFunction $originalStub $flags
else
  echo "Specify a mode (1 or 2)"
fi
