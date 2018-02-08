#!/bin/sh

# npm, nodejs
sudo apt-get update && sudo apt-get upgrade -y && sudo apt-get install -y build-essential nodejs npm
# if npm -v doesn't work, restart shell
npm cache clean
sudo npm install n -g
sudo n stable
sudo ln -sf /usr/local/bin/node /usr/bin/node
sudo apt-get -y purge nodejs npm
npm update

#npm install --global gulp gulp-cli

# check tool for javascript
sudo npm install -g eslint
