#include <cstdio>
#include <iostream>
#include <cstring>

using namespace std;

char x[105];

int main() {
    fgets(x, 100, stdin);

    int l = strlen(x);
    int solMax = 0;

    if(x[l - 1] == '\n'){
        x[l - 1] = 0;
        l--;
    }

    for(int d = 1; d <= l / 3; d++){
        int ok = 1;
        for(int i = 0; i < d; i++){
            if(x[i] != x[l - d + i]){
                ok = 0;
                break;
            }
        }

        int lc = 0;

        if(ok == 0){
            continue;
        }

        for(int i = d; i < l - d; i++){
            if(lc == d){
                solMax = d;
                break;
            }
            else if(x[lc] == x[i]){
                lc++;
            }
            else{
                i = i - lc;
                lc = 0;
            }
        }

        if(lc == d){
            solMax = d;
        }
    }

    cout << solMax;

    return 0;
}