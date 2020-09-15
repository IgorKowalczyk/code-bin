# include <iostream>
using namespace std;

int pole(int a, int b) {
 return(a*b);
}

int main(int argc, int** argcv) {
 int pole;
 cout << "Podaj co chcesz zrobic! Znak 1 to obliczanie pola prostokata, znak 2 to obliczenie pola trojkata: ";
 cin >> pole;
 int a;
 int b;
 if (pole == 1) {
  cout << "\nPodaj liczbe A: ";
  cin >> a;
  cout << "Teraz podaj liczbe B: ";
  cin >> b;
  const int prostokat = a*b;
  cout << "\nPole prostokata to: " << prostokat << "!";
 } else if (pole == 2) {
  cout << "\nPodaj liczbe A: ";
  cin >> a;
  cout << "Teraz podaj liczbe B: ";
  cin >> b;
  const int trojkat = a*b/2;
  cout << "\nPole prostokata to: " << trojkat << "!";
 } else if (pole != 2) {
  cout << "\nBlad: Podaj liczbe 1 albo 2!";
 } else if (pole != 1) {
  cout << "\nBlad: Podaj liczbe 1 albo 2!";
}
 cout << "\n\n\nProgram przygotowal Igor Kowalczyk!";
 return 0;
}
