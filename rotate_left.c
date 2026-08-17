#include <stdio.h>

void rotate_left(long *arr, long len, long k);

void print_array(long *arr, long len) {
    for (long i = 0; i < len; i++) {
        printf("%ld ", arr[i]);
    }
    printf("\n");
}

int main(void) {
    long a1[] = {1, 2, 3, 4, 5};
    long a2[] = {10, 20, 30, 40};
    long a3[] = {7, 8, 9, 10, 11, 12};

    rotate_left(a1, 5, 2);
    rotate_left(a2, 4, 1);
    rotate_left(a3, 6, 4);

    print_array(a1, 5); // expected: 3 4 5 1 2
    print_array(a2, 4); // expected: 20 30 40 10
    print_array(a3, 6); // expected: 11 12 7 8 9 10

    return 0;
}
