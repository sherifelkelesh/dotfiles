#!/usr/bin/ bash

#
# Symlinks
# --------------------------------------------------------------------

# ZSH
ln -s ~/.dotfiles/zsh/.zshrc ~/
ln -s ~/.dotfiles/zsh/.exports ~/.custom/
ln -s ~/.dotfiles/zsh/.aliases ~/.custom/
ln -s ~/.dotfiles/zsh/.functions ~/.custom/
cd ~/.custom && wget https://raw.githubusercontent.com/dracula/zsh/master/dracula.zsh-theme
cd ~/

# Git
ln -s ~/.dotfiles/git/.gitconfig ~/
ln -s ~/.dotfiles/git/.gitignore_global ~/
ln -s ~/.dotfiles/git/.gitmessage ~/

# Sublime
ln -s ~/.dotfiles/subl/ShellScript ~/.config/sublime-text-3/Packages/
ln -s ~/.dotfiles/subl/snippets ~/.config/sublime-text-3/Packages/User/
ln -s ~/.dotfiles/subl/CSScomb.sublime-settings ~/.config/sublime-text-3/Packages/User/
ln -s ~/.dotfiles/subl/ColorHighlighter.sublime-settings ~/.config/sublime-text-3/Packages/User/
ln -s ~/.dotfiles/subl/Default\ \(Linux\).sublime-keymap ~/.config/sublime-text-3/Packages/User/
ln -s ~/.dotfiles/subl/JsFormat.sublime-settings ~/.config/sublime-text-3/Packages/User/
ln -s ~/.dotfiles/subl/Package\ Control.sublime-settings ~/.config/sublime-text-3/Packages/User/
ln -s ~/.dotfiles/subl/Preferences.sublime-settings ~/.config/sublime-text-3/Packages/User/
ln -s ~/.dotfiles/subl/SublimeLinter.sublime-settings ~/.config/sublime-text-3/Packages/User/

# Vim
ln -s ~/.dotfiles/vim/.vimrc ~/

# Ubuntu
ln -s ~/.dotfiles/ubuntu/autostart ~/.config/
