#include <stdio.h>

#define SIZE 1000

// Function to initialize array
void initialize(int arr[], int n) {

    for (int i = 0; i < n; i++) {
        arr[i] = i * 2 + 5;
    }
}

// Function with nested loops
void processArray(int arr[], int n) {

    for (int i = 0; i < n; i++) {

        for (int j = 0; j < 50; j++) {

            arr[i] = arr[i] + j;

            if (arr[i] % 2 == 0) {
                arr[i] = arr[i] * 2;
            } else {
                arr[i] = arr[i] - 3;
            }
        }
    }
}

// Function for reduction
int calculateSum(int arr[], int n) {

    int sum = 0;

    for (int i = 0; i < n; i++) {

        sum += arr[i];

        if (arr[i] > 500) {
            sum += arr[i] / 2;
        } else {
            sum -= arr[i] / 3;
        }
    }

    return sum;
}

// Function with loop dependency
void dependencyLoop(int arr[], int n) {

    for (int i = 1; i < n; i++) {
        arr[i] = arr[i] + arr[i - 1];
    }
}

// Main function
int main() {

    int arr[SIZE];

    initialize(arr, SIZE);

    processArray(arr, SIZE);

    dependencyLoop(arr, SIZE);

    int result = calculateSum(arr, SIZE);

    printf("Final Result: %d\n", result);

    return 0;
}

