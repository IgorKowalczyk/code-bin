// ---
// File name: list.cpp
// Note: This file may contain errors and bugs. Do not use it on production
// Creator: Igor Kowalczyk
// ---
 
#include <iostream>
using namespace std;

int main() {
 int a;
 cout << "Podaj jakas liczbe: ";
 cin >> a;
 for(int i = 0; i<=a ; i++) {
  cout << "Liczba: " << i << "\n";
 }
 cout << "Wyswietlono wszystkie liczby!";
}
