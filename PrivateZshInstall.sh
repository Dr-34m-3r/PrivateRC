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
sudo cp -r /home/$USER/.oh-my-zsh/ /root/.oh-my-zsh/
echo "複製oh-my-zsh資料夾"
sleep 2
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
sleep 2
cd /home/$USER/
sudo cp .vimrc /root/.vimrc
sudo cp .zprofile /root/.zprofile
sleep 2
cd /home/$USER/PrivateRC
sudo mv rootzshrc /root/.zshrc
sleep 5
echo "安裝root設定檔"
sleep 5
echo "安裝root_powerlevel9k"
sudo su
cd
git clone https://github.com/bhilburn/powerlevel9k.git ~/.oh-my-zsh/custom/themes/powerlevel9k
sleep 2
chsh -s /bin/zsh
echo "變更為zsh"
exit
