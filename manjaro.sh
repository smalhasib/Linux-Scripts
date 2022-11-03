#!/usr/bin/zsh
echo 'Installing necessary packages from pacman repo'
sudo pacman -Syu --noconfirm yay base-devel nodejs lolcat screenfetch neofetch simplescreenrecorder cmatrix freeglut glfw glew jdk-openjdk qbittorrent vlc vim xclip kdenlive tldr qemu virt-manager virt-viewer dnsmasq vde2 bridge-utils openbsd-netcat cmake ninja translate-shell discord npm
sudo pacman -S ebtables iptables libguestfs

echo 'tweaks and manuals'
sudo systemctl enable libvirtd.service
sudo systemctl start libvirtd.service
sudo sed -i '/unix_sock_group/s/^#//' /etc/libvirt/libvirtd.conf
sudo sed -i '/unix_sock_rw_perms/s/^#//' /etc/libvirt/libvirtd.conf
sudo usermod -a -G libvirt $(whoami)
newgrp libvirt
sudo systemctl restart libvirtd.service
curl -s https://cht.sh/:cht.sh | sudo tee /usr/local/bin/cht.sh && sudo chmod +x /usr/local/bin/cht.sh
git config --global user.name "S M Al Hasib"
git config --global user.email "alhasibsm@gmail.com"
tldr -u
echo -e "LABEL=Work /mnt/Work auto nosuid,nodev,nofail,x-gvfs-show 0 0\nLABEL=Entertainment /mnt/Entertainment auto nosuid,nodev,nofail,x-gvfs-show 0 0\nLABEL=Whatever /mnt/Whatever auto nosuid,nodev,nofail,x-gvfs-show 0 0" | sudo tee -a /etc/fstab > /dev/null
echo -e 'alias ban='\''trans en:bn'\' | tee -a .zshrc > /dev/null

echo 'Installing AUR repo2'
for package in google-chrome teamviewer jetbrains-toolbox zoom teams visual-studio-code-bin ventoy flutter spotify ganache-bin
do
    yay -Syu --noconfirm --answerdiff None --answerclean All package
done

export CHROME_EXECUTABLE=google-chrome-stable
sudo gpasswd -a ${USER} flutterusers

echo 'Clearing cache'
yay -Scc --noconfirm
