############################################################
#                 INFORMACJE O SYSTEMIE                    #
############################################################
echo
tput bold; tput smso;  echo "###########################################################"; tput sgr0
tput bold; echo "Zbieranie informacji o systemie..."; tput sgr0
tput bold; tput smso;  echo "###########################################################"; tput sgr0
sudo dnf --assumeyes install inxi
clear
tput bold; tput smso;  echo "###########################################################"; tput sgr0
tput bold; echo "Informacje o systemie:"; tput sgr0
tput bold; tput smso;  echo "###########################################################"; tput sgr0
inxi -F
tput bold; echo "Zakończono!"; tput sgr0
