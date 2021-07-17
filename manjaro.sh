#!/bin/bash
sudo pacman -Syyuu

sudo pacman -Syu --noconfirm yay base-devel git wget curl v4l-utils snapd pamac vlc jre11-openjdk jdk11-openjdk java11-openjfx jre8-openjdk jdk8-openjdk java8-openjfx gcc nodejs npm gimp flameshot okular qbittorrent kdenlive screenfetch
sudo systemctl enable --now snapd.socket
sudo ln -s /var/lib/snapd/snap /snap
git config --global user.name "S M Al Hasib"
git config --global user.email "smalreal14@gmail.com"
sudo npm i -g tldr

echo Installing Google Chrome
yay -Syu google-chrome teamviewer jdk kotlin indicator-stickynotes android-studio intellij-idea-community-edition webstorm

sudo pacman -Syu --noconfirm chrome-gnome-shell

wget https://github.com/subhra74/xdm/releases/download/7.2.11/xdm-setup-7.2.11.tar.xz
tar -xf xdm-setup-7.2.11.tar.xz
sudo ./install.sh

#sudo pacman -Syu --noconfirm jre-openjdk jdk-openjdk java-openjfx

yay -Syu --noconfirm mongodb

sudo snap install --classic code
code --install-extension formulahendry.code-runner --force
code --install-extension ms-vscode.cpptools --force
code --install-extension austin.code-gnu-global --force
code --install-extension esbenp.prettier-vscode --force
code --install-extension msjsdiag.debugger-for-chrome --force
code --install-extension ms-python.python --force
code --install-extension redhat.java --force
code --install-extension dbaeumer.vscode-eslint --force
code --install-extension vscode-icons-team.vscode-icons --force
code --install-extension VisualStudioExptTeam.vscodeintellicode --force

sudo snap install pycharm-professional --classic

yay -Syu --noconfirm howdy

sudo snap install intellij-idea-community --classic
