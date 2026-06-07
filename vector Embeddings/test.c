#include <stdio.h>

int sum(int a, int b) {
    int c = a + b;

    if(c > 10)
        return c;
    else
        return c * 2;
}

int main() {
    int x = sum(5, 8);
    printf("%d\n", x);
    return 0;
}
