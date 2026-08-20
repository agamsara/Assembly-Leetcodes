#include <stdio.h>

void merge_sorted(long *a, long len_a,
                  long *b, long len_b,
                  long *out);

void print_array(long *arr, long len) {
    for (long i = 0; i < len; i++) {
        printf("%ld ", arr[i]);
    }
    printf("\n");
}

int main(void) {
    long a1[] = {1, 4, 7};
    long b1[] = {2, 3, 8};
    long out1[6];

    long a2[] = {1, 2, 9};
    long b2[] = {3, 4, 5, 6};
    long out2[7];

    long a3[] = {-5, 0, 10};
    long b3[] = {-3, 2, 8};
    long out3[6];

    merge_sorted(a1, 3, b1, 3, out1);
    merge_sorted(a2, 3, b2, 4, out2);
    merge_sorted(a3, 3, b3, 3, out3);

    print_array(out1, 6); // 1 2 3 4 7 8
    print_array(out2, 7); // 1 2 3 4 5 6 9
    print_array(out3, 6); // -5 -3 0 2 8 10

    return 0;
}
