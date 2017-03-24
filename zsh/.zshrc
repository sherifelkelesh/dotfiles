# path to your oh-my-zsh installation.
export ZSH=$HOME/.oh-my-zsh

# ZSH configuration
ZSH_THEME="dracula"
ZSH_CUSTOM="$HOME/.custom"
unsetopt correct_all

plugins=(zsh-syntax-highlighting z gitfast git-extras git-tools node npm zsh-wakatime)

# dotfiles configuration
export DOTFILES="$HOME/.dotfiles"
export DOTFILES_BIN="$DOTFILES/bin"
export DOTFILES_ZSH="$DOTFILES/zsh"
export DOTFILES_GIT="$DOTFILES/git"

# user configuration
source $ZSH/oh-my-zsh.sh
source $DOTFILES_ZSH/.bootstrap

export NVM_DIR="$HOME/.nvm"
[ -s "$NVM_DIR/nvm.sh" ] && \. "$NVM_DIR/nvm.sh"  # This loads nvm
