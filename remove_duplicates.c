#include <stdio.h>

long remove_duplicates(long *arr, long len);

int main(void) {
    long nums[] = {1, 1, 2, 2, 2, 4, 5, 5};
    long len = 8;

    long new_len = remove_duplicates(nums, len);

    printf("New length: %ld\n", new_len);

    for (long i = 0; i < new_len; i++) {
        printf("%ld ", nums[i]);
    }

    printf("\n");
    return 0;
}
