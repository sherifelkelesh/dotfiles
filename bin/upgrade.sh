#!/bin/bash

source ./utils/index.sh

msg_banner

msg "Updating Dotfiles..."
cd "$DOTFILES"
if git pull
then
  msg "Dotfiles has been updated."
  source ~/.zshrc
else
  msg "There was an error updating."
fi
cd - &> /dev/null
