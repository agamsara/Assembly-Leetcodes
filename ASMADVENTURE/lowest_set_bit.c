#include <stdio.h>

long lowest_set_bit(unsigned long n);

int main(void) {
    printf("Test 1: %ld\n", lowest_set_bit(8));   // expected 3
    printf("Test 2: %ld\n", lowest_set_bit(12));  // expected 2
    printf("Test 3: %ld\n", lowest_set_bit(10));  // expected 1

    return 0;
}
