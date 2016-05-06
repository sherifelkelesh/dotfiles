#
# ZSH Config
# ---------------------------------------------------------------------

export ZSH=/home/iago/.oh-my-zsh

EDITOR="subl"
ZSH_THEME="dracula"
ZSH_CUSTOM="$HOME/.custom"
ENABLE_CORRECTION="true"

plugins=(zsh-syntax-highlighting z gitfast git-extras git-tools node npm zsh-wakatime)
# Not needed plugins but very useful
# git git-prompt sublime

source $ZSH/oh-my-zsh.sh
source $ZSH_CUSTOM/.config
source $ZSH_CUSTOM/.aliases
source $ZSH_CUSTOM/.functions

export PATH="/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/usr/games:/usr/local/games"
export SSH_KEY_PATH="~/.ssh/dsa_id"
export NVM_DIR="/home/iago/.nvm"
[ -s "$NVM_DIR/nvm.sh" ] && . "$NVM_DIR/nvm.sh"  # This loads nvm

eval $(thefuck --alias)
