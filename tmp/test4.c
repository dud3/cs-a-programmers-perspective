#include <stdio.h>

int main()
{
    int x = 1;
    float f = 1.0f;
    double d = 1.0f;
    
    printf("%d\n", x == (int)(double)x);
    printf("%d\n", x == (int)(float)x);
    printf("%d\n", d == (double)(float)x);
    printf("%d\n", f == (float)(double)f);
    printf("%d\n", f == -(-f));
    printf("%d\n", 1.0/2 == 1/2.0);
    printf("%d\n", d*d >= 0.0);
    printf("%d\n", (f+d)-f == d);
}