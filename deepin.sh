echo updating and upgrading.....
sudo apt-get update
sudo apt-get -y upgrade
sudo apt-get -y autoremove
sudo apt-get autoclean

sudo apt install -y build-essential
sudo apt-get install -y software-properties-common

echo Installing gdebi, wget, curl, dpkg, snap, zip, unzip v4l-utils
sudo apt install -y gdebi wget curl dpkg snapd zip unzip v4l-utils
sudo dpkg --configure -a
sudo apt update && sudo apt -y upgrade
sudo snap install snap-store

echo Installing Google Chrome
wget https://dl.google.com/linux/direct/google-chrome-stable_current_amd64.deb
sudo apt install -y ./google-chrome-stable_current_amd64.deb
sudo apt update && sudo apt -y upgrade

echo Installing DvD support
sudo apt install -y libdvd-pkg
sudo dpkg-reconfigure libdvd-pkg

sudo apt update && sudo apt -y upgrade
echo Installing Flatpak
sudo apt install -y flatpak

sudo apt update && sudo apt -y upgrade
echo Installing VLC
sudo apt install -y vlc
sudo apt install -y vlc-plugin-access-extra libbluray-bdj libdvdcss2

echo Installing Git
sudo add-apt-repository -y ppa:git-core/ppa
sudo apt update && sudo apt -y upgrade
sudo apt install -y git-all
git config --global user.name "S M Al Hasib"
git config --global user.email "smalreal14@gmail.com"

sudo add-apt-repository -y ppa:lyzardking/ubuntu-make
sudo apt update && sudo apt -y upgrade
sudo apt install -y ubuntu-make

echo Installing Teamviewer
wget https://download.teamviewer.com/download/linux/teamviewer_amd64.deb
sudo apt install -y ./teamviewer_amd64.deb

sudo apt update && sudo apt -y upgrade
echo Installing Xdm
wget https://github.com/subhra74/xdm/releases/download/7.2.11/xdm-setup-7.2.11.tar.xz
tar -xf xdm-setup-7.2.11.tar.xz
sudo ./install.sh

sudo apt update && sudo apt -y upgrade
echo Installing Default open source java
sudo apt install -y default-jre
sudo apt install -y default-jdk

echo Installing Kotlin
sudo snap install --classic kotlin

sudo apt update && sudo apt -y upgrade
echo Installing Multiple GCC versions
sudo apt install -y software-properties-common
sudo add-apt-repository -y ppa:ubuntu-toolchain-r/test
sudo apt install -y gcc-7 g++-7 gcc-8 g++-8 gcc-9 g++-9 -y
sudo update-alternatives --install /usr/bin/gcc gcc /usr/bin/gcc-9 90 --slave /usr/bin/g++ g++ /usr/bin/g++-9 --slave /usr/bin/gcov gcov /usr/bin/gcov-9
sudo update-alternatives --install /usr/bin/gcc gcc /usr/bin/gcc-8 80 --slave /usr/bin/g++ g++ /usr/bin/g++-8 --slave /usr/bin/gcov gcov /usr/bin/gcov-8
sudo update-alternatives --install /usr/bin/gcc gcc /usr/bin/gcc-7 70 --slave /usr/bin/g++ g++ /usr/bin/g++-7 --slave /usr/bin/gcov gcov /usr/bin/gcov-7
sudo update-alternatives --config gcc
gcc --version

sudo apt update && sudo apt -y upgrade
echo Installing Nodejs
sudo apt update
sudo apt install -y nodejs npm
nodejs --version

sudo apt update && sudo apt -y upgrade
echo Installing Avro keyboard
wget "https://github.com/ugcoder/avro/releases/download/v2.0/avro_2.0-1_all.deb"	
sudo dpkg -i avro_2.0-1_all.deb
sudo apt-get install -fy
ibus restart

echo Installing MongoDB
sudo apt install -y mongodb
sudo systemctl stop mongodb
sudo systemctl start mongodb
sudo systemctl enable mongodb

echo Installing Gimp
sudo apt update && sudo apt -y upgrade
sudo apt install -y gimp
sudo apt install -y gimp-cbmplugs
sudo apt install -y gimp-dcraw
sudo apt install -y gimp-dds
sudo apt install -y gimp-gap
sudo apt install -y gimp-gluas
sudo apt install -y gimp-gmic
sudo apt install -y gimp-gutenprint
sudo apt install -y gimp-normalmap
sudo apt install -y gimp-texturize

echo Installing Indicator Sticky Notes
sudo add-apt-repository -y ppa:umang/indicator-stickynotes
sudo apt-get update
sudo apt-get install -y indicator-stickynotes

sudo apt autoremove && sudo apt autoclean
sudo apt update && sudo apt -y upgrade
echo Installing VS Code
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

sudo apt update && sudo apt -y upgrade
echo Installing Intelij Pycharm Webstorm
sudo snap install intellij-idea-community --classic
sudo snap install pycharm-professional --classic
sudo snap install webstorm --classic

echo Installing Android Studio
sudo snap install android-studio --classic
sudo apt-get install -y adb
sudo apt install -y qemu-kvm libvirt-clients libvirt-daemon-system bridge-utils virt-manager
sudo adduser smah libvirt
sudo adduser smah libvirt-qemu

echo Installing Zoom Client
sudo snap install zoom-client

echo Installing Qbittorent
sudo add-apt-repository -y ppa:qbittorrent-team/qbittorrent-stable
sudo apt update && sudo apt -y upgrade
sudo apt install -y qbittorrent

echo Installing Spotify
sudo snap install spotify

echo Installing Extra software....
sudo apt-get install -y shotwell rhythmbox flameshot cheese baobab usb-creator-gtk dconf-editor okular

echo Installing Howdy
sudo add-apt-repository -y ppa:boltgolt/howdy
sudo apt update && sudo apt -y upgrade
sudo apt install howdy
sudo dpkg --configure -a

echo Installing Albert
echo 'deb http://download.opensuse.org/repositories/home:/manuelschneid3r/xUbuntu_20.04/ /' | sudo tee /etc/apt/sources.list.d/home:manuelschneid3r.list
curl -fsSL https://download.opensuse.org/repositories/home:manuelschneid3r/xUbuntu_20.04/Release.key | gpg --dearmor | sudo tee /etc/apt/trusted.gpg.d/home:manuelschneid3r.gpg > /dev/null
sudo apt update
sudo apt install -y albert

echo Installing Kdenlive
sudo add-apt-repository -y ppa:kdenlive/kdenlive-stable
sudo apt update
#sudo apt install -y kdenlive

echo finishing
sudo apt autoclean
sudo apt -y autoremove

