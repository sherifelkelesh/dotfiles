# -- ZSH -------------------------------------------------------------
export ZSH=/home/iago/.oh-my-zsh

# -- Theme -----------------------------------------------------------
ZSH_THEME="dracula"

# -- Editor ----------------------------------------------------------
EDITOR="subl"

# -- UX Config -------------------------------------------------------
ENABLE_CORRECTION="true"
COMPLETION_WAITING_DOTS="true"

# -- Plugins ---------------------------------------------------------
plugins=(git git-prompt git-tools github history-substring-search sublime node npm zsh-syntax-highlighting z)

# User configuration
export PATH="/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/usr/games:/usr/local/games"

# -- Oh-My-Zsh -------------------------------------------------------
source $ZSH/oh-my-zsh.sh

# -- SSH Key ---------------------------------------------------------
export SSH_KEY_PATH="~/.ssh/dsa_id"

# -- Aliases ---------------------------------------------------------
source $HOME/.dotfiles/.aliases

# -- ZSH Git Prompt --------------------------------------------------
source .oh-my-zsh/custom/plugins/zsh-git-prompt/zshrc.sh

# -- NVM -------------------------------------------------------------
export NVM_DIR="/home/iago/.nvm"
[ -s "$NVM_DIR/nvm.sh" ] && . "$NVM_DIR/nvm.sh"  # This loads nvm
