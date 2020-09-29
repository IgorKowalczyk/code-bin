// ---
// File name: name.cpp
// Note: This file may contain errors and bugs. Do not use it on production
// Creator: Igor Kowalczyk
// ---

#include <iostream>
#include <conio.h> 
using namespace std;

int hello() {
 string name;
 cout << "\n\nPlease enter your name: ";
 cin >> name;
 cout << "\nYour name is " << name << ".";
}

int main() {
 cout << "Hello World!";
 hello();
}
