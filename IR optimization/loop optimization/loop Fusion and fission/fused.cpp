#include <iostream>
using namespace std;

void test(int *A, int *B, int *C, int n)
{
    // Fused loop
    for(int i = 0; i < n; i++)
    {
        A[i] = B[i] + 1;

        C[i] = A[i] * 2;
    }
}

int main()
{
    int n = 10;

    int A[10];
    int B[10];
    int C[10];

    for(int i = 0; i < n; i++)
    {
        B[i] = i;
    }

    test(A, B, C, n);

    for(int i = 0; i < n; i++)
    {
        cout << C[i] << " ";
    }

    cout << endl;

    return 0;
}
