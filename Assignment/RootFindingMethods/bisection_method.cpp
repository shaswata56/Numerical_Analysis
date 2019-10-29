#include <bits/stdc++.h>
using namespace std;
long double EPS;

long double func(long double x)
{
	return 2*x*x*x - 11*x - 50;
}

void bisection(long double a, long double b)
{
	if(0 <= func(a) * func(b))
	{
		cout << "The root doesn't exist between " << a << " and " << b << "." << endl;
		return;
	}
	long double c = a;
	while(b - a >= EPS)
	{
		c = (a + b) / 2;
		if(func(c) == 0)
			break;
		else if(func(a) * func(c) < 0)
			b = c;
		else
			a = c;
	}
	cout << "The root of f(x) = 2x^3 - 11x - 50 is : " << c << endl;
}

int main()
{
	long double a, b;
	cout << "Enter guessed a and b." << endl;
	cout << "a : ";
	cin >> a;
	cout << "b : ";
	cin >> b;
	cout << "Enter epsilon: ";
	cin >> EPS;
	bisection(a, b);
	return 0;
}
