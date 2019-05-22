import subprocess
import base64

def blocksize():
    input = ""
    p = subprocess.Popen(["./encrypt", input], stdout=subprocess.PIPE)
    initial_len = int(p.stdout.readlines()[1])
    new_len = initial_len
    while new_len == initial_len:
        input += "A"
        p = subprocess.Popen(["./encrypt", input], stdout=subprocess.PIPE)
        new_len = int(p.stdout.readlines()[1])
    return new_len - initial_len

print (blocksize())
