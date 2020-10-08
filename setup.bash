#!/bin/bash
#Title:Post-Installation Minimal Script for Ubuntu 20.04 LTS in English.
#Description: Useful utils for a ubuntu VM
#Usage: sudo setup_minimal.sh
#Author: Mike Forsberg
#Date: 2020 March 1

echo "This script will install minimal utils for a Ubuntu 18.04 VM"

echo 

USER=mforsberg

###
# Basic make sure update and upgrade
apt -y update
apt -y upgrade

###
# Apt install the following
#  git: for vundles and other things
#  vim-gtk: for vim with GUI interaction for copy-paste
#  ack: Ack a great search tool
#  curl: web download tool
#  gcc: Needed for VM tools like copy-paste with host
#  make: Needed for VM tools like copy-paste with host
#  perl: Needed for VM tools like copy-paste with host
#  net-tools: Great tools for networking like ifconfig
apt -y install git vim-gtk ack curl gcc make perl net-tools

###
# Vim config
wget -c https://raw.githubusercontent.com/bigmikef/public-setup-scripts/master/personal.vimrc -O ~$USER/.vimrc
wget -c https://raw.githubusercontent.com/bigmikef/public-setup-scripts/master/personal.vimrc -O ~/.vimrc
git clone https://github.com/VundleVim/Vundle.vim.git ~$USER/.vim/bundle/Vundle.vim
git clone https://github.com/VundleVim/Vundle.vim.git ~/.vim/bundle/Vundle.vim
vim +'PlugInstall --sync' +qa

###
# ack-grep config
wget -c https://raw.githubusercontent.com/bigmikef/public-setup-scripts/master/personal.ackrc -O ~/.ackrc
wget -c https://raw.githubusercontent.com/bigmikef/public-setup-scripts/master/personal.ackrc -O ~$USER/.ackrc
