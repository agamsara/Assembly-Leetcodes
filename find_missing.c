#include <stdio.h>

long find_missing(long *arr, long len);

int main(void) {
long nums[] = {10, 11, 12, 13, 15};
            long result = find_missing(nums, 5);

                printf("Missing number: %ld\n", result);

                    return 0;
}
