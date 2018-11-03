#include <iostream>

using namespace std;

int n;
int apx[15];
int apy[15];

int main() {
    cin >> n;
    int x;
    int rezultat = 0;
    for(int i = 0; i < n; i++){
        cin >> x;
        apx[x]++;
    }

    for(int i = 0; i < n; i++){
        cin >> x;
        apy[x]++;
    }

    for(int i = 1; i <= n; i++){
        while(apx[i] > 1){
            for(int j = 1; j <= n; j++){
                int p = i - j;
                if(p > 0){
                    if(apx[p] == 0){
                        apx[p] = 1;
                        apx[i]--;
                        rezultat += j;
                        break;
                    }
                }
                p = i + j;
                if(p <= n){
                    if(apx[p] == 0){
                        apx[p] = 1;
                        apx[i]--;
                        rezultat += j;
                        break;
                    }
                }
            }
        }
    }

    for(int i = 1; i <= n; i++){
        while(apy[i] > 1){
            for(int j = 1; j <= n; j++){
                int p = i - j;
                if(p > 0){
                    if(apy[p] == 0){
                        apy[p] = 1;
                        apy[i]--;
                        rezultat += j;
                        break;
                    }
                }
                p = i + j;
                if(p <= n){
                    if(apy[p] == 0){
                        apy[p] = 1;
                        apy[i]--;
                        rezultat += j;
                        break;
                    }
                }
            }
        }
    }

    cout << rezultat;


    return 0;
}