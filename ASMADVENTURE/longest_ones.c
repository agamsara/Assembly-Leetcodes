#include <stdio.h>

long longest_ones(unsigned long n);

int main(void) {
    printf("Test 1: %ld\n", longest_ones(13));   // expected 2
    printf("Test 2: %ld\n", longest_ones(15));   // expected 4
    printf("Test 3: %ld\n", longest_ones(22));   // expected 2

    return 0;
}
