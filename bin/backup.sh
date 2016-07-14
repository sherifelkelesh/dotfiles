#!/bin/sh

#
# Backup
# --------------------------------------------------------------------

rm -rf ~/.backup

mkdir -p ~/.backup
mkdir -p ~/.backup/zsh
mkdir -p ~/.backup/git
mkdir -p ~/.backup/vim
mkdir -p ~/.backup/ubuntu

# ZSH
cp ~/.zshrc ~/.backup/zsh
cp ~/.custom/.aliases ~/.backup/zsh
cp ~/.custom/.config ~/.backup/zsh
cp ~/.custom/.functions ~/.backup/zsh

# Git
cp ~/.gitconfig ~/.backup/git
cp ~/.gitignore_global ~/.backup/git
cp ~/.gitmessage ~/.backup/git

# Vim
cp ~/.vimrc ~/.backup/vim

# Sublime
cp -R ~/.config/sublime-text-3/Packages/User ~/.backup

# Autostartup files
cp -R ~/.config/autostart ~/.backup/ubuntu
