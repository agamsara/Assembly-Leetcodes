#include <stdio.h>

long remove_negatives(long *arr, long len);

void print_array(long *arr, long len) {
    for (long i = 0; i < len; i++) {
        printf("%ld ", arr[i]);
    }
    printf("\n");
}

int main(void) {
    long nums1[] = {5, -2, 8, -1, 3};
    long nums2[] = {-1, -2, -3, 4};
    long nums3[] = {1, 2, 3, 4};

    long len1 = remove_negatives(nums1, 5);
    long len2 = remove_negatives(nums2, 4);
    long len3 = remove_negatives(nums3, 4);

    printf("Test 1 length: %ld\n", len1); // expected 3
    print_array(nums1, len1);             // 5 8 3

    printf("Test 2 length: %ld\n", len2); // expected 1
    print_array(nums2, len2);             // 4

    printf("Test 3 length: %ld\n", len3); // expected 4
    print_array(nums3, len3);             // 1 2 3 4

    return 0;
}
