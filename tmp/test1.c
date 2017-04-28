#include <stdio.h>

int fun1(unsigned word) {
    return (int) ((word << 24) >> 24);
}

int fun2(unsigned word) {
    return ((int)word << 24) >> 24;
}

int main()
{
    printf("%x\n", fun1(0x00000076));
    printf("%x\n", fun2(0x00000076));
    
    printf("%x\n", fun1(0x87654321));
    printf("%x\n", fun2(0x87654321));
    
    int u = -2147483647 - 1;
    int s = 2147483648U;
    
    printf("%d\n", (u == s));
    
    int u1 = -2147483647 - 1;
    int s1 = 2147483647;
    
    printf("%d\n", (u1 < s1));
}