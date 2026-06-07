#include <iostream>
#include <vector>
using namespace std;

int compute(int x) {
    int result = 0;

    for (int i = 0; i < 1000; i++) {
        result += (x * i) % 7;

        if (result % 5 == 0) {
            result += i;
        } else {
            result -= i / 2;
        }
    }

    return result;
}

int processArray(vector<int>& arr) {
    int sum = 0;

    for (int i = 0; i < arr.size(); i++) {
        sum += compute(arr[i]);

        if (arr[i] % 2 == 0) {
            sum += arr[i] * 2;
        } else {
            sum -= arr[i];
        }
    }

    return sum;
}

int main() {
    vector<int> data;

    for (int i = 0; i < 500; i++) {
        data.push_back(i * 3);
    }

    int finalResult = processArray(data);

    cout << "Result: " << finalResult << endl;

    return 0;
}
