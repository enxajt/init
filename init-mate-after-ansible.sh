#!/bin/sh

# background
convert -size 500x500 xc:black ~/.black.jpg
#export DISPLAY=:0.0
#gsettings set org.mate.background picture-filename ~/.black.jpg
dconf write /org/mate/desktop/background/picture-filename "'$HOME/.black.jpg'"
#sleep 1 && rm ~/.black.jpg

# desktop icon
#gsettings set org.mate.caja.desktop home-icon-visible false
#gsettings set org.mate.caja.desktop volumes-visible false
dconf write /org/mate/caja/desktop/home-icon-visible false
dconf write /org/mate/caja/desktop/volumes-visible false

dconf write /org/mate/panel/toplevels/top/expand false
dconf write /org/mate/panel/toplevels/top/auto-hide true
dconf write /org/mate/panel/toplevels/top/size '21'

dconf write /org/mate/screensaver/lock-enabled false
