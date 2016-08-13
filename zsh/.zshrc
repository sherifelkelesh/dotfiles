#
# ZSH Config
# ---------------------------------------------------------------------

# Path to your oh-my-zsh installation.
export ZSH=$HOME/.oh-my-zsh

# ZSH Configuration
ZSH_THEME="dracula"
ZSH_CUSTOM="$HOME/.custom"
ENABLE_CORRECTION="true"

plugins=(zsh-syntax-highlighting z gitfast git-extras git-tools node npm zsh-wakatime)

# Dotfiles configuration
DOTFILES="$HOME/.dotfiles"
DOTFILES_BIN="$DOTFILES/bin"
DOTFILES_ZSH="$DOTFILES/zsh"

# User configuration
source $ZSH/oh-my-zsh.sh
source $DOTFILES_ZSH/.bootstrap
