#!/bin/bash

sudo apt-get update
sudo apt-get -y upgrade
sudo apt-get --purge -y autoremove
sudo apt-get autoclean

for repo in ppa:git-core/ppa ppa:qbittorrent-team/qbittorrent-stable
do
	sudo add-apt-repository -y $repo
done

sudo apt update && sudo apt -y upgrade

sudo apt install -y gdebi wget curl dpkg zip unzip v4l-utils apt-transport-https ubuntu-restricted-extras chrome-gnome-shell gnome-tweak-tool vlc vlc-plugin-access-extra libbluray-bdj git-all nodejs npm default-jre default-jdk qbittorrent dconf-editor okular telegram-desktop screenfetch neofetch lolcat code vim htop cmatrix shotwell zsh tldr

tldr -u
git config --global user.name "S M Al Hasib"
git config --global user.email "smalreal14@gmail.com"
sh -c "$(curl -fsSL https://raw.githubusercontent.com/ohmyzsh/ohmyzsh/master/tools/install.sh)"
sh -c "$(curl -fsSL https://starship.rs/install.sh)"
git clone https://github.com/zsh-users/zsh-syntax-highlighting.git ${ZSH_CUSTOM:-~/.oh-my-zsh/custom}/plugins/zsh-syntax-highlighting
git clone https://github.com/zsh-users/zsh-autosuggestions ${ZSH_CUSTOM:-~/.oh-my-zsh/custom}/plugins/zsh-autosuggestions


wget https://dl.google.com/linux/direct/google-chrome-stable_current_amd64.deb https://download.teamviewer.com/download/linux/teamviewer_amd64.deb https://github.com/ugcoder/avro/releases/download/v2.0/avro_2.0-1_all.deb
sudo apt install -y ./google-chrome-stable_current_amd64.deb ./teamviewer_amd64.deb
sudo dpkg -i avro_2.0-1_all.deb
sudo apt-get install -fy
ibus restart

sudo apt update && sudo apt -y upgrade
flatpak remote-add --user --if-not-exists flathub https://flathub.org/repo/flathub.flatpakrepo
for flats in us.zoom.Zoom com.google.AndroidStudio com.jetbrains.IntelliJ-IDEA-Community com.microsoft.Teams com.discordapp.Discord; do
	flatpak install -y --noninteractive flathub $flats
done

sudo apt-get install -y adb qemu-kvm libvirt-clients libvirt-daemon-system bridge-utils virt-manager
sudo adduser smah libvirt
sudo adduser smah libvirt-qemu

sudo apt remove kdeconnect
sudo apt autoclean
sudo apt -y autoremove

gsettings set org.gnome.shell.extensions.dash-to-dock click-action 'minimize'
chsh -s $(which zsh)
touch ~/Templates/"New Text.txt"
touch ~/Templates/"New Script.sh"
