#!/usr/bin/ bash

cd ~/

mv ~/dotfiles ~/.dotfiles

source ./.dotfiles/bin/makes.sh
source ./.dotfiles/bin/installs.sh
source ./.dotfiles/bin/ubuntu.sh
source ./.dotfiles/bin/backup.sh
source ./.dotfiles/bin/clean.sh
source ./.dotfiles/bin/symlinks.sh

source ./.zshrc
