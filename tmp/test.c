#include <stdio.h>

int sum(int x, int y)
{
  int sum = x + y;
  return sum;
}

int sump(int *x, int *y)
{
  int sum = *x + *y;
  return sum;
}

int main() 
{
  int local_x = 1;
  int local_y = 1;

  int local_sum = sum(local_x, local_y);

  return 0;
}
