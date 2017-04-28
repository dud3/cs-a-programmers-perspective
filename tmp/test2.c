#include <stdio.h>

int main()
{
  int ff = ((0xff) << 24) >> 24;

  printf("%x\n", ff);
  
  printf("%x\n", ff << 24);

  printf("%x\n", ~(ff << 24));

  int a = 0x12345678;
  a = a >> 8;
  
  printf("%x\n", ~(ff << 24) & a);
}
