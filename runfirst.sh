#!bin/bash

mkdir /home/$USER/bin %% mkdir /home/$USER/Repos

# update and upgrade
sudo apt update && sudo apt upgrade -y; 

# Git, initial setup
sudo apt install git -y; git config --global user.name "Nicholas Johnson" && git config --global user.email "59103181+Lesona-Systems@users.noreply.github.com" && git config --global init.defaultBranch main

cd /home/$USER/Repos
git clone https://github.com/Lesona-Systems/install-scripts.git