#include <stdio.h>

void move_zeros(long *arr, long len);

int main(void) {
    long nums[] = {0, 5, 0, 3, 8};

    move_zeros(nums, 5);

    for (int i = 0; i < 5; i++) {
        printf("%ld ", nums[i]);
    }

    printf("\n");
    return 0;
}
