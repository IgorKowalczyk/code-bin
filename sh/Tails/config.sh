############################################################
#             KONFIGUROWANIE WYGLADU SYSTEMU               #
############################################################
echo
tput bold; tput smso;  echo "###########################################################"; tput sgr0
tput bold; echo "Konfigurowanie wygladu systemu..."; tput sgr0
tput bold; tput smso;  echo "###########################################################"; tput sgr0
echo
echo -n "Konfigurowanie trwa... "
gsettings set org.gnome.desktop.background picture-uri file:///usr/share/desktop-base/joy-inksplat-theme/wallpaper/gnome-background.xml
gsettings set org.gnome.desktop.interface gtk-theme 'Yaru-dark'
sudo timedatectl set-timezone Europe/Warsaw
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
  sudo apt install gnome-tweak-tool -y
  sudo apt-get update --fix-missing
 ;;
 n)
  echo "Pomijam..."
 ;;
 *)
  echo "Nierozpoznana reakcja ($tweaks)!"
 ;;
esac
