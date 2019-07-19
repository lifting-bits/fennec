#!/bin/bash

remillPath=$2
llvmPath=$3
flags=$4
original=$5
replacement=$6
originalFunction=$7
newFunction=$8

if [ $1 -eq 2 ]
then
  originalStub=$9
  ./replace2functions.sh $remillPath $llvmPath $original $replacement $originalFunction $newFunction $originalStub $flags
elif [ $1 -eq 1 ]
then
  ./replace.sh $remillPath $llvmPath $original $replacement $originalFunction $newFunction $flags
else
  echo "Specify a mode (1 or 2)"
fi
