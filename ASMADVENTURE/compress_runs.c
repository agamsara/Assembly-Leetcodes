#include <stdio.h>

long compress_runs(long *arr, long len);

void print_array(long *arr, long len) {
    for (long i = 0; i < len; i++) {
        printf("%ld ", arr[i]);
    }
    printf("\n");
}

int main(void) {
    long a1[] = {1, 1, 1, 2, 2, 3, 1, 1};
    long a2[] = {5, 5, 5, 5};
    long a3[] = {1, 2, 3, 4};

    long len1 = compress_runs(a1, 8);
    long len2 = compress_runs(a2, 4);
    long len3 = compress_runs(a3, 4);

    printf("Test 1 length: %ld\n", len1); // expected 4
    print_array(a1, len1);                // 1 2 3 1

    printf("Test 2 length: %ld\n", len2); // expected 1
    print_array(a2, len2);                // 5

    printf("Test 3 length: %ld\n", len3); // expected 4
    print_array(a3, len3);                // 1 2 3 4

    return 0;
}
