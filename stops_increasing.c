#include <stdio.h>

long first_drop(long *arr, long len);

int main(void) {
    long nums[] = {2, 5, 8, 8, 10, 12};
    long result = first_drop(nums, 6);

    printf("First drop index: %ld\n", result);

    return 0;
}
