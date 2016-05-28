#!/usr/bin/ bash

#
# Node && NPM
# --------------------------------------------------------------------

# NVM
curl -o- https://raw.githubusercontent.com/creationix/nvm/v0.31.0/install.sh | bash
nvm install node
nvm use node

# Npm
npm i -g npm
npm i -g grunt-cli
npm i -g gulp-cli
npm i -g trash-cli
npm i -g empty-trash-cli
npm i -g yo
npm i -g jshint
npm i -g csscomb
npm i -g babel
npm i -g bower
