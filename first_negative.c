#include <stdio.h>

long first_negative(long *arr, long len);

int main(void) {
    long nums1[] = {5, 8, -3, 7};
    long nums2[] = {4, 2, 1};
    long nums3[] = {-9, 3, 5};

    printf("Test 1: %ld\n", first_negative(nums1, 4)); // expected 2
    printf("Test 2: %ld\n", first_negative(nums2, 3)); // expected -1
    printf("Test 3: %ld\n", first_negative(nums3, 3)); // expected 0

    return 0;
}
