#!/usr/bin/ bash

#
# Installs
# --------------------------------------------------------------------

# Update
sudo apt-get update
sudo apt-get upgrade -y
sudo apt-get dist-upgrade -y

# Softwares
sudo apt-get install vim -y
sudo apt-get install python-software-properties -y
sudo apt-get install chromium-browser -y
sudo apt-get install vlc -y
sudo apt-get install build-essential -y
sudo apt-get install htop -y
sudo apt-get install curl -y
sudo apt-get install virtualbox -y

# Sublime
sudo add-apt-repository ppa:webupd8team/sublime-text-3 -y
sudo apt-get update
sudo apt-get install sublime-text-installer -y

# ZSH
sudo apt-get install zsh -y
chsh -s /usr/bin/zsh
sh -c "$(curl -fsSL https://raw.github.com/robbyrussell/oh-my-zsh/master/tools/install.sh)"

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
npm i -g babel
npm i -g bower

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

cd ~/.custom/plugins && git clone https://github.com/wbinglee/zsh-wakatime.git && git clone https://github.com/zsh-users/zsh-syntax-highlighting.git && cd ~/

# Mutate
cd ~/.softwares
git clone https://github.com/qdore/Mutate.git
cd Mutate/src
qmake
make

sudo make install
cd ..
sudo cp info/mutate.png /usr/share/icons
sudo cp info/Mutate.desktop /usr/share/applications
mkdir -p ~/.config/Mutate
cp -R config/* ~/.config/Mutate
chmod -R a+x ~/.config/Mutate/scripts
chmod -R a+w ~/.config/Mutate
sed -i "s|{home}|$HOME|g" ~/.config/Mutate/config.ini
