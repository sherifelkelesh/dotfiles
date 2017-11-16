#!/bin/bash

# icons
readonly ARROW="→"
readonly CHECK="✔"
readonly CLOSE="✗"
readonly HEART="♥"

# colors
readonly RESET="\e[0m"
readonly RED="\e[0;31m"
readonly GREEN_BOLD="\e[1;32m"
readonly YELLOW_BOLD="\e[1;33m"
readonly BLUE_BOLD="\e[1;34m"

# paths
readonly DOTFILES_PATH="$HOME/.dotfiles"
readonly SUBLIME_PATH="$HOME/.config/sublime-text-3/Packages/User"

function log() {
  printf "$1\n"
}

function bold() {
  printf "${BLUE_BOLD}$1${RESET}\n"
}

function arrow() {
  printf "${YELLOW_BOLD}${ARROW}${RESET} $1\n"
}

function check() {
  printf "${GREEN_BOLD}${CHECK}${RESET} $1\n"
}

function banner() {
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

function makes() {
  mkdir -p ~/dev/projects
}

function clean() {
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
}

function symlinks() {
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
