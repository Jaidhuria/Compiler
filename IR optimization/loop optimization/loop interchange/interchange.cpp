int A[64][64];

void foo() {
    for (int i = 0; i < 64; i++) {
        for (int j = 0; j < 64; j++) {
            A[j][i] = 0;
        }
    }
}