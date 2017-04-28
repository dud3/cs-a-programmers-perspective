#include <stdio.h>
#include "helper.h"

int bitAnd(int x, int y) {
  return ~(~x | ~y);
}

int logicalShift(int x, int n) {
  /* ~(((0xF0 << 24) >> n) << 4) & (x >> n) */
  int ff = ((0xF0 << 24) >> n) << 4;
  x = x >> n;
  return ~ff & x;
}

int test_logicalShift(int x, int n) {
  unsigned u = (unsigned) x;
  unsigned shifted = u >> n;
  return (int) shifted;
}

int logicalShift_2(int n) {
  int x = ~(~(~0 << n) << (32 + ~n + 1));
  bin(x);
}

int main() {
    printf("%d\n", bitAnd(6, 5));
    printf("%04x\n", logicalShift(-0x87654321, 16));
    printf("%04x\n", test_logicalShift(-0x87654321, 16));
    logicalShift_2(1);
    logicalShift_2(2);
    logicalShift_2(3);
}
