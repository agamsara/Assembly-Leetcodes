#include <stdio.h>

void rotate_right(long *arr, long len);

int main(void) {
    long nums[] = {1, 2, 3, 4, 5};

    rotate_right(nums, 5);

    for (int i = 0; i < 5; i++) {
        printf("%ld ", nums[i]);
    }

    printf("\n");
    return 0;
}
