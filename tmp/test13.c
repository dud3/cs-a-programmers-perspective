#include <stdio.h>

long s(long *xp, long *yp)
{
  long x = *xp;
  long y = *yp;

  *xp = y;
  *yp = x;
  
  return x + y;
}

int main()
{
  long a = 1;
  long b = 2;

  long sum = s(&a, &b);
  long diff = a - b;
  
  return 0;
}
