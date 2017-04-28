#include <stdio.h>

int div16(int x) {
  return x >> 4;
}

int main()
{
  int n = 16;
  int n1 = 128;

  printf("%d\n", div16(n));
  printf("%d\n", div16(n1));
  printf("%d\n", div16(256));
  printf("%d\n", div16(120));
}
