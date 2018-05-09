# path to your oh-my-zsh installation.
export ZSH=$HOME/.oh-my-zsh

# ZSH configuration
ZSH_THEME="dracula"
ZSH_CUSTOM="$HOME/.custom"

plugins=(
  docker                    # docker autocompletion
  gem                       # gem autocompletion
  git-tools
  gitfast                   # git faster autocompletion
  npm                       # npm autocompletion
  tmux                      # tmux behavior and aliases
  yarn                      # yarn autocompletion
  z                         # `z` navigator
  zsh-syntax-highlighting   # syntax highlighting for zsh
)

# dotfiles configuration
export DOTFILES="$HOME/.dotfiles"
export DOTFILES_BIN="$DOTFILES/bin"
export DOTFILES_ZSH="$DOTFILES/zsh"
export DOTFILES_GIT="$DOTFILES/git"

# user configuration
source $ZSH/oh-my-zsh.sh
source $DOTFILES_ZSH/.bootstrap

# keybindings
setxkbmap -option 'caps:ctrl_modifier'
xcape -e 'Caps_Lock=Escape'

# touchpad things
xinput --set-prop 14 326 1
xinput --set-prop 14 328 0 40
