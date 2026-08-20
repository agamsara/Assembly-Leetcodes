#include <stdio.h>

long longest_alternating_bits(unsigned long n);

int main(void) {
    printf("Test 1: %ld\n", longest_alternating_bits(42));  // 101010 -> expected 6
    printf("Test 2: %ld\n", longest_alternating_bits(10));  // 1010   -> expected 4
    printf("Test 3: %ld\n", longest_alternating_bits(7));   // 111    -> expected 1

    return 0;
}
