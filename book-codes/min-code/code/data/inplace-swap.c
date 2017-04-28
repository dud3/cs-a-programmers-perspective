#include <stdio.h>

void inplace_swap(int *x, int *y)
{
    // x = 1010
    // y = 1011
    
    // x ^ x = 0000
    // y ^ y = 0000
    
    // 1010 ^ 1011 = 0001
    *x = *x ^ *y;

    // 0001 ^ 1011 = 1010
    *y = *x ^ *y;

    // 0001 ^ 1010 = 1011
    *x = *x ^ *y;
}

int main()
{
    int x = 10, y = 11;
    
    inplace_swap(&x, &y);
    
    printf("%d, %d\n", x, y);
}