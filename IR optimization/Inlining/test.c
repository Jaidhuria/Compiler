#include <stdio.h>

static inline int square(int x) {
    return x * x;
}

int main() {
    int a = 5;
    int result = square(a);

    printf("%d\n", result);

    return 0;
}