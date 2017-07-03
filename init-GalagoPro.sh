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

sudo apt-get install cabextract
sh winetricks allfonts
sh winetricks fontsmooth-rgb

# resolution
# https://ubuntuforums.org/showthread.php?t=1966900
xrandr --newmode "1600x900_60.00" 118.25 1600 1696 1856 2112 900 903 908 934 -hsync +vsync
xrandr --addmode eDP-1 "1600x900_60.00"
xrandr --output eDP-1 --mode "1600x900_60.00" 
