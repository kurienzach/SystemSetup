# Build stuff
apt-get -y install cmake

# Utilities
apt-get -y install git curl axel tree silversearcher-ag redshift youtube-dl rofi xclip

# Hack font
apt-get -y install fonts-hack-ttf

# Install gnu stow for managing dot files
apt-get -y install stow

apt-get -y install tmux dconf-tools openssh-server

# Media
apt-get -y vlc

# Dev related
apt-get -y apache2 mysql-server
# Disable autostart of any of the servers
systemctl disable apache2.service
systemctl disable mysql.service

#php
sudo add-apt-repository ppa:ondrej/php
sudo apt-get update
sudo apt-get install php5.6
sudo apt-get install php5.6-mbstring php5.6-mcrypt php5.6-mysql php5.6-xml php5.6-ldap

# Albert app launcher
sudo add-apt-repository ppa:nilarimogard/webupd8
sudo apt-get update
sudo apt-get install albert

