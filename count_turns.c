#include <stdio.h>

long count_turns(long *arr, long len);

int main(void) {
    long nums[] = {1, 3, 5, 4, 2, 6, 8};

    long result = count_turns(nums, 7);

    printf("Direction changes: %ld\n", result);

    return 0;
}
