#include <stdio.h>

int fun(int param_a)
{
  return param_a + 10;
}

int main()
{
  int a = 1;
  int b = fun(a);
  
  int c = 10;
  int d = fun(c);

  a += b;
  a += d;

  return a;
}
