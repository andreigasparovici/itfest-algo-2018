#include <iostream>
#include <cstdio>

std::string input;
int s[1010];

int main() {
    freopen("../data.in", "r", stdin);

    std::cin >> input;

    int n = input.length();
    for (int i = 0; i < n; ++i) {
        s[i] = (input[i] == '(') ? 1 : -1;
    }

    int maxim = 0;
    for (int i = 0; i < n - 1; ++i) {
       int sum = s[i];
       if (sum < 0) continue;
       for (int j = i + 1; j < n; ++j) {
           sum += s[j];
           if (sum == 0)
               maxim = std::max(maxim, j - i + 1);
           else if ( sum < 0)
               break;
       }
    }

    std::cout << maxim;



    return 0;
}