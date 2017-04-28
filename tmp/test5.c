#include <stdio.h>
#include "helper.h"

int get_msb(int x)
{
    /*
        4 - 1 = 3
        3 << 3
        
        011 << 3 = 011000
        011000 = 16 + 8 = 24 (32 - 8)
        
        x >> 24
    */
    int shift_val = (sizeof(int) - 1) << 3;
    
    /*
        int 5
        0000 0000 0000 0000 0000 0000 0000 0101 >> 24
        We get the last byte (eight bits) = 0000 0000
        
        0000 0000 & 1111 1111 = 0000 0000
        
        int -5
        1111 1111 1111 1111 1111 1111 1111 1011  >> 24
        We get the last byte (eight bits) = 1111 1111
        
         1111 1111 & 1111 1111 = 1111 1111
    */
    
    bin(shift_val);
    
    int xright = x >> shift_val;
    
    return xright & 0xFF;
}

int test_option_d(int x)
{
        return !!(~x & 0xFF);
}

int test_option_d1(int x) {
    
    /*
        if sizeof(int) == 4
        
        4 - 1 = 3
        3 << 3
        
        011 << 3 = 011000
        011000 = 16 + 8 = 24 (32 - 8)
        
        x >> 24
    */
    int shift_val = (sizeof(int) - 1) << 3;
    
    /*
        E.x: 32bit representation
        
        int 5
        0000 0000 0000 0000 0000 0000 0000 0101 >> 24
        We get the last byte (eight bits) = 0000 0000
        
        0000 0000 & 1111 1111 = 0000 0000
        
        int -5
        1111 1111 1111 1111 1111 1111 1111 1011  >> 24
        We get the last byte (eight bits) = 1111 1111
        
         1111 1111 & 1111 1111 = 1111 1111
    */
    
    return !(x >> shift_val);
}

int main()
{
    bin(-10);
    printf("\n");
     
    bin(~2);
    printf("\n");
    
    bin(!4);
    printf("\n");
    
    bin(!!5);
    printf("\n");
    
    printf("%d\n", test_option_d1(10));
}