#!/usr/bin/ bash

#
# Installs
# --------------------------------------------------------------------

# Update
sudo apt-get update
sudo apt-get upgrade -y
sudo apt-get dist-upgrade -y

# Softwares
sudo apt-get install build-essential -y
sudo apt-get install python-software-properties -y
sudo apt-get install chromium-browser -y
sudo apt-get install vim -y
sudo apt-get install vlc -y
sudo apt-get install htop -y
sudo apt-get install curl -y
sudo apt-get install unity-tweak-tool -y

# Java
sudo add-apt-repository ppa:webupd8team/java -y
sudo apt-get install oracle-java8-installer -y
sudo apt-get install oracle-java8-set-default -y

# Nginx PHP MySql
sudo apt-get install nginx -y
sudo apt-get install mysql-server -y
mysql_secure_installation
sudo add-apt-repository ppa:ondrej/php5 -y
sudo apt-get update
sudo apt-get install php5-fpm php5-mysql php5-cli php5-curl -y

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

# Python
sudo apt-get install python-pip python-dev -y
pip install --upgrade pip


# Terminal plugins
sudo pip install psutil thefuck
sudo pip install wakatime

cd ~/.custom/plugins && git clone https://github.com/wbinglee/zsh-wakatime.git && git clone https://github.com/zsh-users/zsh-syntax-highlighting.git && cd ~/
