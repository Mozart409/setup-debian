#!/usr/bin/env bash

if [ `whoami` != root ]; then
    echo -e "Please run this script as root or using \e[31msudo"
    echo  
    exit
fi

do_space(){
    echo -e "\n \n"
}


do_space
echo "Updating packages"
apt update -y
do_space
echo "Installing new packages"
apt install -y fonts-firacode git zsh curl wget 

do_space
echo "installing Github Desktop"
wget -qO - https://packagecloud.io/shiftkey/desktop/gpgkey | tee /etc/apt/trusted.gpg.d/shiftkey-desktop.asc > /dev/null
sh -c 'echo "deb [arch=amd64] https://packagecloud.io/shiftkey/desktop/any/ any main" > /etc/apt/sources.list.d/packagecloud-shiftky-desktop.list'
apt-get update
apt install github-desktop -y
