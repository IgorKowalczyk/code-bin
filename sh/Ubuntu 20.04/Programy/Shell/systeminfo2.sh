############################################################
#                 INFORMACJE O SYSTEMIE                    #
############################################################
clear
echo
tput bold; tput smso;  echo "###########################################################"; tput sgr0
tput bold; echo "Zbieranie informacji o systemie..."; tput sgr0
tput bold; tput smso;  echo "###########################################################"; tput sgr0
sudo lshw
tput bold; echo "Zakończono!"; tput sgr0
