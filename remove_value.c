#include <stdio.h>

long remove_value(long *arr, long len, long target);

void print_array(long *arr, long len) {
    for (long i = 0; i < len; i++) {
        printf("%ld ", arr[i]);
    }
    printf("\n");
}

int main(void) {
    long a1[] = {3, 2, 2, 3, 4, 3};
    long a2[] = {1, 1, 1, 1};
    long a3[] = {5, 6, 7, 8};

    long len1 = remove_value(a1, 6, 3);
    long len2 = remove_value(a2, 4, 1);
    long len3 = remove_value(a3, 4, 9);

    printf("Test 1 length: %ld\n", len1); // expected 3
    print_array(a1, len1);                // 2 2 4

    printf("Test 2 length: %ld\n", len2); // expected 0
    print_array(a2, len2);

    printf("Test 3 length: %ld\n", len3); // expected 4
    print_array(a3, len3);                // 5 6 7 8

    return 0;
}
