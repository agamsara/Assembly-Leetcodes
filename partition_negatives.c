#include <stdio.h>

void partition_negatives(long *arr, long len);

void print_array(long *arr, long len) {
    for (long i = 0; i < len; i++) {
        printf("%ld ", arr[i]);
    }
    printf("\n");
}

int main(void) {
    long a1[] = {4, -2, 7, -5, 1, -3};
    long a2[] = {-1, -2, 3, 4, -5};
    long a3[] = {1, 2, 3, 4};

    partition_negatives(a1, 6);
    partition_negatives(a2, 5);
    partition_negatives(a3, 4);

    print_array(a1, 6);
    print_array(a2, 5);
    print_array(a3, 4);

    return 0;
}
