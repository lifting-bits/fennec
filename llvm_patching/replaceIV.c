#include <openssl/rand.h>
#include <stdio.h>

unsigned char *replacement() {
  unsigned char *iv = malloc(sizeof(int) * 16);
  RAND_bytes(iv, 16);
  return iv;
}

