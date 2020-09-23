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
