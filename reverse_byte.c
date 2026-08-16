#include <stdio.h>

unsigned long reverse_byte(unsigned long n);

int main(void) {
    printf("Test 1: %lu\n", reverse_byte(22));   // expected 104
    printf("Test 2: %lu\n", reverse_byte(1));    // expected 128
    printf("Test 3: %lu\n", reverse_byte(240));  // expected 15

    return 0;
}
