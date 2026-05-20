#include <iostream>
using namespace std;

int main() {

    int a = 10;
    int b = 20;
    int c = 30;

    // Simple if-else
    if (a < b) {
        cout << "a is smaller than b" << endl;
    }
    else {
        cout << "a is greater than or equal to b" << endl;
    }

    // Nested if-else
    if (a < b) {

        if (b < c) {
            cout << "a < b < c" << endl;
        }
        else {
            cout << "b is not smaller than c" << endl;
        }

    }
    else {
        cout << "a is not smaller than b" << endl;
    }

    // Multiple conditions
    if (a > 0 && b > 0 && c > 0) {
        cout << "All numbers are positive" << endl;
    }
    else {
        cout << "Some number is negative" << endl;
    }

    // Optimization opportunity
    int x = 5 * 10;

    if (x > 20) {
        cout << "x is greater than 20" << endl;
    }
    else {
        cout << "x is smaller than or equal to 20" << endl;
    }

    // Common subexpression opportunity
    int result1 = (a + b) * c;

    if ((a + b) * c > 100) {
        cout << "Large Value" << endl;
    }
    else {
        cout << "Small Value" << endl;
    }

    return 0;
}
