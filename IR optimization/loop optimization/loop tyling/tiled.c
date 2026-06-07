#include <stdio.h>

#define N 1024
#define TILE 32

float A[N][N];
float B[N][N];
float C[N][N];

void matmul_tiled() {

    for (int ii = 0; ii < N; ii += TILE) {

        for (int jj = 0; jj < N; jj += TILE) {

            for (int kk = 0; kk < N; kk += TILE) {

                // Tile block computation
                for (int i = ii; i < ii + TILE; i++) {

                    for (int j = jj; j < jj + TILE; j++) {

                        float sum = C[i][j];

                        for (int k = kk; k < kk + TILE; k++) {

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

    // Initialize matrices
    for(int i=0;i<N;i++) {
        for(int j=0;j<N;j++) {
            A[i][j] = 1.0;
            B[i][j] = 1.0;
            C[i][j] = 0.0;
        }
    }

    matmul_tiled();

    printf("Done\n");

    return 0;
}
