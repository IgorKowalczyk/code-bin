############################################################
#             KONFIGUROWANIE WYGLADU SYSTEMU               #
############################################################
echo
tput bold; tput smso;  echo "###########################################################"; tput sgr0
tput bold; echo "Konfigurowanie wygladu systemu..."; tput sgr0
tput bold; tput smso;  echo "###########################################################"; tput sgr0
echo
echo -n "Konfigurowanie trwa... "
sudo dnf --assumeyes install gnome-tweak-tool
sudo dnf --assumeyes install chrome-gnome-shell
gsettings set org.gnome.desktop.interface gtk-theme 'Adwaita-dark'
gsettings set org.gnome.desktop.calendar show-weekdate true
gsettings set org.gnome.desktop.interface show-battery-percentage true
gsettings set org.gnome.desktop.interface clock-show-seconds true
gsettings set org.gnome.desktop.background show-desktop-icons true

sudo dnf --assumeyes install gnome-shell-extension-dash-to-dock
# sudo dnf install gnome-shell-extension-dash-to-dock.noarch
sudo reboot /run/media/liveuser/Pliki/Linux/Fedora/config.sh
#busctl --user call org.gnome.Shell /org/gnome/Shell org.gnome.Shell Eval s 'Meta.restart("Restarting…")'
gnome-extensions enable dash-to-dock@micxgx.gmail.com


sudo systemctl stop bluetooth.service -f
sudo timedatectl set-timezone Europe/Warsaw
localectl set-keymap pl
localectl set-x11-keymap pl
echo
tput bold; echo -n "Konfigurowac czas? (y/n) "; tput sgr0
while :
do
 read czas
 case $czas in
  y)
   sudo dnf --assumeyes install ntp
  ;;
  n)
   echo "Pomijam..."
   break
  ;;
  *)
   echo "Nierozpoznana reakcja ($czas)"
   break
  ;;
 esac
done
echo
tput bold; echo -n "Instalowac video/audio? (y/n) "; tput sgr0
while :
do
 read video
 case $video in
  y)
   sudo dnf --assumeyes install https://mirrors.rpmfusion.org/free/fedora/rpmfusion-free-release-$(rpm -E %fedora).noarch.rpm https://mirrors.rpmfusion.org/nonfree/fedora/rpmfusion-nonfree-release-$(rpm -E %fedora).noarch.rpm
   sudo dnf --assumeyes groupupdate multimedia --setop="install_weak_deps=False" --exclude=PackageKit-gstreamer-plugin
   sudo dnf --assumeyes groupupdate sound-and-video
   sudo dnf --assumeyes install rpmfusion-free-release-tainted
   sudo dnf --assumeyes install libdvdcss
   sudo dnf --assumeyes install rpmfusion-nonfree-release-tainted
   sudo dnf --assumeyes install \*-firmware
  ;;
  n)
   echo "Pomijam..."
   break
  ;;
  *)
   echo "Nierozpoznana reakcja ($video)"
   break
  ;;
 esac
done

############################################################
#                  ZAKONCZENIE DZIALANIA                   #
############################################################
echo
tput bold; tput smso;  echo "###########################################################"; tput sgr0
tput bold;  echo "Zakończono!"; tput sgr0
tput bold; tput smso;  echo "###########################################################"; tput sgr0

# To jest juz koniec

