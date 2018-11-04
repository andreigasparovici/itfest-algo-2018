#include <iostream>
#include <cstdio>
#include <algorithm>
#include <vector>
#include <set>

int n, m, p, q, z;
std::vector<int> vert, hor;
std::vector<int> areas;

int modul(int x) {
    return (x >= 0) ? x : -x;
}

int main() {
    freopen("../data.in", "r", stdin);


    std::cin >> n >> m >> p >> q >> z;
    z--;

    vert.push_back(0);
    for (int i = 1; i <= p; ++i) {
        int aux;
        std::cin >> aux;
        vert.push_back(aux);
    }
    if (m)
        vert.push_back(m);

    std::set<int> s1(vert.begin(), vert.end());
    vert.assign(s1.begin(), s1.end());

    hor.push_back(0);
    for (int i = 1; i <= q; ++i) {
        int aux;
        std::cin >> aux;
        hor.push_back(aux);
    }
    if (n)
        hor.push_back(n);

    std::set<int> s2(hor.begin(), hor.end());
    hor.assign(s2.begin(), s2.end());

    for (int i = 0; i < hor.size() - 1; ++i) {
        int left = hor[i], right = hor[i + 1];
        for (int j = 0; j < vert.size() - 1; ++j) {
            int top = vert[j], bottom = vert[j + 1];
            int area = modul(left - right) * modul(top - bottom);
            areas.push_back(area);
        }
    }

    if (z >= areas.size()) {
        std::cout << -1;
    } else {
        std::sort(areas.begin(), areas.end(), std::greater<>());
        std::cout << areas[z];
    }

    return 0;
}