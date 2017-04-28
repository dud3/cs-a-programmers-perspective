#include <stdio.h>

#define n 3

int main()
{
    int arr[n][n] = {
        {1,2,3},
        {4,5,6},
        {7,8,9}
    };

    printf("%p\n", arr[1]);

    int *arrptr = arr[2];
    printf("%p\n", arrptr);

    printf("%d\n", *(arrptr + 0));

    int arr1[3] = {1, 2, 3};
    printf("%p\n", arr1);
    printf("%p\n", (arr1 + 1));
}

int func(int a[n][n], int i) {
    int *arrptr = a[i];
}