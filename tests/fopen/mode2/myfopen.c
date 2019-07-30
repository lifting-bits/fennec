#include <stdio.h>

FILE *stub(const char *path, const char *mode) {
    return NULL;
}

FILE *newfopen(const char *path, const char *mode) {
    printf("fopen has been replaced\n");
    return stub(path, mode);
}

int main() {
  return 0;
}
