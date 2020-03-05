#!/bin/bash
#Title:Kubernetes specific installation Script for Ubuntu 18.04 LTS in English.
#Description: Setup for kubernetes
#Usage: sudo kubernetes.sh
#Author: Mike Forsberg
#Date: 2020 March 5

echo "This script will install utils for a running kubernetes on Ubuntu 18.04 VM"

echo 

###
# Basic make sure update and upgrade
apt -y update
apt -y upgrade

###
# Apt install the following
apt -y openssh-server

