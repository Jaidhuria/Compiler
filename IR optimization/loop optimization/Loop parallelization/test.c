#include <stdio.h>
#include <omp.h>

#define N 1024

float A[N][N];
float B[N][N];
float C[N][N];

void matmul() {

    // LOOP TILING
    for (int ii = 0; ii < N; ii += 32) {
        for (int jj = 0; jj < N; jj += 32) {
            for (int kk = 0; kk < N; kk += 32) {

                for (int i = ii; i < ii + 32 && i < N; i++) {
                    for (int j = jj; j < jj + 32 && j < N; j++) {

                        float sum = C[i][j];

                        int kend = (kk + 32 < N) ? (kk + 32) : N;

                        #pragma omp simd
                        for (int k = kk; k < kend; k++) {
                            sum += A[i][k] * B[k][j];
                        }

                        C[i][j] = sum;
                    }
                }

            }
        }
    }
}

int main() {
    matmul();
    printf("Done\n");
    return 0;
}