#!/bin/bash

remillPath=$2
llvmPath=$3
idaPath=$4
flags=$5
original=$6
replacement=$7
originalFunction=$8
newFunction=$9

if [ $1 -eq 2 ]
then
  originalStub=${10}
  ./replace2functions.sh $remillPath $llvmPath $idaPath $original $replacement $originalFunction $newFunction $originalStub $flags
elif [ $1 -eq 1 ]
then
  ./replace.sh $remillPath $llvmPath $idaPath $original $replacement $originalFunction $newFunction $flags
else
  echo "Specify a mode (1 or 2)"
fi
