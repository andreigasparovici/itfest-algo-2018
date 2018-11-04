#include <iostream>
#include <cstdio>
#include <string>

struct Node {
    char letter;
    Node *left, *right;
}*root[101];

std::string getSubstring(std::string s, int i, int j) {
    return s.substr(i, j - i  + 1);
}

void build(Node*& node, std::string s) {
    int n = s.length();
    int m = (n % 2 == 0) ? n / 2 - 1 : n / 2;

    if (!n)
        return;

    char letter = s[m];
    node = new Node;
    node -> letter = letter;

    if (n != 1) {
        build(node->left, getSubstring(s, 0, m - 1));
        build(node->right, getSubstring(s, m + 1, n - 1));
    }
}

void reverse_build(Node*& node, std::string s) {
    node = new Node;

}

void traverse(Node* root) {
    if (!root)
        return;

    std::cout << root -> letter;
    traverse(root -> right);
    traverse(root -> left);
}

int main() {
    freopen("../data.in", "r", stdin);

    build(root[0], "bulaneala");
    traverse(root[0]);

    //for (int j = 0; j < i; ++j) {
    //    traverse(root[j]);
    //    std::cout << " "[j == i - 1];
    //}

    return 0;
}