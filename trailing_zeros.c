#include <stdio.h>

long count_trailing_zeros(unsigned long n);

int main(void) {
    printf("Test 1: %ld\n", count_trailing_zeros(8));   // expected 3
    printf("Test 2: %ld\n", count_trailing_zeros(12));  // expected 2
    printf("Test 3: %ld\n", count_trailing_zeros(7));   // expected 0

    return 0;
}
