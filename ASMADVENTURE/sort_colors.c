#include <stdio.h>

void sort_colors(long *arr, long len);

void print_array(long *arr, long len) {
    for (long i = 0; i < len; i++) {
        printf("%ld ", arr[i]);
    }
    printf("\n");
}

int main(void) {
    long a1[] = {2, 0, 2, 1, 1, 0};
    long a2[] = {2, 2, 1, 0, 0, 1};
    long a3[] = {1, 0, 2, 0, 1, 2, 1};

    sort_colors(a1, 6);
    sort_colors(a2, 6);
    sort_colors(a3, 7);

    print_array(a1, 6); // 0 0 1 1 2 2
    print_array(a2, 6); // 0 0 1 1 2 2
    print_array(a3, 7); // 0 0 1 1 1 2 2

    return 0;
}
