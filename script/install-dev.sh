#!/usr/bin/sh

# Install C-dev tools
apt install -y build-essential
apt install -y geany dconf-editor gcc wget libboost-all-dev screen

# Install subversion software
apt install -y git
apt install -y svn meld

# Install Emacs 26
add-apt-repository -y ppa:kelleyk/emacs
apt-get update
apt install -y emacs26

# Install SQLite database management tool
apt install -y sqlitebrowser

# Install python packages
apt install -y python-pip python3-pip python-lxml python3-lxml python3-venv

# Install Chromium
apt install -y chromium-browser

