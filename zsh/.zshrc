
#### FIG ENV VARIABLES ####
# Please make sure this block is at the start of this file.
[ -s ~/.fig/shell/pre.sh ] && source ~/.fig/shell/pre.sh
#### END FIG ENV VARIABLES ####

# path to your oh-my-zsh installation.
export ZSH=$HOME/.oh-my-zsh

# ZSH configuration
ZSH_THEME="spaceship"
export ZSH_CUSTOM="$HOME/.custom"

plugins=(
  zsh-nvm
  zsh-autosuggestions
  #docker                    # docker autocompletion
  #gem                       # gem autocompletion
  gitfast                   # git faster autocompletion
  npm                       # npm autocompletion
  yarn                      # yarn autocompletion
  z                         # `z` navigator
  zsh-syntax-highlighting   # syntax highlighting for zsh
  git
  github
  colored-man-pages
  colorize
  macos
)

# config
export DOTFILES="$HOME/.dotfiles"
export DOTFILES_BIN="$DOTFILES/bin"
export DOTFILES_ZSH="$DOTFILES/zsh"
export DOTFILES_GIT="$DOTFILES/git"

# files
source $ZSH/oh-my-zsh.sh
source $DOTFILES_ZSH/.bootstrap

#### FIG ENV VARIABLES ####
# Please make sure this block is at the end of this file.
[ -s ~/.fig/fig.sh ] && source ~/.fig/fig.sh
#### END FIG ENV VARIABLES ####
