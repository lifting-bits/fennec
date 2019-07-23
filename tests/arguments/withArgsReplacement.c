#include <stdio.h>

int replacement(int b) {
  return (b+2);
}

int main() {
  printf("%d", replacement(3));
  return 0;
}
