############################################################
#             KONFIGUROWANIE WYGLADU SYSTEMU               #
############################################################
echo
tput bold; tput smso;  echo "###########################################################"; tput sgr0
tput bold; echo "Konfigurowanie wygladu systemu..."; tput sgr0
tput bold; tput smso;  echo "###########################################################"; tput sgr0
echo
echo -n "Konfigurowanie trwa... "
lookandfeeltool -a org.kde.breezedark.desktop
sudo apt install qml-module-qt-labs-platform
dbus-send --session --dest=org.kde.plasmashell --type=method_call /PlasmaShell org.kde.PlasmaShell.evaluateScript 'string:
var Desktops = desktops();                                                                                                                       
for (i=0;i<Desktops.length;i++) {
 d = Desktops[i];
 d.wallpaperPlugin = "org.kde.image";
 d.currentConfigGroup = Array("Wallpaper",
  "org.kde.image",
  "General");
 d.writeConfig("Image", "file:///usr/share/wallpapers/DarkestHour/contents/images/2560x1600.jpg");
}'
# sudo cp /media/kubuntu/Pliki/Linux/Kubuntu/Programy/Plasma/plasma-org.kde.plasma.desktop-appletsrc /home/kubuntu/.config
sudo update-locale LANG=pl_PL.UTF-8 LANGUAGE=pl_PL.UTF-8 LC_MESSAGES=pl_PL.UTF-8 LC_COLLATE=pl_PL.UTF-8 LC_CTYPE=pl_PL.UTF-8
sudo setxkbmap pl
sudo systemctl stop bluetooth.service -f
echo "Gotowe"



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
  sudo apt install wine64 -y
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
  sudo apt install g++ -y
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
  sudo apt install default-jre -y
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
  sudo apt install flatpak -y
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
#             INTEGROWANIE Z PRZEGLADARKA                  #
############################################################
echo
tput bold; tput smso;  echo "###########################################################"; tput sgr0
tput bold; echo "Integracja z przegladarka..."; tput sgr0
tput bold; tput smso;  echo "###########################################################"; tput sgr0
echo
echo -n "Zainstalowac Dodatek 'Plasma Integration' do Firefox? (y/n) "
read adb
case $adb in
 y)
  URL_FIREFOX="https://addons.mozilla.org/firefox/downloads/file/3619363/plasma_integration-1.7.6-fx.xpi"
  PATH_FIREFOX="/usr/lib/firefox-addons/extensions"
  sudo wget -O plasma.xpi $URL_FIREFOX
  sudo mv plasma.xpi "$PATH_FIREFOX"
  firefox file://$PATH_FIREFOX/plasma.xpi
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
