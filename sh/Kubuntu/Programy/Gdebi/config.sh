############################################################
#                     INSTALACJA GDEBI                     #
############################################################
echo
tput bold; tput smso;  echo "###########################################################"; tput sgr0
tput bold; echo "Instalowanie gdebi..."; tput sgr0
tput bold; tput smso;  echo "###########################################################"; tput sgr0
echo
echo -n "Pracuje... "
sudo add-apt-repository universe -y
sudo apt-get install gdebi-core -y
sudo apt-get install gdebi -y



############################################################
#                  ZAKONCZENIE DZIALANIA                   #
############################################################
echo
tput bold; tput smso;  echo "###########################################################"; tput sgr0
tput bold;  echo "Zakończono!"; tput sgr0
tput bold; tput smso;  echo "###########################################################"; tput sgr0
