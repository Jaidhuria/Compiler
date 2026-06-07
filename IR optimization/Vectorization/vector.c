#include <stdio.h>

void vector_add(float *A, float *B, float *C, int N) {
    for (int i = 0; i < N; i++) {
        C[i] = A[i] + B[i];
    }
}

int main() {
    int N = 8;

    float A[8] = {1,2,3,4,5,6,7,8};
    float B[8] = {8,7,6,5,4,3,2,1};
    float C[8];

    vector_add(A, B, C, N);

    for (int i = 0; i < N; i++) {
        printf("%f\n", C[i]);
    }

    return 0;
}
