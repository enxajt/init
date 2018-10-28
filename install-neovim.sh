#!/bin/sh

#sudo apt-get -y remove --purge vim vim-runtime vim-gnome vim-tiny vim-gui-common
#sudo rm -rf /usr/local/share/vim /usr/bin/vim

sudo apt-get install -y software-properties-common
#sudo add-apt-repository -y ppa:neovim-ppa/unstable
sudo apt-add-repository -y ppa:neovim-ppa/stable
sudo apt-get update
sudo apt-get install -y neovim

sudo apt-get update && sudo apt-get install -y \
  python3-dev python3-pip \
  python-dev python-pip \
  libperl-dev \
  ruby-dev \
  lua5.2 liblua5.2-dev  \
  luajit libluajit-5.1
sudo --set-home pip install --upgrade pip
sudo --set-home pip3 install --upgrade pip3
sudo --set-home pip3 install neovim
pip2 install --user neovim
pip3 install --user neovim

sudo apt autoremove -y

mkdir -p ~/.cache/dein
sudo chmod 777 -R ~/.cache
cd ~/.cache/dein \
  && curl -f https://raw.githubusercontent.com/Shougo/dein.vim/master/bin/installer.sh > installer.sh \
  && sh ./installer.sh ~/.cache/dein
nvim +":silent call dein#install()" +:q
nvim +":silent UpdateRemotePlugins" +:q
#RUN nvim -E -u NONE -S > /dev/null

sudo npm install -g nyaovim
sudo apt-get install -y libatk-adaptor libgail-common
