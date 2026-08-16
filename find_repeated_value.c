#include <stdio.h>

long first_duplicate(long *arr, long len);

int main(void) {
    long nums[] = {1, 2, 2, 3, 4, 4, 5};

    long result = first_duplicate(nums, 7);

    printf("First duplicate: %ld\n", result);

    return 0;
}

