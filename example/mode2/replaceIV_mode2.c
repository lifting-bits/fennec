#include <stdio.h>
#include <openssl/rand.h>

unsigned char *generate_iv_original() {
  unsigned char *result = (unsigned char *)"";
  return result;
}

unsigned char *random_iv() {
  unsigned char *iv = malloc(sizeof(int) * 16);
  RAND_bytes(iv, 16);
  return iv;
}

unsigned char *replacement() {
  unsigned char *original = generate_iv_original();
  for (int i = 0; i < 10; i ++) {
    unsigned char *iv = generate_iv_original();
    if (iv == original) {
      return random_iv();
    }
  }
  return original;
}

int main() {
  printf((const char *)(replacement()));
  return 0;
}
