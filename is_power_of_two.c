#include <stdio.h>

long is_power_of_two(unsigned long n);

int main(void) {
    printf("Test 1: %ld\n", is_power_of_two(8));   // expected 1
    printf("Test 2: %ld\n", is_power_of_two(10));  // expected 0
    printf("Test 3: %ld\n", is_power_of_two(64));  // expected 1

    return 0;
}
