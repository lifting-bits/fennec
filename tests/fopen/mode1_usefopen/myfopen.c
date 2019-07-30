#include <stdio.h>

FILE *newfopen(const char *path, const char *mode) {
    printf("fopen has been replaced\n");
    return fopen(path, mode); 
}

int main() {
  return 0;
}
