#include <stdio.h>

void rotate_right(long *arr, long len, long k);

void print_array(long *arr, long len) {
    for (long i = 0; i < len; i++) {
        printf("%ld ", arr[i]);
    }
    printf("\n");
}

int main(void) {
    long a1[] = {1, 2, 3, 4, 5, 6, 7};
    long a2[] = {10, 20, 30, 40};
    long a3[] = {-1, -2, -3, -4, -5};

    rotate_right(a1, 7, 3);
    rotate_right(a2, 4, 1);
    rotate_right(a3, 5, 7);

    print_array(a1, 7); // 5 6 7 1 2 3 4
    print_array(a2, 4); // 40 10 20 30
    print_array(a3, 5); // -4 -5 -1 -2 -3

    return 0;
}
