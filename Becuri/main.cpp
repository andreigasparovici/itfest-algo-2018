#include <iostream>
#include <cstdio>
#include <vector>
#include <set>
#include <unordered_map>
#include <bitset>
#include <queue>

const int NMAX = 705;
int n;

struct Point {
    int x, y;
}p[NMAX];

const int MMAX = 3005;
int m;

struct Relation {
    int a, b;
}r[MMAX];

std::vector<int> graph[NMAX];

int d(Point A, Point B) {
    return abs(A.x - B.x) + abs(A.y - B.y);
}

int dist_all(const std::vector<Point>& v, Point A) {
    int sum = 0;
    for (const Point p: v){
        sum += d(A, p);
    }
    return sum;
}

int dmin = INT32_MAX;
void update(std::vector<Point>& v, Point A) {
    for (const Point p: v){
        dmin = std::min(dmin, d(A, p));
    }
}

std::vector<int> potential;
std::bitset<NMAX> viz;
std::unordered_map<int, bool> isOn;

void back(int node, bool hasTo) {
    viz[node] = 1;

    if (hasTo) {
        isOn[node] = 1;
        for (int next: graph[node]) {
            if (!viz[next]) {
                back(next, 0);
            }
        }
        isOn[node] = 0;
    } else {
        isOn[node] = 0;
        for (int next: graph[node]) {
            if (!viz[next]) {
                back(next, 1);
            }
        }
    }
    viz[node] = 0;
}

void solve() {
    std::queue<std::pair<int, int>> q;

    q.push({1, 0});
    q.push({1, 1});

    while (!q.empty()) {
        int node, hasTo;
        std::tie(node, hasTo) = q.front();
        viz[node] = 1;
        q.pop();

        for (int next: graph[node]) {
            if (!viz[next])
                q.push({ next, !hasTo });
        }
    }
}

int main() {

    freopen("../data.in", "r", stdin);

    std::cin >> n >> m;
    for (int i = 1; i <= n; ++i) {
        std::cin >> p[i].x >> p[i].y;
    }

    std::set<int> potentialSet;
    for (int i = 1; i<= m; ++i) {
        std::cin >> r[i].a >> r[i].b;
        graph[r[i].a].push_back(r[i].b);
        graph[r[i].b].push_back(r[i].a);
        potentialSet.insert(r[i].a);
        potentialSet.insert(r[i].b);
    }

    potential.assign(potentialSet.begin(), potentialSet.end());

    back(0, 1);


    return 0;
}