#include <stdio.h>

long longest_increasing_run(long *arr, long len);

int main(void) {
    long a1[] = {1, 2, 3, 1, 2, 3, 4};
    long a2[] = {5, 4, 3, 2, 1};
    long a3[] = {10, 20, 30, 25, 40, 50, 60};

    printf("Test 1: %ld\n", longest_increasing_run(a1, 7)); // expected 4
    printf("Test 2: %ld\n", longest_increasing_run(a2, 5)); // expected 1
    printf("Test 3: %ld\n", longest_increasing_run(a3, 7)); // expected 4

    return 0;
}
