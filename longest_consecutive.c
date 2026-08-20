#include <stdio.h>

long longest_consecutive(long *arr, long len);

int main(void) {
    long a1[] = {100, 4, 200, 1, 3, 2};
    long a2[] = {10, 5, 12, 3, 55, 11, 4};
    long a3[] = {7, 7, 8, 9, 20};

    printf("Test 1: %ld\n", longest_consecutive(a1, 6)); // expected 4
    printf("Test 2: %ld\n", longest_consecutive(a2, 7)); // expected 3
    printf("Test 3: %ld\n", longest_consecutive(a3, 5)); // expected 3

    return 0;
}
