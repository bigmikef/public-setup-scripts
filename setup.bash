#!/bin/bash
#Title:Post-Installation Minimal Script for Ubuntu 18.04 LTS in English.
#Description: Useful utils
#Usage: sudo setup_minimal.sh
#Author: Mike Forsberg
#Date: 2020 March 1

echo "This script will install minimal utils for a Ubuntu 18.04 VM"

echo 

###
# Basic make sure update and upgrade
apt -y update
apt -y upgrade

###
# Apt install the following
apt -y install git vim-gnome ack-grep curl gcc make perl net-tools

###
# Vim config
wget -c https://raw.githubusercontent.com/bigmikef/public-setup-scripts/master/personal.vimrc -O ~/.vimrc
git clone https://github.com/VundleVim/Vundle.vim.git ~/.vim/bundle/Vundle.vim
vim +'PlugInstall --sync' +qa

###
# ack-grep config
wget -c https://raw.githubusercontent.com/bigmikef/public-setup-scripts/master/personal.ackrc -O ~/.ackrc
