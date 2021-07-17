#!/bin/bash

sudo apt-get update
sudo apt-get upgrade -y
sudo apt-get --purge autoremove -y
sudo apt-get autoclean

for repo in ppa:git-core/ppa ppa:lyzardking/ubuntu-make ppa:ubuntu-toolchain-r/test ppa:umang/indicator-stickynotes ppa:qbittorrent-team/qbittorrent-stable ppa:boltgolt/howdy
do
	sudo add-apt-repository -y $repo
done
sudo apt update && sudo apt upgrade -y

sudo rm /etc/apt/preferences.d/nosnap.pref
sudo apt update
sudo apt install gdebi wget curl dpkg snapd zip unzip v4l-utils net-tools software-properties-common build-essential flatpak vlc vlc-plugin-access-extra libbluray-bdj libdvdcss2 git-all ubuntu-make gcc-7 g++-7 gcc-8 g++-8 gcc-9 g++-9 nodejs npm default-jre default-jdk mongodb gimp gimp-cbmplugs gimp-dcraw gimp-dds gimp-gap gimp-gluas gimp-gmic gimp-gutenprint gimp-normalmap gimp-texturize indicator-stickynotes qbittorrent howdy shotwell rhythmbox flameshot cheese baobab usb-creator-gtk dconf-editor okular -y
sudo dpkg --configure -a
sudo update-alternatives --install /usr/bin/gcc gcc /usr/bin/gcc-9 90 --slave /usr/bin/g++ g++ /usr/bin/g++-9 --slave /usr/bin/gcov gcov /usr/bin/gcov-9
sudo update-alternatives --install /usr/bin/gcc gcc /usr/bin/gcc-8 80 --slave /usr/bin/g++ g++ /usr/bin/g++-8 --slave /usr/bin/gcov gcov /usr/bin/gcov-8
sudo update-alternatives --install /usr/bin/gcc gcc /usr/bin/gcc-7 70 --slave /usr/bin/g++ g++ /usr/bin/g++-7 --slave /usr/bin/gcov gcov /usr/bin/gcov-7
sudo update-alternatives --config gcc
sudo systemctl stop mongodb
sudo systemctl start mongodb
sudo systemctl enable mongodb

wget https://dl.google.com/linux/direct/google-chrome-stable_current_amd64.deb https://download.teamviewer.com/download/linux/teamviewer_amd64.deb https://github.com/subhra74/xdm/releases/download/7.2.11/xdm-setup-7.2.11.tar.xz https://github.com/ugcoder/avro/releases/download/v2.0/avro_2.0-1_all.deb
sudo apt install ./google-chrome-stable_current_amd64.deb ./teamviewer_amd64.deb -y
tar -xf xdm-setup-7.2.11.tar.xz
sudo ./install.sh	
sudo dpkg -i avro_2.0-1_all.deb
sudo apt-get install -fy
ibus restart


sudo apt autoremove && sudo apt autoclean
sudo apt update && sudo apt upgrade -y
for snaps in kotlin code intellij-idea-community pycharm-professional webstorm android-studio
do
	sudo snap install $snaps --classic
done

for repo in formulahendry.code-runner ms-vscode.cpptools austin.code-gnu-global esbenp.prettier-vscode msjsdiag.debugger-for-chrome ms-python.python redhat.java dbaeumer.vscode-eslint vscode-icons-team.vscode-icons VisualStudioExptTeam.vscodeintellicode
do
	code --install-extension $repo --force
done
sudo apt-get install -y adb qemu-kvm libvirt-clients libvirt-daemon-system bridge-utils virt-manager
sudo adduser noob libvirt
sudo adduser noob libvirt-qemu

sudo snap install zoom-client spotify snap-store

echo 'deb http://download.opensuse.org/repositories/home:/manuelschneid3r/xUbuntu_20.04/ /' | sudo tee /etc/apt/sources.list.d/home:manuelschneid3r.list
curl -fsSL https://download.opensuse.org/repositories/home:manuelschneid3r/xUbuntu_20.04/Release.key | gpg --dearmor | sudo tee /etc/apt/trusted.gpg.d/home:manuelschneid3r.gpg > /dev/null
sudo apt update
sudo apt install albert -y

sudo apt autoclean
sudo apt autoremove -y
