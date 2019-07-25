#include <stdio.h>

int original() {
  return 8;
}

int replacement() {
  if (original() >= 2) return 2;
  return original();
}

int main() {
  return 0;
}
