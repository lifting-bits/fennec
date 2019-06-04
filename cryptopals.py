import subprocess
import base64

def encrypt(plaintext):
    plaintext_b64 = base64.b64encode(bytes(plaintext, 'utf-8'))
    p = subprocess.Popen(["./encrypt14", plaintext_b64], stdout=subprocess.PIPE)
    result = p.stdout.readlines()
    ciphertext_len = int(result[1])
    ciphertext = base64.b64decode((result[0])[16:])
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

def next_byte(blocksize, prefix_length, current):
    input_length = (blocksize - 1 - len(current) - prefix_length) % blocksize
    input_block = "A" * input_length
    byte_position = prefix_length + len(current) + input_length + 1
    encrypted = (encrypt(input_block))[0]
    for i in range(1, 127):
        new_string = input_block + current + chr(i)
        new_encrypted = (encrypt(new_string))[0]
        if new_encrypted[0:byte_position] == encrypted[0:byte_position]:
            return chr(i)
    return None

def correct_offset(blocksize, encrypted):
    for i in range(0, encrypted[1] - 1, blocksize):
        if (encrypted[0])[i:(i + blocksize)] == (encrypted[0])[(i + blocksize):(i + (2 * blocksize))]:
            return True
    return False

def prefix_length(blocksize):
    # find last block of prefix
    empty = encrypt("")
    one_char = encrypt("A")
    prefix_len = 0
    for i in range(0, one_char[1], blocksize):
        if (empty[0])[i:(i + blocksize)] != (one_char[0])[i:(i + blocksize)]:
            prefix_len = i
            break
    # find index of prefix in block
    test = "A" * blocksize * 2
    for j in range(blocksize):
        if correct_offset(blocksize, encrypt(test)):
            if j == 0:
                return prefix_len
            return prefix_len + (blocksize - j)
        test += "A"

def solve():
    size = blocksize()
    assert check_ecb(size)
    prefix_len = prefix_length(size)
    ciphertext_len = (encrypt(""))[1] - prefix_len
    result = ""
    input_length = size - 1
    for i in range(ciphertext_len):
        to_add = next_byte(size, prefix_len, result)
        if to_add == None:
            return result
        else:
            result += to_add
    return result

print(solve())
