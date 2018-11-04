#include <iostream>

using namespace std;

int n;
int x[105];
int y[105];

int main() {
    cin >> n;
    for(int i = 1; i <= n; i++){
        cin >> x[i];
        x[i] = x[i - 1] + x[i];
    }

    for(int i = 1; i <= n; i++){
        cin >> y[i];
        y[i] = y[i - 1] + y[i];
    }

    int maxDiff = 0;

    for(int i = 1; i <= n; i++){
        for(int j = i; j <= n; j++){
            int sumx = x[j] - x[i - 1];
            int sumy = y[j] - y[i - 1];

            if(sumx == sumy){
                int diff = j - i + 1;
                if(diff > maxDiff){
                    maxDiff = diff;
                }
            }
        }
    }

    cout << maxDiff;

    return 0;
}