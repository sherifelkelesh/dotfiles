#!/bin/sh

#
# Upgrade
# --------------------------------------------------------------------

echo "Updating Dotfiles..."
cd "$DOTFILES"
if git pull
then
  echo "Dotfiles has been updated."
  source ~/.zshrc
else
  echo "There was an error updating."
fi
cd - &> /dev/null
