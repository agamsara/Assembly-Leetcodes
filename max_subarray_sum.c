#include <stdio.h>

long max_subarray_sum(long *arr, long len);

int main(void) {
    long a1[] = {-2, 3, 4, -5, 6};
    long a2[] = {-5, -2, -8, -1};
    long a3[] = {1, 2, -1, 3, -2};

    printf("Test 1: %ld\n", max_subarray_sum(a1, 5)); // expected 8
    printf("Test 2: %ld\n", max_subarray_sum(a2, 4)); // expected -1
    printf("Test 3: %ld\n", max_subarray_sum(a3, 5)); // expected 5

    return 0;
}
