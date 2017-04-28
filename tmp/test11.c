#include <stdio.h>

int main( int argc, char *argv[] )
{
  int x = atoi(argv[1]);
  
  if(x == -1) {
    x = x + 3;
  }

  x = x >> 2;
  printf("%d\n", x);

  return 0;
}
