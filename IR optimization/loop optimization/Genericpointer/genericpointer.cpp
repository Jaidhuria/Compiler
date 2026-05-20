#include <iostream>
using namespace std;

int main() {
    int a = 10;
    float b = 5.5;
    char c ='abc';
    void *ptr;
    ptr = &a;
    cout << "Integer: " << *(int*)ptr << endl;

    ptr =&b;
    cout<<"Float:" << *(float*)ptr << endl;

    ptr=&c;
    cout<<"Character: " << *(char*)ptr << endl;

    return 0;
}
