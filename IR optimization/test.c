// big_while_optimization.c

#include <stdio.h>

#define SIZE 1000

int main() {

    int arr[SIZE];
    int i = 0;

    // Initialize array
    while (i < SIZE) {
        arr[i] = i * 2 + 5;
        i++;
    }

    int sum = 0;
    int evenSum = 0;
    int oddSum = 0;
    int max = arr[0];
    int min = arr[0];

    i = 0;

    // Main computation loop
    while (i < SIZE) {

        int value = arr[i];

        // Constant folding candidate
        int temp = 10 * 20;

        // Dead code candidate
        int unused = value * 999;

        // Common subexpression
        int a = value * 4;
        int b = value * 4;

        sum += value;

        // Branch optimization
        if (value % 2 == 0) {
            evenSum += value + temp;
        } else {
            oddSum += value + temp;
        }

        // Max/min check
        if (value > max) {
            max = value;
        }

        if (value < min) {
            min = value;
        }

        // Strength reduction candidate
        arr[i] = i * 8;

        // Loop invariant candidate
        sum += (50 * 100);

        // Another dead calculation
        int useless = (value * value) - value;

        i++;
    }

    // Another loop for optimization
    i = 0;
    int product = 1;

    while (i < 20) {
        product *= 2;
        i++;
    }

    // Nested loop
    int matrixSum = 0;
    int x = 0;

    while (x < 50) {

        int y = 0;

        while (y < 50) {
            matrixSum += x + y;
            y++;
        }

        x++;
    }

    printf("Sum        : %d\n", sum);
    printf("Even Sum   : %d\n", evenSum);
    printf("Odd Sum    : %d\n", oddSum);
    printf("Max        : %d\n", max);
    printf("Min        : %d\n", min);
    printf("Product    : %d\n", product);
    printf("Matrix Sum : %d\n", matrixSum);

    return 0;
}

