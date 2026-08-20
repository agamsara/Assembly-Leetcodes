#include <stdio.h>

long first_duplicate(long *arr, long len);

int main(void) {
    long a1[] = {4, 7, 2, 7, 9};
    long a2[] = {5, 1, 3, 5, 1};
    long a3[] = {1, 2, 3, 4, 5};

    printf("Test 1: %ld\n", first_duplicate(a1, 5)); // expected 7
    printf("Test 2: %ld\n", first_duplicate(a2, 5)); // expected 5
    printf("Test 3: %ld\n", first_duplicate(a3, 5)); // expected -1

    return 0;
}
