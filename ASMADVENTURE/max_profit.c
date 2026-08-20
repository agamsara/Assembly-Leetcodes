#include <stdio.h>

long max_profit(long *prices, long len);

int main(void) {
    long a1[] = {7, 1, 5, 3, 6, 4};
    long a2[] = {7, 6, 4, 3, 1};
    long a3[] = {2, 4, 1, 8};

    printf("Test 1: %ld\n", max_profit(a1, 6)); // expected 5
    printf("Test 2: %ld\n", max_profit(a2, 5)); // expected 0
    printf("Test 3: %ld\n", max_profit(a3, 4)); // expected 7

    return 0;
}
