#!/bin/bash

#Removing Softwares I don't like
sudo apt remove -y libreoffice-common libreoffice-draw libreoffice-calc libreoffice-math libreoffice-writer libreoffice-impress firefox geary

#Updating mirror
sudo sed -i 's+us.archive.ubuntu.com/ubuntu+mirror.xeonbd.com/ubuntu-archive+g' /etc/apt/sources.list.d/system.sources

sudo apt update && sudo apt -y upgrade
sudo apt --purge -y autoremove
sudo apt autoclean

for repo in ppa:git-core/ppa ppa:qbittorrent-team/qbittorrent-stable
do
	sudo add-apt-repository -y $repo
done
sudo apt update && sudo apt -y upgrade

#Installing necessary softwares from apt
sudo apt install -y gdebi wget curl dpkg zip unzip v4l-utils apt-transport-https ubuntu-restricted-extras chrome-gnome-shell gnome-tweak-tool vlc vlc-plugin-access-extra libbluray-bdj git-all default-jre default-jdk qbittorrent dconf-editor okular telegram-desktop screenfetch neofetch lolcat code vim htop cmatrix shotwell zsh tldr xclip xsel thunderbird adb qemu-kvm libvirt-clients libvirt-daemon-system bridge-utils virt-manager ssh

#Necessary updates
tldr -u
git config --global user.name "S M Al Hasib"
git config --global user.email "smalreal14@gmail.com"
git config --global init.defaultBranch main
sudo adduser smah libvirt
sudo adduser smah libvirt-qemu

#Configuring ZSH shell
sh -c "$(curl -fsSL https://raw.githubusercontent.com/ohmyzsh/ohmyzsh/master/tools/install.sh)"
sh -c "$(curl -fsSL https://starship.rs/install.sh)"
git clone https://github.com/zsh-users/zsh-syntax-highlighting.git ${ZSH_CUSTOM:-~/.oh-my-zsh/custom}/plugins/zsh-syntax-highlighting
git clone https://github.com/zsh-users/zsh-autosuggestions ${ZSH_CUSTOM:-~/.oh-my-zsh/custom}/plugins/zsh-autosuggestions
git clone https://github.com/agkozak/zsh-z ${ZSH_CUSTOM:-~/.oh-my-zsh/custom}/plugins/zsh-z
wget --output-document .zshrc https://raw.githubusercontent.com/Hasib718/Linux-Scripts/main/zshrc.txt

#Instaaling Chrome, TeamViewer, Avro
wget https://dl.google.com/linux/direct/google-chrome-stable_current_amd64.deb https://download.teamviewer.com/download/linux/teamviewer_amd64.deb https://github.com/ugcoder/avro/releases/download/v2.0/avro_2.0-1_all.deb
sudo apt install -y ./google-chrome-stable_current_amd64.deb ./teamviewer_amd64.deb
sudo dpkg -i avro_2.0-1_all.deb
sudo apt-get install -fy
ibus restart

#Installing Zoom, Android Studio, Intellij, Discord, Microsoft teams
sudo apt update && sudo apt -y upgrade
flatpak remote-add --user --if-not-exists flathub https://flathub.org/repo/flathub.flatpakrepo
for flats in us.zoom.Zoom com.google.AndroidStudio com.jetbrains.IntelliJ-IDEA-Community com.microsoft.Teams com.discordapp.Discord
do
	flatpak install -y flathub $flats
done

# Installing Gnome Shell extension
git clone https://github.com/0ry0n/Resource_Monitor
cd Resource_Monitor
mv Resource_Monitor@Ory0n ~/.local/share/gnome-shell/extensions/Resource_Monitor@Ory0n
gnome-extensions enable Resource_Monitor@Ory0n

sudo apt remove -y kdeconnect
sudo apt autoclean
sudo apt -y autoremove

gsettings set org.gnome.shell.extensions.dash-to-dock click-action 'minimize'
chsh -s $(which zsh)
touch ~/Templates/"New Text.txt"
touch ~/Templates/"New Script.sh"

#Installing NVM
curl -o- https://raw.githubusercontent.com/nvm-sh/nvm/v0.39.1/install.sh | bash
source ~/.zshrc
