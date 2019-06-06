#include <stdio.h>
#include <stdlib.h>

unsigned char *generate_iv()
{
    unsigned char *iv = malloc(16);
    for (unsigned int i = 0; i < 16; i ++) {
      iv[i] = rand();
    }
    return iv;
}
