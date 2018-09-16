#!/bin/bash

sudo apt update
sleep 2
sudo apt install -y zsh
echo "安裝zsh"
sleep 5
sh -c "$(curl -fsSL https://raw.githubusercontent.com/robbyrussell/oh-my-zsh/master/tools/install.sh)"
echo "安裝oh-my-zsh"
sleep 2
chsh -s /bin/zsh
echo "變更為zsh"
sleep 5
git clone https://github.com/Dr34m3rXu/PrivateRC
echo "下載zsh&vim設定檔"
git clone https://github.com/bhilburn/powerlevel9k.git ~/.oh-my-zsh/custom/themes/powerlevel9k
echo "安裝powerlevel9k"
sleep 2
cd /home/$USER/PrivateRC
mv vimrc /home/$USER/.vimrc
mv zprofile /home/$USER/.zprofile
mv zshrc /home/$USER/.zshrc
sleep 5
echo "安裝設定檔"
cd /home/$USER
git clone https://github.com/ryanoasis/nerd-fonts
sleep 2
cd nerd-fonts
sleep 2
./install.sh
echo "安裝nerd字體"