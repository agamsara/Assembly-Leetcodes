#include <stdio.h>

long majority_element(long *arr, long len);

int main(void) {
    long a1[] = {2, 2, 1, 2, 3, 2, 2};
    long a2[] = {5, 1, 5, 5, 2, 5, 5};
    long a3[] = {-3, -3, 4, -3, 2, -3, -3};

    printf("Test 1: %ld\n", majority_element(a1, 7)); // expected 2
    printf("Test 2: %ld\n", majority_element(a2, 7)); // expected 5
    printf("Test 3: %ld\n", majority_element(a3, 7)); // expected -3

    return 0;
}
