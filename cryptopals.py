import subprocess
import base64

def encrypt(plaintext):
    # plaintext_b64 = base64.b64encode(plaintext)
    p = subprocess.Popen(["./encrypt", plaintext], stdout=subprocess.PIPE)
    result = p.stdout.readlines()
    ciphertext_len = int(result[1])
    ciphertext = result[0]
    return [ciphertext, ciphertext_len]

print(encrypt("hi"))

def blocksize():
    input = ""
    initial = (encrypt(input))[1]
    current = initial
    while current == initial:
        input += "A"
        current = (encrypt(input))[1]
    return current - initial

def check_ecb(blocksize):
    plaintext = "0" * 64
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
    for i in range(1, 128):
        new_string = input_block + current + chr(i)
        print(new_string)
        new_encrypted = (encrypt(new_string))[0]
        # print(new_encrypted)
        if new_encrypted[0:byte_position] == encrypted[0:byte_position]:
            return chr(i)
    return None

def solve():
    size = blocksize()
    assert check_ecb(size)
    next_byte(size, "")
    ciphertext_len = (encrypt(""))[1]
    result = ""
    for i in range(ciphertext_len):
        result += next_byte(size, result)
        print(result)
    return result

solve()
