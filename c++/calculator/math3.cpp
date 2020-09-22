#include <iostream>
using namespace std;

int main() {
 cout << "                  _   _     \n";
 cout << "  _ __ ___   __ _| |_| |__  \n";
 cout << " | '_ ` _ \\ / _` | __| '_ \\ \n";
 cout << " | | | | | | (_| | |_| | | |\n";
 cout << " |_| |_| |_|\\__,_|\\__|_| |_|\n\n\n\n";
 char a;
 char b;
 char op;
 cout << "Podaj co chcesz zrobic? (1 to dodawanie, 2 to mnozenie): ";
 cin >> op;
 cout << "Operator podany! Teraz podaj liczbe A: ";
 cin >> a;
 cout << "Liczba A Podana! Teraz podaj liczbę B: ";
 cin >> b;
 cout << "Liczba B Podana!\nTwoje liczby to: " << a << " i " << b << "!\n\n";

 switch(op) {
  case '1':
   cout << "Wynik to: " << a + b << "!";
   break;
  case '2':
   cout << "wynik to:" << a * b << "!";
  default:
   cout << "Nie podano odpowiednich liczb!";
   break;
 }
}
