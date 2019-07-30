#include <stdio.h>

FILE *newfopen(const char *path, const char *mode) {
    printf("Always failing fopen\n");
    return NULL;
}

int main() {
  return 0;
}
