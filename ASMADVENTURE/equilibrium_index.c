#include <stdio.h>

long equilibrium_index(long *arr, long len);

int main(void) {
    long a1[] = {1, 3, 5, 2, 2};
    long a2[] = {1, 2, 3};
    long a3[] = {2, 1, -1};

    printf("Test 1: %ld\n", equilibrium_index(a1, 5)); // expected 2
    printf("Test 2: %ld\n", equilibrium_index(a2, 3)); // expected -1
    printf("Test 3: %ld\n", equilibrium_index(a3, 3)); // expected 0

    return 0;
}
