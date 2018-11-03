#include <iostream>

using namespace std;

struct Mat{
    long long mat[3][3];

	void initx(){
		for(int i = 0; i < 3; i++)
			for(int j = 0; j < 3; j++)
				mat[i][j] = 0;
		mat[0][0] = 1;
		mat[1][1] = 1;
	}
};

const long long MOD = 1999999973;

long long x, y;
long long t[10];
long long n;


Mat multMat(Mat mat1, Mat mat2){
    Mat rez;
    rez.mat[0][0] = ((mat1.mat[0][0] * mat2.mat[0][0]) % MOD + (mat1.mat[0][1] * mat2.mat[1][0]) % MOD) % MOD;
    rez.mat[0][1] = ((mat1.mat[0][0] * mat2.mat[0][1]) % MOD + (mat1.mat[0][1] * mat2.mat[1][1]) % MOD) % MOD;
    rez.mat[1][0] = ((mat1.mat[1][0] * mat2.mat[0][0]) % MOD + (mat1.mat[1][1] * mat2.mat[1][0]) % MOD) % MOD;
    rez.mat[1][1] = ((mat1.mat[1][0] * mat2.mat[0][1]) % MOD + (mat1.mat[1][1] * mat2.mat[1][1]) % MOD) % MOD;

    return rez;
}

Mat powx(Mat mat, long long p){
	Mat x;
	x.initx();	

    while(p > 1){
		if(p % 2 != 0){
			p--;
			x = multMat(x, mat);
		}
		p = p / 2;
		mat = multMat(mat, mat);
	}	
   	return multMat(mat, x); 
}

void citire(){
    cin >> t[0] >> t[1];
	cin >> x >> y;
    cin >> n;

    Mat mat;

    mat.mat[0][0] = 0;
    mat.mat[0][1] = y;
    mat.mat[1][0] = 1;
    mat.mat[1][1] = x;

   	mat = powx(mat, n - 1);

   	cout << ((mat.mat[0][1] * t[0]) % MOD + (mat.mat[1][1] * t[1]) % MOD) % MOD;
}

int main() {
    citire();
	return 0;
}
