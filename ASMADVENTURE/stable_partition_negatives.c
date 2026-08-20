#include <stdio.h>

void stable_partition_negatives(long *arr, long len, long *temp);

void print_array(long *arr, long len) {
    for (long i = 0; i < len; i++) {
        printf("%ld ", arr[i]);
    }
    printf("\n");
}

int main(void) {
    long a1[] = {4, -2, 7, -5, 1, -3};
    long a2[] = {-1, 2, -3, 4, -5};
    long a3[] = {1, 2, 3, 4};

    long temp[6];
    stable_partition_negatives(a1, 6, temp);
    stable_partition_negatives(a2, 5, temp);
    stable_partition_negatives(a3, 4, temp);

    print_array(a1, 6); // -2 -5 -3 4 7 1
    print_array(a2, 5); // -1 -3 -5 2 4
    print_array(a3, 4); // 1 2 3 4

    return 0;
}
