############################################################
#                 INFORMACJE O SYSTEMIE                    #
############################################################
clear
echo
tput bold; tput smso;  echo "###########################################################"; tput sgr0
tput bold; echo "Zbieranie informacji o systemie..."; tput sgr0
tput bold; tput smso;  echo "###########################################################"; tput sgr0
sudo dnf --assumeyes install screenfetch
clear
echo "Zbieranie informacji..."
screenfetch
