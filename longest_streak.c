#include <stdio.h>

long longest_streak(long *arr, long len);

int main(void) {
    long nums1[] = {1, 1, 2, 2, 2, 3, 3};
    long nums2[] = {5, 5, 5, 5, 2, 3};
    long nums3[] = {4, 4, 7, 7, 9};

    printf("Test 1: %ld\n", longest_streak(nums1, 7)); // expected 3
    printf("Test 2: %ld\n", longest_streak(nums2, 6)); // expected 4
    printf("Test 3: %ld\n", longest_streak(nums3, 5)); // expected 4
    
    return 0;
}
