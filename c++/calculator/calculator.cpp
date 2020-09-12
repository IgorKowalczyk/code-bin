# include <iostream>
using namespace std;

int main() {
 char op;
 float number1, number2;
 cout << "                  _   _     \n";
 cout << "  _ __ ___   __ _| |_| |__  \n";
 cout << " | '_ ` _ \\ / _` | __| '_ \\ \n";
 cout << " | | | | | | (_| | |_| | | |\n";
 cout << " |_| |_| |_|\\__,_|\\__|_| |_|\n\n\n\n";
 
 cout << "Please enter an a operator:\n";
 cout << "(Note: vaild operators: | + | - | * | / |)\nYour operator: ";
 cin >> op;
 cout << "\nPlease enter first number: ";
 cin >> number1;
 cout << "Please enter second number: ";
 cin >> number2;
 switch(op) {
  case '+':
   cout << "The generated number is: " << number1+number2;
   break;
  case '-':
   cout << "The generated number is: " << number1-number2;
   break;
  case '*':
   cout << "The generated number is: " << number1*number2;
   break;
  case '/':
   cout << "The generated number is: " << number1/number2;
   break;
  default:
   cout << "Your operator `" << op  << "` is not correct!\nPlease enter operator as | + | - | * | / |!\n\n";
   break;
 }
 return 0;
}
