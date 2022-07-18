#!/usr/bin/env bash

readonly DOTS="$HOME/.dotfiles"
readonly VSCODE_CONFIG="$HOME/Library/Application Support/Code/User"

# Ask for the administrator password upfront
sudo -v

# Install Homebrew
if test ! $(which brew)
then
  echo " → Installing Homebrew for package management..."
  ruby -e "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/master/install)"
fi
brew update
brew upgrade

echo "→ Installing packages using Homebrew..."
brew install $(cat brew/brewfile|grep -v "#")
