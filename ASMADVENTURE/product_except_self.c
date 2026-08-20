#include <stdio.h>

void product_except_self(long *arr, long len, long *out);

void print_array(long *arr, long len) {
    for (long i = 0; i < len; i++) {
        printf("%ld ", arr[i]);
    }
    printf("\n");
}

int main(void) {
    long a1[] = {1, 2, 3, 4};
    long out1[4];

    long a2[] = {2, 3, 5};
    long out2[3];

    long a3[] = {-1, 2, -3, 4};
    long out3[4];

    product_except_self(a1, 4, out1);
    product_except_self(a2, 3, out2);
    product_except_self(a3, 4, out3);

    print_array(out1, 4); // expected: 24 12 8 6
    print_array(out2, 3); // expected: 15 10 6
    print_array(out3, 4); // expected: -24 12 -8 6

    return 0;
}
