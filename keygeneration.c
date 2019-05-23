#include <openssl/conf.h>
#include <openssl/evp.h>
#include <openssl/err.h>
#include <string.h>
#include <stdlib.h>
#include <stdio.h>

int main () {
  // unsigned char key[256];
  for (unsigned int i = 0; i < 8; i ++) {
     printf("%d", rand());
  }
  // printf("%s", key);
  // return *key;
}
