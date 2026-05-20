#include <iostream>
using namespace std;

void test(int *A, int *B, int *C, int n)
{
    for(int i=0; i<n; i++)
    {
        A[i] = B[i] + 1;
    }

    for(int i=0; i<n; i++)
    {
        C[i] = A[i] * 2;
    }
}

int main()
{
    int A[100], B[100], C[100];

    for(int i=0;i<100;i++)
        B[i] = i;

    test(A,B,C,100);

    return 0;
}
