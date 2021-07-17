#!/bin/bash

sudo apt-get update
sudo apt-get -y upgrade
sudo apt-get --purge -y autoremove
sudo apt-get autoclean

for repo in ppa:git-core/ppa ppa:lyzardking/ubuntu-make ppa:ubuntu-toolchain-r/test  ppa:qbittorrent-team/qbittorrent-stable 
do
	sudo add-apt-repository -y $repo
done

sudo apt update && sudo apt -y upgrade

sudo apt install -y gdebi wget curl dpkg snapd zip unzip v4l-utils net-tools apt-transport-https ubuntu-restricted-extras software-properties-common build-essential flatpak gnome-software-plugin-flatpak chrome-gnome-shell gnome-tweak-tool vlc vlc-plugin-access-extra libbluray-bdj git-all ubuntu-make nodejs npm default-jre default-jdk qbittorrent dconf-editor okular telegram-desktop screenfetch neofetch lolcat vim htop cmatrix
sudo flatpak remote-add --if-not-exists flathub https://flathub.org/repo/flathub.flatpakrepo
sudo dpkg --configure -a

git config --global user.name "S M Al Hasib"
git config --global user.email "smalreal14@gmail.com"

wget https://dl.google.com/linux/direct/google-chrome-stable_current_amd64.deb https://download.teamviewer.com/download/linux/teamviewer_amd64.deb https://github.com/ugcoder/avro/releases/download/v2.0/avro_2.0-1_all.deb
sudo apt install -y ./google-chrome-stable_current_amd64.deb ./teamviewer_amd64.deb	
sudo dpkg -i avro_2.0-1_all.deb
sudo apt-get install -fy
ibus restart


sudo apt autoremove && sudo apt autoclean
sudo apt update && sudo apt -y upgrade
for flats in us.zoom.Zoom com.google.AndroidStudio com.jetbrains.IntelliJ-IDEA-Community com.microsoft.Teams
do
	sudo flatpak install flathub $flats
done

sudo apt-get install -y adb qemu-kvm libvirt-clients libvirt-daemon-system bridge-utils virt-manager
sudo adduser smah libvirt
sudo adduser smah libvirt-qemu

sudo apt remove kdeconnect
sudo apt autoclean
sudo apt -y autoremove

echo setting Dash
gsettings set org.gnome.shell.extensions.dash-to-dock click-action 'minimize'
gsettings set org.gnome.shell.extensions.dash-to-dock autohide 'true'
gsettings set org.gnome.shell.extensions.dash-to-dock activate-single-window 'true'
gsettings set org.gnome.shell.extensions.dash-to-dock animate-show-apps 'true'
gsettings set org.gnome.shell.extensions.dash-to-dock apply-custom-theme 'false'
gsettings set org.gnome.shell.extensions.dash-to-dock apply-glossy-effect 'true'
gsettings set org.gnome.shell.extensions.dash-to-dock autohide-in-fullscreen 'true'
gsettings set org.gnome.shell.extensions.dash-to-dock background-color '#ffffff'
gsettings set org.gnome.shell.extensions.dash-to-dock background-opacity '0'
gsettings set org.gnome.shell.extensions.dash-to-dock bolt-support 'true'
gsettings set org.gnome.shell.extensions.dash-to-dock custom-background-color 'false'
gsettings set org.gnome.shell.extensions.dash-to-dock custom-alphas 'false'
gsettings set org.gnome.shell.extensions.dash-to-dock custom-theme-customize-running-dots 'true'
gsettings set org.gnome.shell.extensions.dash-to-dock custom-theme-running-dots-border-color '#e95420'
gsettings set org.gnome.shell.extensions.dash-to-dock custom-theme-running-dots-border-width '0'
gsettings set org.gnome.shell.extensions.dash-to-dock custom-theme-running-dots-color '#e95420'
gsettings set org.gnome.shell.extensions.dash-to-dock custom-theme-shrink 'false'
gsettings set org.gnome.shell.extensions.dash-to-dock dash-max-icon-size '48'
gsettings set org.gnome.shell.extensions.dash-to-dock dock-fixed 'false'
gsettings set org.gnome.shell.extensions.dash-to-dock extend-height 'true'
gsettings set org.gnome.shell.extensions.dash-to-dock force-straight-corner 'true'
gsettings set org.gnome.shell.extensions.dash-to-dock running-indicator-style 'DASHES'
gsettings set org.gnome.shell.extensions.dash-to-dock show-apps-at-top 'false'
gsettings set org.gnome.shell.extensions.dash-to-dock show-mounts 'false'
gsettings set org.gnome.shell.extensions.dash-to-dock show-trash 'false'
gsettings set org.gnome.shell.extensions.dash-to-dock transparency-mode 'FIXED'

echo Settings Desktop
gsettings set org.gnome.shell.extensions.desktop-icons show-home 'false'
gsettings set org.gnome.shell.extensions.desktop-icons show-trash 'false'
