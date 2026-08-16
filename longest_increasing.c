#include <stdio.h>

long longest_increasing_run(long *arr, long len);

int main(void) {

    long nums[] = {9, 8, 7, 6, 5};
    long result = longest_increasing_run(nums, 5);

    printf("Longest increasing run: %ld\n", result);

    return 0;
}
