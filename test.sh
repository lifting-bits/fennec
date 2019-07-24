#!/bin/bash

remillPath=$1
idaPath=$2

# test encryption mode 1
bash run.sh 1 $remillPath $idaPath tests/crypto/mode1/encrypt tests/crypto/mode1/replaceIV_mode1 generate_iv replacement -lcrypto
encryptMode1Test1=$(./tests/crypto/mode1/encrypt.new "" | head -n 1 | xargs)
encryptMode1Test2=$(./tests/crypto/mode1/encrypt.new "" | head -n 1 | xargs)
python -c "assert('$encryptMode1Test1' != '$encryptMode1Test2')"
echo "Crypto Mode 1 passed!"

# test encryption mode 2
bash run.sh 2 $remillPath $idaPath tests/crypto/mode2/encrypt tests/crypto/mode2/replaceIV_mode2 generate_iv replacement generate_iv_original -lcrypto
encryptMode2Test1=$(./tests/crypto/mode2/encrypt.new "" | head -n 1 | xargs)
encryptMode2Test2=$(./tests/crypto/mode2/encrypt.new "" | head -n 1 | xargs)
python -c "assert('$encryptMode2Test1' != '$encryptMode2Test2')"
echo "Crypto Mode 2 passed!"

# test arguments mode 1
bash run.sh 1 $remillPath $idaPath tests/arguments/mode1/withArgs tests/arguments/mode1/withArgsReplacement generate replacement
argumentsMode1=$(./tests/arguments/mode1/withArgs.new | xargs)
python -c "assert('$argumentsMode1' == '4')"
echo "Arguments Mode 1 passed!"

# test arguments mode 2
bash run.sh 2 $remillPath $idaPath tests/arguments/mode2/withArgs tests/arguments/mode2/withArgsReplacement generate replacement generate_original
argumentsMode2=$(./tests/arguments/mode2/withArgs.new | xargs)
python -c "assert('$argumentsMode2' == '4')"
echo "Arguments Mode 2 passed!"

echo "All tests passed!"
