#!/bin/bash

DIR=$(dirname $0)

git clone git@github.com:iagodahlem/scripts.git &> /dev/null
source $DIR/scripts/index.sh

# paths
readonly DOTFILES_PATH="$HOME/.dotfiles"
readonly SUBLIME_PATH="$HOME/.config/sublime-text-3/Packages/User"
readonly VSCODE_PATH="$HOME/.config/Code/User"

banner() {
  log  ""
  bold "       _       _    __ _ _             "
  bold "      | |     | |  / _(_) |            "
  bold "    __| | ___ | |_| |_ _| | ___  ___   "
  bold "   / _  |/ _ \| __|  _| | |/ _ \/ __|  "
  bold "  | (_| | (_) | |_| | | | |  __/\__ \  "
  bold "   \__,_|\___/ \__|_| |_|_|\___||___/  "
  log  ""
  log  "      Made by @iagodahlem with ${RED}$HEART${RESET}"
  log  ""
  log  "  -----------------------------------"
  log  ""
}

makes() {
  mkdir -p ~/dev/projects
}

clean() {
  # zsh
  rm -rf "$HOME/.zshrc"

  # git
  rm -rf "$HOME/.gitconfig"
  rm -rf "$HOME/.gitignore_global"
  rm -rf "$HOME/.gitmessage"

  # subl
  rm -rf "$SUBLIME_PATH/snippets"
  rm -rf "$SUBLIME_PATH/ColorHighlighter.sublime-settings"
  rm -rf "$SUBLIME_PATH/Default (Linux).sublime-keymap"
  rm -rf "$SUBLIME_PATH/GitGutter.sublime-settings"
  rm -rf "$SUBLIME_PATH/Markdown.sublime-settings"
  rm -rf "$SUBLIME_PATH/Package Control.sublime-settings"
  rm -rf "$SUBLIME_PATH/Preferences.sublime-settings"
  rm -rf "$SUBLIME_PATH/Shell-Unix-Generic.sublime-settings"
  rm -rf "$SUBLIME_PATH/ToggleExclude.sublime-settings"
  rm -rf "$SUBLIME_PATH/WakaTime.sublime-settings"

  # tmux
  rm -rf "$HOME/.tmux.conf"

  # vim
  rm -rf "$HOME/.vimrc"

  # ubuntu
  rm -rf "$HOME/.config/autostart"

  # asdf
  rm -rf "$HOME/.tool-versions"

  # vscode
  rm -rf "$VSCODE_PATH/snippets"
  rm -rf "$VSCODE_PATH/keybindings.json"
  rm -rf "$VSCODE_PATH/settings.json"
}

symlinks() {
  # zsh
  ln -s "$DOTFILES_PATH/zsh/.zshrc" "$HOME/.zshrc"

  # git
  ln -s "$DOTFILES_PATH/git/.gitconfig"        "$HOME/.gitconfig"
  ln -s "$DOTFILES_PATH/git/.gitignore_global" "$HOME/.gitignore_global"
  ln -s "$DOTFILES_PATH/git/.gitmessage"       "$HOME/.gitmessage"

  # subl
  ln -s "$DOTFILES_PATH/subl/snippets" "$SUBLIME_PATH/snippets"
  ln -s "$DOTFILES_PATH/subl/ColorHighlighter.sublime-settings" "$SUBLIME_PATH/ColorHighlighter.sublime-settings"
  ln -s "$DOTFILES_PATH/subl/Default (Linux).sublime-keymap" "$SUBLIME_PATH/Default (Linux).sublime-keymap"
  ln -s "$DOTFILES_PATH/subl/GitGutter.sublime-settings" "$SUBLIME_PATH/GitGutter.sublime-settings"
  ln -s "$DOTFILES_PATH/subl/Markdown.sublime-settings" "$SUBLIME_PATH/Markdown.sublime-settings"
  ln -s "$DOTFILES_PATH/subl/Package Control.sublime-settings" "$SUBLIME_PATH/Package Control.sublime-settings"
  ln -s "$DOTFILES_PATH/subl/Preferences.sublime-settings" "$SUBLIME_PATH/Preferences.sublime-settings"
  ln -s "$DOTFILES_PATH/subl/Shell-Unix-Generic.sublime-settings" "$SUBLIME_PATH/Shell-Unix-Generic.sublime-settings"
  ln -s "$DOTFILES_PATH/subl/ToggleExclude.sublime-settings" "$SUBLIME_PATH/ToggleExclude.sublime-settings"
  ln -s "$DOTFILES_PATH/subl/WakaTime.sublime-settings" "$SUBLIME_PATH/WakaTime.sublime-settings"

  # tmux
  ln -s "$DOTFILES_PATH/tmux/.tmux.conf" "$HOME/.tmux.conf"

  # vim
  ln -s "$DOTFILES_PATH/vim/.vimrc" "$HOME/.vimrc"

  # ubuntu
  ln -s "$DOTFILES_PATH/ubuntu/autostart" "$HOME/.config/autostart"

  # asdf
  ln -s "$DOTFILES_PATH/asdf/.tool-versions" "$HOME/.tool-versions"

  # vscode
  ln -s "$DOTFILES_PATH/vscode/snippets" "$VSCODE_PATH/snippets"
  ln -s "$DOTFILES_PATH/vscode/keybindings.json" "$VSCODE_PATH/keybindings.json"
  ln -s "$DOTFILES_PATH/vscode/settings.json" "$VSCODE_PATH/settings.json"
}

banner

arrow "creating default directories"
makes
check "default directories created"

arrow "cleaning existing files"
clean
check "existing files cleaned"

arrow "creating symlinks"
symlinks
check "symlinks created"

# clean up script
rm -rf scripts
