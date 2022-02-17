#!/usr/bin/env bash

readonly DOTS="$HOME/.dotfiles"
readonly VSCODE_CONFIG="$HOME/Library/Application Support/Code/User"

# Ask for the administrator password upfront
sudo -v

# Install Homebrew
if test ! $(which brew)
then
  echo " → Installing Homebrew for package management..."
  ruby -e "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/master/install)"
fi
brew update
brew upgrade

echo "→ Installing packages using Homebrew..."
brew install $(cat brew/brewfile|grep -v "#")

echo "→ Configuring Git..."
ln -s "$DOTS/git/.gitconfig" ~/.gitconfig
ln -s "$DOTS/git/.gitignore_global" ~/.gitignore_global
ln -s "$DOTS/git/.gitmessage" ~/.gitmessage

echo "→ Configuring ZSH..."
echo '/usr/local/bin/zsh' | sudo tee -a /etc/shells > /dev/null
chsh -s /usr/local/bin/zsh
ln -s "$DOTS/zsh/.zshrc" ~/.zshrc

echo "→ Installing Oh My ZSH and custom plugins..."
sh -c "$(curl -fsSL https://raw.githubusercontent.com/robbyrussell/oh-my-zsh/master/tools/install.sh)"

echo "🔨Installing oh-my-zsh plugins..."
mkdir -p ~/.custom/plugins ~/.custom/themes
# zsh-autosuggestions
git clone https://github.com/zsh-users/zsh-autosuggestions ${ZSH_CUSTOM:-~/.custom}/plugins/zsh-autosuggestions
# install zsh-syntax-highlighting
git clone https://github.com/zsh-users/zsh-syntax-highlighting.git ${ZSH_CUSTOM:-~/.custom}/plugins/zsh-syntax-highlighting
# install zsh-nvm
git clone https://github.com/lukechilds/zsh-nvm ${ZSH_CUSTOM:-~/.custom}/plugins/zsh-nvm

# install spaceship oh-my-zsh theme
git clone https://github.com/spaceship-prompt/spaceship-prompt.git "$ZSH_CUSTOM/themes/spaceship-prompt" --depth=1
ln -s "${ZSH_CUSTOM:-~/.custom}/themes/spaceship-prompt/spaceship.zsh-theme" "${ZSH_CUSTOM:-~/.custom}/themes/spaceship.zsh-theme"

echo "→ Configuring VSCode..."
rm -rf "$VSCODE_CONFIG/{keybindings.json,settings.json}"
ln -s "$DOTS/vscode/snippets" "$VSCODE_CONFIG/snippets"
ln -s "$DOTS/vscode/keybindings.json" "$VSCODE_CONFIG/keybindings.json"
ln -s "$DOTS/vscode/settings.json" "$VSCODE_CONFIG/settings.json"

# Set macOS defaults
echo "→ Set macOS defaults... (It'll shut down Terminal!)"
sh ./macos.sh
