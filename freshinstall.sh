#!bin/bash

mkdir /home/$USER/bin
mkdir /home/$USER/Repos

cd /home/$USER/bin

# update and upgrade
sudo apt update && sudo apt upgrade -y;

# GParted
sudo apt install gparted -y

# Git, initial setup
sudo apt install git -y;
git config user.name "Nicholas Johnson"
&& git config user.email "nejwritings@gmail.com"
&& git config --global init.defaultBranch main

# Spotify
curl -sS https://download.spotify.com/debian/pubkey_7A3A762FAFD4A51F.gpg | sudo gpg --dearmor --yes -o /etc/apt/trusted.gpg.d/spotify.gpg;
echo "deb http://repository.spotify.com stable non-free" | sudo tee /etc/apt/sources.list.d/spotify.list;
sudo apt update && sudo apt install spotify-client -y

# ZSH (Shell)
sudo apt install zsh -y;
sudo chsh -s /usr/bin/zsh $USER;
touch /home/$USER/.zshrc # req. for ZSH Syntax Highlighting

# ZSH Syntax Highlighting
git clone https://github.com/zsh-users/zsh-syntax-highlighting.git;
echo "source ${(q-)PWD}/zsh-syntax-highlighting/zsh-syntax-highlighting.zsh" >> ${ZDOTDIR:-$HOME}/.zshrc

# Reboot
sudo reboot now