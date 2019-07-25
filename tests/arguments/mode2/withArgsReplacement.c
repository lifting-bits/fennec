#include <stdio.h>

int generate_original(int c) {
  return 0;
}

int replacement(int b) {
  if (generate_original(b) == b) return (b+2);
  return generate_original(b);
}

int main() {
  return 0;
}
