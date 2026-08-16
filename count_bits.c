#include <stdio.h>

long count_bits(unsigned long n);

int main(void) {
    printf("Test 1: %ld\n", count_bits(5));   // expected 2
    printf("Test 2: %ld\n", count_bits(7));   // expected 3
    printf("Test 3: %ld\n", count_bits(16));  // expected 1

    return 0;
}
