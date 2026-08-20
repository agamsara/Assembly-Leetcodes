#include <stdio.h>

long merge_adjacent_equals(long *arr, long len);

void print_array(long *arr, long len) {
    for (long i = 0; i < len; i++) {
        printf("%ld ", arr[i]);
    }
    printf("\n");
}

int main(void) {
    long a1[] = {2, 2, 4, 4, 8};
    long a2[] = {1, 1, 1, 1};
    long a3[] = {3, 5, 5, 7, 7, 7};

    long len1 = merge_adjacent_equals(a1, 5);
    long len2 = merge_adjacent_equals(a2, 4);
    long len3 = merge_adjacent_equals(a3, 6);

    printf("Test 1 length: %ld\n", len1); // expected 3
    print_array(a1, len1);                // 4 8 8

    printf("Test 2 length: %ld\n", len2); // expected 2
    print_array(a2, len2);                // 2 2

    printf("Test 3 length: %ld\n", len3); // expected 4
    print_array(a3, len3);                // 3 10 14 7

    return 0;
}
