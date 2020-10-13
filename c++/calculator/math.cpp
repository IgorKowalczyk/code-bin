#include <iostream> 

using namespace std;
int a = 5;
int b = 7;

void zamien(int & a, int & b){
 int temp;
 cout <<"Przed zmiana: " << "\n";
 cout << "a= " << a;
 cout << "b= " << b;
 temp = a;
 a = b;
 b = temp;
 cout << "Po zmianie: " << "\n";
 cout << "a= " << a;
 cout << "b= " << b;		
}

int poleprostokata(int a, int b){
 int wynik;
 cout << "Podaj wartosc boku A: ";
 cin >> a;
 cout << "Podaj watosc boku B: ";
 cin >> b;
 cout << "\nPole prostokata rowna sie: "<< a*b << "\n";
 wynik=a*2+b*2;
 cout << "Obowd prostokata rowna sie: "<< wynik << "\n";
}

int main(int argc, char** argv) {
 int a;
 int b;
 poleprostokata(a,b);
 return 0;
}
