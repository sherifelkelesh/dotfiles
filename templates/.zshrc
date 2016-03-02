# == ZSH
# ===========================================================
# Path to your oh-my-zsh installation.
export ZSH=/home/iago/.oh-my-zsh

# == THEME
# ===========================================================
# Set name of the theme to load.
# Look in ~/.oh-my-zsh/themes/
# Optionally, if you set this to "random", it'll load a random theme each
# time that oh-my-zsh is loaded.
# ZSH_THEME="robbyrussell"
ZSH_THEME="dracula"

# == EDITOR
# ===========================================================
EDITOR="subl"

# == CORRECTION
# ===========================================================
# Uncomment the following line to enable command auto-correction.
ENABLE_CORRECTION="true"

# == COMPLETION
# ===========================================================
# Uncomment the following line to display red dots whilst waiting for completion.
COMPLETION_WAITING_DOTS="true"

# == PLUGINS
# ===========================================================
# Which plugins would you like to load? (plugins can be found in ~/.oh-my-zsh/plugins/*)
# Custom plugins may be added to ~/.oh-my-zsh/custom/plugins/
# Example format: plugins=(rails git textmate ruby lighthouse)
# Add wisely, as too many plugins slow down shell startup.
plugins=(git z sublime)

# == USER CONFIGURATION
# ===========================================================
# User configuration
export PATH="/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/usr/games:/usr/local/games"

# == OH-MY-ZSH
# ===========================================================
source $ZSH/oh-my-zsh.sh

# == SSH
# ===========================================================
export SSH_KEY_PATH="~/.ssh/dsa_id"

# == ALIASES
# ===========================================================
# Set personal aliases, overriding those provided by oh-my-zsh libs,
# plugins, and themes. Aliases can be placed here, though oh-my-zsh
# users are encouraged to define aliases within the ZSH_CUSTOM folder.
# For a full list of active aliases, run `alias`.
source $HOME/.dotfiles/.aliases

# == NVM
# ===========================================================
export NVM_DIR="/home/iago/.nvm"
[ -s "$NVM_DIR/nvm.sh" ] && . "$NVM_DIR/nvm.sh"  # This loads nvm
