#!/usr/bin/ bash

#
# Installs
# --------------------------------------------------------------------

# Update
sudo apt-get update
sudo apt-get upgrade -y
sudo apt-get dist-upgrade -y

# ZSH
sudo apt-get install zsh -y
chsh -s /usr/bin/zsh
sh -c "$(curl -fsSL https://raw.github.com/robbyrussell/oh-my-zsh/master/tools/install.sh)"

# Softwares
sudo apt-get install git -y
sudo apt-get install vim -y
sudo apt-get install python-software-properties -y
sudo apt-get install chromium-browser -y
sudo apt-get install vlc -y
sudo apt-get install build-essential -y
sudo apt-get install htop -y

# NVM
curl -o- https://raw.githubusercontent.com/creationix/nvm/v0.31.0/install.sh | bash
nvm install node
nvm use node

# Npm
npm i -g npm
npm i -g grunt-cli
npm i -g gulp-cli
npm i -g trash-cli
npm i -g empty-trash-cli
npm i -g yo
npm i -g jshint
npm i -g csscomb

# Java
sudo add-apt-repository ppa:webupd8team/java -y
sudo apt-get install oracle-java8-installer -y
sudo apt-get install oracle-java8-set-default -y

# Tlp
sudo apt-get remove laptop-mode-tools -y
sudo add-apt-repository ppa:linrunner/tlp -y
sudo apt-get update
sudo apt-get install tlp tlp-rdw -y
sudo tlp start

# Plugins
sudo apt-get install indicator-multiload -y
sudo apt-get install preload -y

sudo apt-add-repository ppa:caffeine-developers/ppa
sudo apt-get update
sudo apt-get install caffeine -y

# Spotify
sudo apt-key adv --keyserver hkp://keyserver.ubuntu.com:80 --recv-keys BBEBDCB318AD50EC6865090613B00F1FD2C19886 -y
echo deb http://repository.spotify.com stable non-free | sudo tee /etc/apt/sources.list.d/spotify.list
sudo apt-get update
sudo apt-get install spotify-client -y

# Python
sudo apt-get install python-pip python-dev -y

# Terminal plugins
sudo pip install psutil thefuck -y
sudo pip install wakatime -y

cd ~/.custom/plugins && git clone https://github.com/wbinglee/zsh-wakatime.git
cd ~/.custom/plugins && git clone https://github.com/zsh-users/zsh-syntax-highlighting.git

cd ~/
