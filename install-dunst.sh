#!/bin/sh
ghq get https://github.com/dunst-project/dunst.git
cd .ghq/github.com/dunst-project/dunst
#sudo make
sudo make install
