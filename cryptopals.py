import subprocess
import base64

def blocksize():
    input = ""
    p = subprocess.Popen(["./encrypt", input], stdout=subprocess.PIPE)
    initial = int(p.stdout.readlines()[1])
    current = initial
    while current == initial:
        input += "A"
        p = subprocess.Popen(["./encrypt", input], stdout=subprocess.PIPE)
        current = int(p.stdout.readlines()[1])
    return current - initial

def check_ecb(blocksize):
    plaintext = "0" * 128
    p = subprocess.Popen(["./encrypt", plaintext], stdout=subprocess.PIPE)
    ciphertext = p.stdout.readlines()[0]
    split = []
    for i in range(0, len(ciphertext), blocksize):
        split.append(ciphertext[i:(i + blocksize)])
    set_of_splits = set(split)
    return len(split) - len(set_of_splits) > 0

print (blocksize())
print (check_ecb(blocksize()))
