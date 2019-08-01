#include <openssl/rand.h>
#include <stdio.h>

unsigned char *generate_iv() {
  unsigned char *iv = malloc(sizeof(int) * 16);
  RAND_bytes(iv, 16);
  return iv;
}
