import subprocess
import base64

def encrypt(plaintext):
    # print("plaintext: ")
    # print(repr(plaintext))
    plaintext_b64 = base64.b64encode(bytes(plaintext, 'utf-8'))
    # print("in base 64: ")
    # print(plaintext_b64)
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
    # byte_position += (16 * (byte_position//64))
    # if byte_position >= 64:
    #     byte_position += 16
    # if byte_position >= 128:
    #     byte_position += 16
    # if byte_position >= 192:
    #     byte_position += 16
    # if byte_position >= 256:
    #     byte_position += 16
    # print("Input block: " + input_block)
    # print("Byte position: " + str(byte_position))
    # print("CORRECT: ")
    encrypted = (encrypt(input_block))[0]
    # print(encrypted)
    for i in range(1, 127):
        new_string = input_block + current + chr(i)
        # print(repr(input_block))
        # print(repr(current))
        # print("Testing: " + repr(new_string))
        new_encrypted = (encrypt(new_string))[0]
        # print("Encrypted: ")
        # print(new_encrypted)
        if new_encrypted[0:byte_position] == encrypted[0:byte_position]:
            return chr(i)
    return None

def solve():
    # print(encrypt("AAAAARollin' in my 5.0\nWith my rag-top down so my hair can blow\nThe girlies on standby waving jN"))
    # return
    size = blocksize()
    assert check_ecb(size)
    # next_byte(size, "")
    ciphertext_len = (encrypt(""))[1]
    result = ""
    input_length = size - 1
    for i in range(ciphertext_len):
        # print(i)
        to_add = next_byte(size, result)
        if to_add == None:
            return result
        else:
            result += to_add
    return result

print(solve())
