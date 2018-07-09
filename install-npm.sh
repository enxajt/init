#!/bin/sh

# npm, nodejs
sudo apt-get update && sudo apt-get upgrade -y && sudo apt-get install -y build-essential nodejs npm

# # if npm -v doesn't work, restart shell
# sudo npm install n -g
# sudo n stable
# sudo ln -sf /usr/local/bin/node /usr/bin/node
# sudo apt-get -y purge nodejs npm
# npm update
curl -sL https://deb.nodesource.com/setup_10.x | sudo -E bash -
sudo apt-get install -y nodejs

# check tool for javascript
sudo npm install -g eslint
