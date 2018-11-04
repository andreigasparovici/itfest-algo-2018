#include <iostream>
#include <cstdio>
#include <vector>
#include <algorithm>
#include <unordered_map>
#include <map>
#include <set>

int N;
struct Point {
    int x, y;
};
std::vector<Point> p;
std::map<std::pair<int, int>, bool> m;

class InParser {

private:

    FILE *fin;

    char *buff;

    int sp;



    char read_ch() {

        ++sp;

        if (sp == 4096) {

            sp = 0;

            fread(buff, 1, 4096, fin);

        }

        return buff[sp];

    }



public:

    InParser() {

        fin = stdin;//fopen(nume, "r");

        buff = new char[4096]();

        sp = 4095;

    }



    InParser& operator >> (int &n) {

        char c;

        while (!isdigit(c = read_ch()) && c != '-');

        int sgn = 1;

        if (c == '-') {

            n = 0;

            sgn = -1;

        } else {

            n = c - '0';

        }

        while (isdigit(c = read_ch())) {

            n = 10 * n + c - '0';

        }

        n *= sgn;

        return *this;

    }



    InParser& operator >> (long long &n) {

        char c;

        n = 0;

        while (!isdigit(c = read_ch()) && c != '-');

        long long sgn = 1;

        if (c == '-') {

            n = 0;

            sgn = -1;

        } else {

            n = c - '0';

        }

        while (isdigit(c = read_ch())) {

            n = 10 * n + c - '0';

        }

        n *= sgn;

        return *this;

    }

};

int dx[] = { 1, 0, -1, 0};
int dy[] = { 0, 1, 0, -1};

int modul(int x) {
    return x >= 0 ? x : -x;
}

std::map<int, std::set<Point>> X;

int main() {
    std::freopen("../data.in", "r", stdin);
    InParser in;

    in >> N;

    std::vector<int> icsi;

    for (int i = 0; i < N; ++i) {
        int x, y;
        in >> x >> y;
        m[{x, y}] = true;
        p.push_back({x, y});

        X[x].insert(p.back());
        icsi.push_back(x);
    }

    for (int i = 0; i < icsi.size(); ++i) {
        int x = icsi[i];

        for (int j = 0; j < icsi.size(); ++j) {
            if (i == j) continue;

            int dist = modul(icsi[i] - icsi[j]);
        }
    }

    long long count = 0;

    for (Point point: p) {
        for (int k = 1; k <= 10000; ++k) {
            for (int d = 0; d < 4; ++d) {
                int firstD = d;
                int secondD = (d + 1) % 4;

                int firstX = point.x + dx[firstD] * k, firstY = point.y + dy[firstD] * k;
                int secondX = point.x + dx[secondD] * k, secondY = point.y + dy[secondD] * k;

                if(m[{firstX, firstY}] && m[{secondX, secondY}]) {

                    if (firstX == point.x) {
                        if (modul(firstY - point.y) == modul(secondX - point.x)) {
                            ++count;
                        }
                    } else {
                        if (modul(secondY - point.y) == modul(firstX - point.x)) {
                            ++count;
                        }
                    }
                }
//                else{
//                    std::cout << "nope\n";
//                }
            }

        }
    }
    std::cout << count;


    return 0;
}