#!/bin/sh

sudo apt install -y \
  git \
  lightdm \
  lightdm-gtk-greeter \
  lightdm-gtk-greeter-settings \
  i3 \
  wicd \
  ubuntu-drivers-common \
  mesa-utils \
  mesa-utils-extra \
  compton \
  xorg \
  xserver-xorg \
  thunar \
  lshw \
  intel-microcode \
  volumeicon-alsa

# % sudo sh ./install-i3wm.sh
#/usr/lib/apt/apt-helper download-file http://debian.sur5r.net/i3/pool/main/s/sur5r-keyring/sur5r-keyring_2017.01.02_all.deb keyring.deb SHA256:4c3c6685b1181d83efe3a479c5ae38a2a44e23add55e16a328b8c8560bf05e5f \
#  && sudo apt install ./keyring.deb \
#  && sudo echo "deb http://debian.sur5r.net/i3/ $(grep '^DISTRIB_CODENAME=' /etc/lsb-release | cut -f2 -d=) universe" >> /etc/apt/sources.list.d/sur5r-i3.list \
#  && sudo apt update \
#  && sudo apt install i3