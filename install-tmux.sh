#!/bin/bash -xeu

sudo apt-get install -y automake libevent-dev libncurses5-dev xsel

if [ ! -d tmux ]; then
    git clone https://github.com/tmux/tmux.git ~/.cache/tmux
fi

cd ~/.cache/tmux

# checkout latest tag
#git checkout 2.2
git checkout $(git tag | sort -V | tail -n 1)

sh autogen.sh

./configure

make -j4

sudo make install
