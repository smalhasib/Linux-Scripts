echo current version
cat /etc/lsb-release

sudo apt update && sudo apt -y upgrade
sudo apt --purge autoremove

sudo do-release-upgrade
sudo do-release-upgrade -d
