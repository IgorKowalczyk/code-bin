#include <iostream>;
using namespace std;

int main() {
 int i, x;
 char str[100];
 cout << "Please enter a string: ";
 cin >> str;
 cout << "\nPlease choose following option (1 = Encrypt | 2 = Decrypt): ";
 cin >> x;
 switch(x) {
  case 1:
   for(i = 0; (i < 100 && str[i] != '\0'); i++) {
    str[i] = str[i] + 2;
   }
   cout << "\nEncrypted string: " << str << "\n";
  break;
  case 2:
   for(i = 0; (i < 100 && str[i] != '\0'); i++) {
    str[i] = str[i] - 2;
   }
   cout << "\nDecrypted string: " << str << "\n";
  break;
  default:
   cout << "\nInvalid Input!";
 }
 return 0;
}
