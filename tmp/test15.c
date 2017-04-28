#include <stdio.h>

void func(int arr[])
{
    int i;
    int size = (int)(sizeof(arr)/sizeof(arr[0]));
    for(i = 0; i <= size; i++) {
        arr[i] += 1;
    }
}

void printArr(int arr[])
{
    int i;
    int size = (int) (sizeof(arr) / sizeof(arr[0]));

    for(i = 0; i <= size; i++)
        printf("%d ", arr[i]);

    printf("\n");
}

int main()
{
    int arr[] = {1, 2, 3};

    func(arr);

    printArr(arr);

    return 0;
}
