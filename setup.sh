#
# Copyright 2016, All Rights Reserved.
#
#
# @author Iago Dahlem Lorensini <iagodahlemlorensini@gmail.com>
#
# --------------------------------------------------------------------

# Config
HOME="/home/iago"
DOTFILES_REPO="git@github.com:iagodahlem/dotfiles.git"
INSTALL="sudo apt-get install"

echo "Installing dependencies ..."
$INSTALL git
$INSTALL curl
curl -o- https://raw.githubusercontent.com/creationix/nvm/v0.31.0/install.sh | bash
nvm install node
nvm use node

echo "Enter in home ..."
cd $HOME

echo "Cloning dotfiles repo ..."
git clone $DOTFILES_REPO

echo "Renaming to .dotfiles ..."
mv dotfiles .dotfiles

echo "Enter in .dotfiles ..."
cd .dotfiles

echo "Installing NPM dependencies ..."
npm install

echo "Running Grunt setup task"
grunt setup
