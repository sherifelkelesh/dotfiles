#!/bin/bash

# ZSH
ln -s "$DOTFILES_PATH/zsh/.zshrc" "$HOME/.zshrc"

# Git
ln -s "$DOTFILES_PATH/git/.gitconfig" "$HOME/.gitconfig"
ln -s "$DOTFILES_PATH/git/.gitignore_global" "$HOME/.gitignore_global"
ln -s "$DOTFILES_PATH/git/.gitmessage" "$HOME/.gitmessage"

# Sublime
ln -s "$DOTFILES_PATH/subl/User" "$HOME/.config/sublime-text-3/Packages/User"

# tmux
ln -s "$DOTFILES_PATH/tmux/.tmux.conf" "$HOME/.tmux.conf"

# Vim
ln -s "$DOTFILES_PATH/vim/.vimrc" "$HOME/.vimrc"

#Ubuntu
ln -s "$DOTFILES_PATH/ubuntu/autostart" "$HOME/.config/autostart"
