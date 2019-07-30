#!/bin/bash

remillPath=$1
idaPath=$2

status=0

# test basic mode 1
bash run.sh 1 $remillPath $idaPath tests/basic/mode1/basic tests/basic/mode1/basicReplacement generate replacement
basicMode1=$(./tests/basic/mode1/basic.new | xargs)
if [ $basicMode1 = '2' ]
then
  echo Basic Mode 1 passed
else
  echo -e "\e[31mBasic Mode 1 failed\e[0m"
  status=1
fi

# test basic mode 2
bash run.sh 2 $remillPath $idaPath tests/basic/mode2_notReplaced/basic tests/basic/mode2_notReplaced/basicReplacement generate replacement original
basicMode2=$(./tests/basic/mode2_notReplaced/basic.new | xargs)
if [ $basicMode2 = '1' ]
then
  echo Basic Mode 2 passed
else
  echo -e "\e[31mBasic Mode 2 failed\e[0m"
  status=1
fi

# test arguments mode 1
bash run.sh 1 $remillPath $idaPath tests/arguments/mode1/withArgs tests/arguments/mode1/withArgsReplacement generate replacement
argumentsMode1=$(./tests/arguments/mode1/withArgs.new | xargs)
if [ $argumentsMode1 = '4' ]
then
  echo Arguments Mode 1 passed
else
  echo -e "\e[31mArguments Mode 1 failed\e[0m"
  status=1
fi

# test arguments mode 2
bash run.sh 2 $remillPath $idaPath tests/arguments/mode2/withArgs tests/arguments/mode2/withArgsReplacement generate replacement generate_original
argumentsMode2=$(./tests/arguments/mode2/withArgs.new | xargs)
if [ $argumentsMode2 = '4' ]
then
  echo Arguments Mode 2 passed
else
  echo -e "\e[31mArguments Mode 2 failed\e[0m"
  status=1
fi

# test encryption mode 1
bash run.sh 1 $remillPath $idaPath tests/crypto/mode1/encrypt tests/crypto/mode1/replaceIV_mode1 generate_iv replacement -lcrypto
encryptMode1Test1=$(./tests/crypto/mode1/encrypt.new "" | head -n 1 | xargs)
encryptMode1Test2=$(./tests/crypto/mode1/encrypt.new "" | head -n 1 | xargs)
if [ $encryptMode1Test1 != $encryptMode1Test2 ]
then
  echo Crypto Mode 1 passed
else
  echo -e "\e[31mCrypto Mode 1 failed\e[0m"
  status=1
fi

# test encryption mode 2
bash run.sh 2 $remillPath $idaPath tests/crypto/mode2/encrypt tests/crypto/mode2/replaceIV_mode2 generate_iv replacement generate_iv_original -lcrypto
encryptMode2Test1=$(./tests/crypto/mode2/encrypt.new "" | head -n 1 | xargs)
encryptMode2Test2=$(./tests/crypto/mode2/encrypt.new "" | head -n 1 | xargs)
if [ $encryptMode2Test1 != $encryptMode2Test2 ]
then
  echo Crypto Mode 2 passed
else
  echo -e "\e[31mCrypto Mode 2 failed\e[0m"
  status=1
fi

# test stripped encryption mode 1
bash run.sh 1 $remillPath $idaPath tests/stripped_crypto/mode1/encryptStripped tests/stripped_crypto/mode1/replaceIV_mode1 sub_400df0 replacement -lcrypto
strippedMode1Test1=$(./tests/stripped_crypto/mode1/encryptStripped.new "" | head -n 1 | xargs)
strippedMode1Test2=$(./tests/stripped_crypto/mode1/encryptStripped.new "" | head -n 1 | xargs)
if [ $strippedMode1Test1 != $strippedMode1Test2 ]
then
  echo Stripped Crypto Mode 1 passed
else
  echo -e "\e[31mStripped Crypto Mode 1 failed\e[0m"
  status=1
fi

# test stripped encryption mode 2
bash run.sh 2 $remillPath $idaPath tests/stripped_crypto/mode2/encryptStripped tests/stripped_crypto/mode2/replaceIV_mode2 sub_400df0 replacement generate_iv_original -lcrypto
strippedMode2Test1=$(./tests/stripped_crypto/mode2/encryptStripped.new "" | head -n 1 | xargs)
strippedMode2Test2=$(./tests/stripped_crypto/mode2/encryptStripped.new "" | head -n 1 | xargs)
if [ $strippedMode2Test1 != $strippedMode2Test2 ]
then
  echo Stripped Crypto Mode 2 passed
else
  echo -e "\e[31mStripped Crypto Mode 2 failed\e[0m"
  status=1
fi

# test fopen mode 1
bash run.sh 1 $remillPath $idaPath tests/fopen/mode1/prog tests/fopen/mode1/myfopen fopen newfopen
fopenMode1=$(./tests/fopen/mode1/prog.new | xargs)
if [ "$fopenMode1" = 'Calling the fopen() function... Always failing fopen fopen() returned NULL' ]
then
  echo fopen Mode 1 passed
else
  echo -e "\e[31mfopen Mode 1 failed\e[0m"
  status=1
fi

# test fopen mode 1 usefopen
bash run.sh 1 $remillPath $idaPath tests/fopen/mode1_usefopen/prog tests/fopen/mode1_usefopen/myfopen fopen newfopen
fopenMode1usefopen=$(./tests/fopen/mode1_usefopen/prog.new | xargs)
if [ "$fopenMode1usefopen" = 'Calling the fopen() function... fopen has been replaced fopen() succeeded' ]
then
  echo fopen Mode 1 usefopen passed
else
  echo -e "\e[31mfopen Mode 1 usefopen failed\e[0m"
  status=1
fi

# test fopen mode 2
bash run.sh 2 $remillPath $idaPath tests/fopen/mode2/prog tests/fopen/mode2/myfopen fopen newfopen stub
fopenMode2=$(./tests/fopen/mode2/prog.new | xargs)
if [ "$fopenMode2" = 'Calling the fopen() function... fopen has been replaced fopen() succeeded' ]
then
  echo fopen Mode 2 passed
else
  echo -e "\e[31mfopen Mode 2 failed\e[0m"
  status=1
fi

if [ $status -eq 0 ]
then
  echo -e "\e[32mAll tests passed!\e[0m"
else
  echo -e "\e[31mFailed!\e[0m"
  exit 1
fi
