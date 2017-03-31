#!/bin/bash

source ${BASH_SOURCE%/*}/index.sh

logBanner

log "Updating Dotfiles..."
cd "$DOTFILES"
if git pull
then
  log "Dotfiles has been updated."
  source ~/.zshrc
else
  log "There was an error updating."
fi
cd - &> /dev/null
