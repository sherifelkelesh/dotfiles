# path to your oh-my-zsh installation.
export ZSH=$HOME/.oh-my-zsh

# ZSH configuration
ZSH_THEME="dracula"
ZSH_CUSTOM="$HOME/.custom"

plugins=(
  docker                    # docker autocompletion
  gem                       # gem autocompletion
  gitfast                   # git faster autocompletion
  npm                       # npm autocompletion
  yarn                      # yarn autocompletion
  z                         # `z` navigator
  zsh-syntax-highlighting   # syntax highlighting for zsh
)

# config
export DOTFILES="$HOME/.dotfiles"
export DOTFILES_BIN="$DOTFILES/bin"
export DOTFILES_ZSH="$DOTFILES/zsh"
export DOTFILES_GIT="$DOTFILES/git"

# files
source $ZSH/oh-my-zsh.sh
source $DOTFILES_ZSH/.bootstrap
