#include <stdio.h>
#include "helper.h"

int main()
{
    int x = 2;
    
    printf("%d\n", (int)(double)x);
    printf("%f\n", (double)(int)x);
    
    bin((int)(double)x);
    printf("\n");
    bin((double)(int)x);
    printf("\n");
    
    show_int(x);
}