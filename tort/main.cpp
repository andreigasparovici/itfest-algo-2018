#include <iostream>
#include <algorithm>

using namespace std;

int n;
int m, p, q;
int z;

int vrc[105];
int orc[105];
int arii[10019];

int main() {
    cin >> n >> m >> p >> q >> z;

    if(z > (p + 1) * (q + 1)){
        cout << "-1";
        return 0;
    }

    vrc[0] = 0;
    vrc[p + 1] = n;
    for(int i = 1; i <= p; i++){
        cin >> vrc[i];
    }

    orc[q + 1] = m;
    for(int i = 1; i <= q; i++) {
        cin >> orc[i];
    }

    p += 2;
    q += 2;

    sort(vrc, vrc + p);
    sort(orc, orc + q);
    int nr = 0;

    for(int i = 0; i < p - 1; i++){
        for(int j = 0; j < q - 1; j++){
            int arie = (vrc[i + 1] - vrc[i]) * (orc[j + 1] - orc[j]);
            arii[nr] = arie;
            nr++;
        }
    }

    sort(arii, arii + nr);
    cout << arii[nr - z];



    return 0;
}