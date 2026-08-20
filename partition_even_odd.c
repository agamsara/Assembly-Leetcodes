#include <stdio.h>

void partition_even_odd(long *arr, long len);

void print_array(long *arr, long len) {
    for (long i = 0; i < len; i++) {
        printf("%ld ", arr[i]);
    }
    printf("\n");
}

int main(void) {
    long a1[] = {3, 8, 5, 2, 7, 4};
    long a2[] = {2, 4, 6, 1, 3, 5};
    long a3[] = {1, 3, 5, 7};

    partition_even_odd(a1, 6);
    partition_even_odd(a2, 6);
    partition_even_odd(a3, 4);

    print_array(a1, 6);
    print_array(a2, 6);
    print_array(a3, 4);

    return 0;
}
