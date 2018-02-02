#!/bin/sh
sudo apt-get install -y libxss-dev libxdg-basedir-dev
git clone https://github.com/dunst-project/dunst.git
cd dunst
#sudo make
sudo make install
