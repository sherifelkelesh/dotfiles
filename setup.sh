#!/bin/sh

source ~/.dotfiles/utils/index.sh

msg_banner

msg "creating default directories"
source ~/.dotfiles/scripts/makes.sh
msg_ok "makes"

msg "cleaning existing files"
source ~/.dotfiles/scripts/clean.sh
msg_ok "cleans"

msg "creating symlinks"
source ~/.dotfiles/scripts/symlinks.sh
msg_ok "synlinks"

msg "reloading zsh"
source ~/.zshrc
msg_ok "zsh"
