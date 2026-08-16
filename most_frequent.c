#include <stdio.h>

long most_frequent(long *arr, long len);

int main(void) {
    long nums1[] = {1, 1, 2, 2, 2, 3, 4, 4};
    long nums2[] = {5, 5, 5, 7, 7, 9};
    long nums3[] = {2, 2, 4, 4, 6, 6};

    printf("Test 1: %ld\n", most_frequent(nums1, 8)); //expected 2
    printf("Test 2: %ld\n", most_frequent(nums2, 6)); // expected 5
    printf("Test 3: %ld\n", most_frequent(nums3, 6)); // expected 2

    return 0;
}
