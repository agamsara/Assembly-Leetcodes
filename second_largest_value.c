#include <stdio.h>

long second_largest(long *arr, long len);

int main(void) {
    long nums[] = {4, 9, 2, 7, 9, 5};

    long result = second_largest(nums, 6);

    printf("Second largest: %ld\n", result);

    return 0;
}
