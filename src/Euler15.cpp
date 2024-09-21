#include <iostream>
using namespace std;

int main(){
    const int n = 22;
    long long myMap[n][n];
    for(int i = 0; i < n; i++){
        for(int j = 0; j < n; j++){
            myMap[i][j] = 1;
        }
    }
    for(int i = 1; i < n; i++){
        for(int j = 1; j < n; j++){
            myMap[i][j] = myMap[i - 1][j] + myMap[i][j - 1];
        }
    }
    /*for(int i = 0; i < n; i++){
        for(int j = 0; j < n; j++){
            cout << myMap[i][j] << ' ';
        }
        cout << endl;
    }*/

    cout << myMap[20][20] << '\n';
    return 0;
}