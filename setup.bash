#!/bin/bash
#Title:Post-Installation Minimal Script for Ubuntu 18.04 LTS in English.
#Description: Useful utils
#Usage: sudo setup_minimal.sh
#Author: Mike Forsberg
#Date: 2020 March 1

echo "This script will install minimal utils for a Ubuntu 18.04 VM"

echo 

###
# Apt install the following
apt -y install git vim-gnome ack-grep

###
# Vim config
#TODO wget -c personal.vimrc -O ~/.vimrc

git clone https://github.com/VundleVim/Vundle.vim.git ~/.vim/bundle/Vundle.vim
vim +'PlugInstall --sync' +qa

###
# ack-grep config
#TODO wget -c personal.ackrc -O ~/.ackrc
