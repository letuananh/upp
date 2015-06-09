#!/usr/bin/sh

# Install C-dev tools
apt-get install -y llvm gcc gcc-c++ cmake geany wget tkinter gtk2-devel qt-devel dconf-editor boost git emacs  httpd httpd-devel screen

# Install subversion software
apt-get install -y svn rapidsvn meld

# Install SQLite database management tool
apt-get install -y sqliteman

# Install python packages
apt-get install -y python-tools python-pip python-lxml python3-lxml

# Install Chromium
# apt-get install -y wget
# cd /etc/yum.repos.d
# wget http://repos.fedorapeople.org/repos/spot/chromium-stable/fedora-chromium-stable.repo
# yum install -y --nogpgcheck chromium


