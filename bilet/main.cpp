#include <iostream>
#include <cstdio>
#include <cstring>

using namespace std;


struct Nod{
    char inf;
    Nod *st, *dr;

    Nod(char _inf){
        st = dr = NULL;
        inf = _inf;
    }
};

int n;

void decode(char cuvant[105], Nod *&x, int st, int dr){
    x = new Nod(cuvant[st]);
    st++;
    int l = dr - st + 1;

    if(l == 0){
        return;
    }

    if(l == 1){
        decode(cuvant, x->dr, st, dr);
    }
    else if(l % 2 == 0){
        decode(cuvant, x->st, st + l / 2, dr);
        decode(cuvant, x->dr, st, dr - l / 2);
    }
    else{
        decode(cuvant, x->st, st + l / 2 + 1, dr);
        decode(cuvant, x->dr, st, dr - l / 2);
    }
}

void parcurge(Nod *x){
    if(x->st){
        parcurge(x->st);
    }
    printf("%c", x->inf);
    if(x->dr){
        parcurge(x->dr);
    }
}

void citire(){
    char cuvant[105];

    int ok = 1;

    while(cin >> cuvant){
        if(ok == 0){
            cout << " ";
        }
        ok = 0;
        Nod *x;
        decode(cuvant, x, 0, strlen(cuvant) - 1);
        parcurge(x);
    }
}

int main() {
    citire();
    return 0;
}