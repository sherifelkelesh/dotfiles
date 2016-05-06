#!/usr/bin/ bash

#
# Backup
# --------------------------------------------------------------------

rm -rf ~/.backup

mkdir -p ~/.backup

cp ~/.zshrc ~/.backup/zsh
cp ~/.aliases ~/.backup/zsh
cp ~/.gitconfig ~/.backup
cp ~/.vimrc ~/.backup
cp -R ~/.config/sublime-text-3/Packages/User ~/.backup
cp -R ~/.config/autostart ~/.backup
