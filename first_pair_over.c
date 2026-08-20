#include <stdio.h>

long first_pair_over(long *arr, long len, long target);

int main(void) {
    long nums1[] = {2, 4, 5, 9, 1};
    long nums2[] = {1, 1, 1, 8, 5};
    long nums3[] = {3, 3, 3, 3};

    printf("Test 1: %ld\n", first_pair_over(nums1, 5, 10)); // expected 2
    printf("Test 2: %ld\n", first_pair_over(nums2, 5, 10)); // expected 3
    printf("Test 3: %ld\n", first_pair_over(nums3, 4, 10)); // expected -1

    return 0;
}
