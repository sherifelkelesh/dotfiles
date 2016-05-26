#!/usr/bin/ bash

cd ~/

mv ~/dotfiles ~/.dotfiles

source ./.dotfiles/scripts/makes.sh
source ./.dotfiles/scripts/installs.sh
source ./.dotfiles/scripts/ubuntu.sh
source ./.dotfiles/scripts/backup.sh
source ./.dotfiles/scripts/clean.sh
source ./.dotfiles/scripts/symlinks.sh

source ./.zshrc
