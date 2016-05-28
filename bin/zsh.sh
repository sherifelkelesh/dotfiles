#!/usr/bin/ bash

#
# ZSH Installation
# --------------------------------------------------------------------

sudo apt-get install zsh -y
chsh -s /usr/bin/zsh
sh -c "$(curl -fsSL https://raw.github.com/robbyrussell/oh-my-zsh/master/tools/install.sh)"
