import subprocess
import base64

def encrypt(plaintext):
    plaintext_b64 = base64.b64encode(bytes(plaintext, 'utf-8'))
    p = subprocess.Popen(["./encrypt", plaintext_b64], stdout=subprocess.PIPE)
    result = p.stdout.readlines()
    ciphertext_len = int(result[1])
    ciphertext = base64.b64decode(result[0])
    return [ciphertext, ciphertext_len]

def blocksize():
    input = ""
    initial = (encrypt(input))[1]
    current = initial
    while current == initial:
        input += "A"
        current = (encrypt(input))[1]
    return current - initial

def check_ecb(blocksize):
    plaintext = "A" * (blocksize * 4)
    ciphertext = (encrypt(plaintext))[0]
    split = set()
    for i in range(0, len(ciphertext), blocksize):
        check = ciphertext[i:(i + blocksize)]
        if check in split:
            return True
        split.add(check)
    return False

def next_byte(blocksize, current):
    input_length = (blocksize - 1 - len(current)) % blocksize
    input_block = "A" * input_length
    byte_position = len(current) + input_length + 1
    encrypted = (encrypt(input_block))[0]
    for i in range(1, 127):
        new_string = input_block + current + chr(i)
        new_encrypted = (encrypt(new_string))[0]
        if new_encrypted[0:byte_position] == encrypted[0:byte_position]:
            return chr(i)
    return None

def solve():
    size = blocksize()
    assert check_ecb(size)
    ciphertext_len = (encrypt(""))[1]
    result = ""
    input_length = size - 1
    for i in range(ciphertext_len):
        to_add = next_byte(size, result)
        if to_add == None:
            return result
        else:
            result += to_add
    return result

print(solve())
