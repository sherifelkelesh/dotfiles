#!/usr/bin/ bash

#
# Ubuntu
# --------------------------------------------------------------------

# Always Show Options Menu
gsettings set com.canonical.Unity always-show-menus true

# Perfomance Configs
sudo sed -i "s/NoDisplay=true/NoDisplay=false/g" /etc/xdg/autostart/*.desktop

# Removes Swap Percentual
sudo sysctl vm.swappiness=10
sudo echo /etc/sysctl.conf >> vm.swappiness=10
