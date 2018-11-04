#include <iostream>
#include <cstdio>
#include <queue>
#include <tuple>

const int NMAX = 1005;
int mat[NMAX][NMAX];

int n, t, ai, aj, bi, bj;

int di[] = { -2, -2, -1, +1, +2, +2, +1, -1 };
int dj[] = { -1, +1, +2, +2, +1, -1, -2, -2 };

int main() {
    freopen("../data.in", "r", stdin);

    std::cin >> n >> ai >> aj >> bi >> bj >> t;
    for (int i = 1; i <= t; ++i) {
        int ci, cj;
        std::cin >> ci >> cj;
        mat[ci][cj] = -1;
        for (int d = 0; d < 8; ++d) {
            int ni = ci + di[d], nj = cj + dj[d];
            if (ni < 1 || ni > n || nj < 1 || nj > n || mat[ni][nj] == -1)
                continue;
            mat[ni][nj] = -1;
        }
    }

    std::queue<std::pair<int, int> > q;
    q.push({ ai, aj });

    while (!q.empty()) {
        int ci, cj;
        std::tie(ci, cj) = q.front();
        q.pop();

        for (int d = 0; d < 8; ++d) {
            int ni = ci + di[d], nj = cj + dj[d];
            if (ni < 1 || ni > n || nj < 1 || nj > n || mat[ni][nj] == -1)
                continue;

            if (mat[ni][nj] == 0) {
                mat[ni][nj] = mat[ci][cj] + 1;
                q.push({ ni,nj });
            }
        }
    }

    std::cout << mat[bi][bj];


    return 0;
}