#include <iostream> // Podstwowa biblioteka
#include <string> // Biblioteka do obslugi string
#include <conio.h> // Biblioteka do obslugi getch
using namespace std; // Deklaracja STD

string binary; // Deklaracja liczby binarnej
int decimal; // Deklaracja liczby dziesietnej
int weight[8] = {128, 64, 32, 16, 8, 4, 2, 1}; // Zadeklarowanie wagi
int typeConversion= 0; // Zadeklarowanie typu konwersji (1 || 2)
int octal;

char setChar(int hexal) { // Deklaracja setChar
 char sHex; // Deklaracja sHex
 switch(hexal){ // Utorzenie petli switch
  case 10: sHex='A'; // Jesli hexal == 10 - sHex = A
   break; // Break (zakonczenie dzialania)
  case 11: sHex='B'; // Jesli hexal == 11 - sHex = B
   break; // Break (zakonczenie dzialania)
  case 12: sHex='C'; // Jesli hexal == 12 - sHex = C
   break; // Break (zakonczenie dzialania)
  case 13: sHex='D'; // Jesli hexal == 13 - sHex = D
   break; // Break (zakonczenie dzialania)
  case 14: sHex='E'; // Jesli hexal == 14 - sHex = E
   break; // Break (zakonczenie dzialania)
  case 15: sHex='F'; // Jesli hexal == 15 - sHex = F
   break; // Break (zakonczenie dzialania)
  default: sHex=' '; // The cake is a lie
   break; // Break (zakonczenie dzialania)
 } // Zamkniecie petli switch
 return sHex; // Zwrocenie wartosci sHex
} // Zamkniecie deklaracji setChar

//1.1 Konwersja Bin na Dec
void BinToDec() { // Tworzenie void
 cout << "Wprowadz 8-mio bitowa liczbe binarna = "; // Cout
 cin >> binary; // Wprowadzenie liczby binarnej
 decimal = 0; // Zadeklarowanie liczby dziesietnej
 if(binary.size() == 8) { // Sprawdzenie czy dlugosc liczby binarnej jest rowna 0
  for(int i = 0; i < binary.size(); i++) { // Utworzenie petli for
   if(binary[i]=='1') { // Sprawdanie liczby binarnej
    decimal += weight[i]; // Obliczanie liczby dziesietnej
   } // Zamkniecie if
  } // Zamkniecie for
  cout << "Liczba " << binary << "BIN = " << decimal << "DEC\n"; // Cout
 } else { // Jezeli liczba nie jest we wlasciwym formacie
  cout << "Podano niewlasciwa liczbe binarna"; // Cout
 } // Zamkniecie if
} // Zamkniecie funkcji

// 1.2 Konwersja Dec na Bin
void DecToBin() { // Tworznie void
 cout << "Wprowadz liczbe dzisietna = "; // Cout
 cin >> decimal; // Pobieranie liczby dziesietnej
 if(decimal < 256 & decimal > -1) { // sprawdzanie czy liczba jest w zakresie 0-255
  int tab[8] = {0, 0, 0, 0, 0, 0, 0, 0}; // utworzenie tablicy tab o wymiarze 8 i wypelnienie jej zerami
  int i = 0; // Deklaracja liczby i
  cout << "Liczba " << decimal << "DEC = "; // Cout
  if(decimal != 0) { // jesli decimal jest rozny od zera
   while (decimal !=1) { // Kiedy decimal jest rozny od zera
    tab[i++] = decimal%2; // Konwersja dec na bin
    decimal/=2; // Konwersja dec na bin
   } // Zamkniecie while
   tab[i]=1; // Przypisanie wartosci
  } // Zamkniecie if
  for(int i = 7; i >- 1; i--) { // Otworzenie petli for
   cout << tab[i]; // Cout
  } // Zamkniecie petli for
 cout << "BIN"; // Cout...
 } else { // Jezeli liczba jest poza zakresem 0-255
  cout << "Liczba dziesietna powinna byc w zakresie 0...255"; // Cout
 } // Zamkniecie if
} // Zamkniecie funkcji

// 1.3 Konwersja Bin na Oct
void BinToOct() { // Tworzenie void
 cout << "Wprowadz 8-mio bitowa liczbe binarna = "; // Cout
 cin >> binary;  // Wprowadzenie liczby binarnej
 octal = 0; // Deklaracja bitu
 int oct1 = 0, oct2 = 0, oct3 = 0; // trojki bitowe Liczby OCT
 if(binary.size() == 8) { //jesli długość binary == 8
  for(int i = 0; i < 3; i++) { // Utworzenie petli for tworzaca `otc1`
   if(binary[7-i]=='1') { // Utowrzenie if
    oct1+=weight[7-i]; // Tworzenie (uzupelnianie `otc1`)
   } // Zamkniecie petli if
  } // Zamkniecie petli for
  for(int i=0;i<3;i++) { // Utworzenie petli for tworzaca `otc2`
   if(binary[7-1-3]=='1') { // Utowrzenie if
    oct2+=weight[7-i]; // Tworzenie (uzupelnianie `otc2`)
   } // Zamkniecie petli if
  } // Zamkniecie petli for
  for(int i=0;i<2;i++) { // Utworzenie petli for tworzaca `otc3`
   if(binary[7-1-6]=='1') { // Utowrzenie if
    oct3+=weight[7-i]; // Tworzenie (uzupelnianie `otc3`)
   } // Zamkniecie if
  } // Zamkniecie petli for
  cout << "Liczba " << binary << " BIN = " << oct3 << oct2 << oct1 << " OCT\n"; // Wyswietlenie wyniku
 } else { // Jezeli liczba nie jest we wlasciwym formacie
 cout<<"Podano niewlasciwa liczbe binarna"; // Cout
 }
}

// 1.4 Konwersja Bin na Hex
void BinToHex() { // Tworzenie void
 cout << "Wprowadz 8-mio bitowa liczbe binarna = "; // Cout
 cin >> binary; // Deklaracja liczby binarnej
 int hex1 = 0, hex2 = 0; // Nadanie poczatkowej wartosci dwom czworka bitowych
 string sHex1, sHex2; // Deklaracja string sHex1 i SHex2
 if(binary.size() == 8) { // Sprawdzenie czy dlugosc liczby binarnej jest rowna 8
  for(int i = 0; i < 4; i++) { // Otworzenie petli for
   if(binary[7-i] == '1') { // Jesli liczba binarna[7-i] == 1
    hex1 += weight[7-i]; // Obliczanie pierwszej czworki bitowej
   } // Zamkniecie if
  } // Zamkniecie petli for
  sHex1 = to_string(hex1); // Nadanie string
  if(hex1 > 9) { // Jesli hex1 > 9
   sHex1 = setChar(hex1); // Nadanie wartosci sHex1
  } // Zamkniecie petli for
  for(int i = 0; i < 4; i++) { // Otworzenie petli for
   if(binary[7-i-4] =='1') { // Jesli liczba binarna[7-i-4] == 1
    hex2+=weight[7-i]; // Obliczanie wagi hex2
   } // Zamkniecie if
  } // Zamkniecie petli for
  sHex2 = to_string(hex2); // Zamien na string zmienna hex2 i wstaw do hex2
  if(hex2 > 9) { // Jesli hex2 > 9
   sHex2 = setChar(hex2); // Nadanie wartosci sHex2
  } // Zamkniecie if
  cout << "Liczba " << binary << " BIN = " << sHex2 << sHex1 << " HEX\n"; // Cout
 } else { // Jezeli liczba nie jest we wlasciwym formacie 
  cout << "Podano niewlasciwa liczbe binarna"; // Cout
 } // Zamkniecie if
} // Zamkniecie void

// 1.0 Glowna Funkcja
int main(int argc, char** argv) { // Deklaracja main
 while(1){ // While 1 == true
  cout << "Program do konwersji BIN-DEC i DEC-BIN (8bit)\n"; // Cout
  cout << "Autor: Igor Kowalczyk uczen klasy 1Tc\n"; // Cout
  cout << "Jaka konwersje chcesz wykonac ?\n BIN-DEC wcisnij 1\n DEC-BIN wcisnij 2\n BIN-OCT wcisnij 3\n BIN-HEX wcisnij 4\n"; // Cout
  cin >> typeConversion; // Pobieranie wartosci typeConversion
 switch(typeConversion) { // Tworzenie switch'a
  case 1: BinToDec(); // Jezeli typeConversion = 1 wywolaj funkcje BinToDec
   break; // Zamkniecie case (zniszczenie)
  case 2: DecToBin();// Jezeli typeConversion = 2 wywolaj funkcje DecToBin
   break; // Zamkniecie case (zniszczenie)
  case 3: BinToOct();// Jezeli typeConversion = 3 wywolaj funkcje BinToOct
    break; // Zamkniecie case (zniszczenie)
  case 4: BinToHex();// Jezeli typeConversion = 4 wywolaj funkcje BinToHex
   break; // Zamkniecie case (zniszczenie)
  default: cout << "Nie rozpoznano typu konwersji!\n"; // Wyswietlanie defaultowej wiadomosci jezeli wartosc TypeConversion != 1 || != 2
   break; // Zamkniecie default (zniszczenie)
 } // Zamkniecie switch
 getch(); // Czekanie na nacisniecie klawisza?
 system("cls"); // Czekanie na nacisniecie klawisza?
 return 0; // Zakonczenie dzialania programu
 } // Zamkniecie while
} // Zamkniecie funckji main
