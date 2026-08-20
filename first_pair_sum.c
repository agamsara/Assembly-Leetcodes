#include <stdio.h>

long first_pair_sum(long *arr, long len, long target);

int main(void) {
    long a1[] = {3, 8, 4, 7};
    long a2[] = {5, 1, 9, 2};
    long a3[] = {1, 2, 3, 4};

    printf("Test 1: %ld\n", first_pair_sum(a1, 4, 11)); // expected 0
    printf("Test 2: %ld\n", first_pair_sum(a2, 4, 10)); // expected 1
    printf("Test 3: %ld\n", first_pair_sum(a3, 4, 20)); // expected -1

    return 0;
}
