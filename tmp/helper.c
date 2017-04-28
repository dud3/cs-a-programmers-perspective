#include <stdio.h>

void bin(unsigned n) {
    unsigned i;
    int c = 0;
    for (i = 1 << 31; i > 0; i = i / 2) {
        c++;
        
        (n & i) ? printf("1"): printf("0");
        
        if((c % 4) == 0)
            printf(" ");
    }
}

typedef unsigned char *byte_pointer;

void show_bytes(byte_pointer start, size_t len) {
    size_t i;
    for (i = 0; i < len; i++)
	printf(" %.2x", start[i]);    //line:data:show_bytes_printf
    printf("\n");
}

void show_int(int x) {
    show_bytes((byte_pointer) &x, sizeof(int)); //line:data:show_bytes_amp1
}

void show_float(float x) {
    show_bytes((byte_pointer) &x, sizeof(float)); //line:data:show_bytes_amp2
}

void show_pointer(void *x) {
    show_bytes((byte_pointer) &x, sizeof(void *)); //line:data:show_bytes_amp3
}
/* $end show-bytes */
