#include <iostream>
using namespace std;

int main() {

    // Outer loop
    for(int i = 1; i <= 3; i++) {

        cout << "Level 1 -> i = " << i << endl;

        // Middle loop
        for(int j = 1; j <= 3; j++) {

            cout << "   Level 2 -> j = " << j << endl;

            // Inner loop
            for(int k = 1; k <= 2; k++) {

                cout << "      Level 3 -> k = " << k << endl;
            }
        }

        cout << endl;
    }

    return 0;
}
