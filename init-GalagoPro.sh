#!/bin/sh

setxkbmap -option "ctrl:swapcaps"
sed -ie 's/TimeoutStartSec=5min/TimeoutStartSec=5sec/g' /etc/systemd/system/network-online.target.wants/networking.service
sudo chsh -s /bin/zsh



# wine
sudo dpkg --add-architecture i386 
wget -nc https://dl.winehq.org/wine-builds/Release.key
sudo apt-key add Release.key
sudo apt-add-repository https://dl.winehq.org/wine-builds/ubuntu/
sudo apt-get update
sudo apt-get install -y --install-recommends winehq-stable

sudo apt-get install flex bison
sudo apt-get install -y gcc-multilib libntlm0 libx11-dev:i386 libfreetype6-dev:i386
sudo apt-get install -y wine.i686

sudo apt-get install cabextract
sh winetricks allfonts
sh winetricks fontsmooth-rgb

# safe rm
cd ~/enx-init/DL/ \
  && git clone https://github.com/andreafrancia/trash-cli.git \
  && cd ~/enx-init/DL/trash-cli/ \
  && sudo python setup.py install
