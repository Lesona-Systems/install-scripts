#!bin/bash

mkdir /home/$USER/bin %% mkdir /home/$USER/Repos

# update and upgrade
sudo apt update && sudo apt upgrade -y; 

# Git, initial setup
sudo apt install git -y; git config --global user.name "Nicholas Johnson" && git config --global user.email "nejwritings@gmail.com" && git config --global init.defaultBranch main



# GParted
sudo apt install gparted -y 

# Spotify
curl -sS https://download.spotify.com/debian/pubkey_7A3A762FAFD4A51F.gpg | sudo gpg --dearmor --yes -o /etc/apt/trusted.gpg.d/spotify.gpg;
echo "deb http://repository.spotify.com stable non-free" | sudo tee /etc/apt/sources.list.d/spotify.list;
sudo apt update && sudo apt install spotify-client -y 

# ZSH (Shell)
sudo apt install zsh -y;
sudo chsh -s /usr/bin/zsh $USER; 

# ZSH Syntax Highlighting
cd /home/$USER/bin && git clone https://github.com/zsh-users/zsh-syntax-highlighting.git;
touch /home/$USER/.zshrc;
echo "source ${(q-)PWD}/zsh-syntax-highlighting/zsh-syntax-highlighting.zsh" >> ${ZDOTDIR:-$HOME}/.zshrc 

# Reboot
sudo reboot now