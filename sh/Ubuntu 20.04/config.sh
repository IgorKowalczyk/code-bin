############################################################
#             KONFIGUROWANIE WYGLADU SYSTEMU               #
############################################################
echo
tput bold; tput smso;  echo "###########################################################"; tput sgr0
tput bold; echo "Konfigurowanie wygladu systemu..."; tput sgr0
tput bold; tput smso;  echo "###########################################################"; tput sgr0
echo
echo -n "Konfigurowanie trwa... "
gsettings reset org.gnome.shell.extensions.dash-to-dock transparency-mode
gsettings reset org.gnome.shell.extensions.dash-to-dock unity-backlit-items
gsettings reset org.gnome.shell.extensions.dash-to-dock extend-height
gsettings set org.gnome.shell.extensions.dash-to-dock dock-position BOTTOM
gsettings set org.gnome.shell.extensions.dash-to-dock dash-max-icon-size 40
gsettings set org.gnome.shell.extensions.dash-to-dock show-apps-at-top true
gsettings set org.gnome.shell.extensions.dash-to-dock click-action minimize
gsettings set org.gnome.desktop.background picture-uri file:////usr/share/backgrounds/matt-mcnulty-nyc-2nd-ave.jpg
gsettings set org.gnome.desktop.interface gtk-theme 'Yaru-dark'
sudo timedatectl set-timezone Europe/Warsaw
sudo update-locale LANG=pl_PL.UTF-8 LANGUAGE= LC_MESSAGES= LC_COLLATE= LC_CTYPE=
sudo setxkbmap pl
sudo systemctl stop bluetooth.service -f
sudo ubuntu-report -f send no
sudo apt remove --assume-yes popularity-contest
echo "Gotowe"



############################################################
#                INSTALOWANIE GNOME TWEAKS                 #
############################################################
echo
tput bold; tput smso;  echo "###########################################################"; tput sgr0
tput bold; echo "Instalowanie dodatkowych narzedzi..."; tput sgr0
tput bold; tput smso;  echo "###########################################################"; tput sgr0
echo
echo -n "Zainstalowac Gnome Tweaks? (y/n) "
read tweaks
case $tweaks in
 y)
  sudo add-apt-repository universe
  sudo apt --assume-yes install gnome-tweak-tool
  sudo apt-get update --fix-missing
 ;;
 n)
  echo "Pomijam..."
 ;;
 *)
  echo "Nierozpoznana reakcja ($tweaks)!"
 ;;
esac




############################################################
#                   INSTALOWANIE WINE                      #
############################################################
echo
tput bold; tput smso;  echo "###########################################################"; tput sgr0
tput bold; echo "Instalowanie wine..."; tput sgr0
tput bold; tput smso;  echo "###########################################################"; tput sgr0
echo

echo -n "Zainstalowac Wine? (y/n) "
read wine
case $wine in
 y)
  sudo apt --assume-yes install wine64
  sudo apt-get update --fix-missing
 ;;
 n)
  echo "Pomijam..."
 ;;
 *)
  echo "Nierozpoznana reakcja ($wine)!"
 ;;
esac




############################################################
#                INSTALOWANIE G++ (C++)                    #
############################################################
echo
tput bold; tput smso;  echo "###########################################################"; tput sgr0
tput bold; echo "Instalowanie g++"; tput sgr0
tput bold; tput smso;  echo "###########################################################"; tput sgr0
echo
echo -n "Zainstalowac G++? (y/n) "
read gpp
case $gpp in
 y)
  sudo apt --assume-yes install g++
  sudo apt-get update --fix-missing
 ;;
 n)
  echo "Pomijam..."
 ;;
 *)
  echo "Nierozpoznana reakcja ($gpp)!"
 ;;
esac




############################################################
#                 INSTALOWANIE JEZYKA JAVA                 #
############################################################
echo
tput bold; tput smso;  echo "###########################################################"; tput sgr0
tput bold; echo "Instalowanie javy..."; tput sgr0
tput bold; tput smso;  echo "###########################################################"; tput sgr0
echo
echo -n "Zainstalowac Jave? (y/n) "
read java
case $java in
 y)
  sudo apt --assume-yes install default-jdk
  sudo apt-get update --fix-missing
 ;;
 n)
  echo "Pomijam..."
 ;;
 *)
  echo "Nierozpoznana reakcja ($java)!"
 ;;
esac



############################################################
#                   INSTALOWANIE FLATPAK                   #
############################################################
echo
tput bold; tput smso;  echo "###########################################################"; tput sgr0
tput bold; echo "Instalowanie flatpak..."; tput sgr0
tput bold; tput smso;  echo "###########################################################"; tput sgr0
echo
echo -n "Zainstalowac Flatpack? (y/n) "
read flat
case $flat in
 y)
  sudo apt --assume-yes install flatpak
  sudo apt-get update --fix-missing
 ;;
 n)
  echo "Pomijam..."
 ;;
 *)
  echo "Nierozpoznana reakcja ($flat)!"
 ;;
esac

  
  
############################################################
#                  INSTALOWANIE ADBLOCKA                   #
############################################################
echo
tput bold; tput smso;  echo "###########################################################"; tput sgr0
tput bold; echo "Instalowanie Adblocka..."; tput sgr0
tput bold; tput smso;  echo "###########################################################"; tput sgr0
echo
echo -n "Zainstalowac Adblocka? (y/n) "
read adb
case $adb in
 y)
  URL_FIREFOX="https://addons.mozilla.org/firefox/downloads/file/3681081/adblock_for_firefox-4.24.1-fx.xpi"
  PATH_FIREFOX="/usr/lib/firefox-addons/extensions"
  sudo wget -O addon.xpi $URL_FIREFOX
  sudo mv addon.xpi "$PATH_FIREFOX"
  firefox file://$PATH_FIREFOX/addon.xpi
  echo "Dodano dodatek, aby zakończyc instalację potwierdź ją w oknie przegladarki!"
 ;;
 n)
  echo "Pomijam..."
 ;;
 *)
  echo "Nierozpoznana reakcja ($adb)!"
 ;;
esac



############################################################
#                  ZAKONCZENIE DZIALANIA                   #
############################################################
echo
tput bold; tput smso;  echo "###########################################################"; tput sgr0
tput bold;  echo "Zakończono!"; tput sgr0
tput bold; tput smso;  echo "###########################################################"; tput sgr0

# To jest juz koniec
