#!/bin/bash

sudo pacman -S --needed git base-devel
git clone https://aur.archlinux.org/yay.git
cd yay
makepkg -si
cd ~/
sudo rm -rf yay

yay -S -y librewolf

sudo pacman -S zsh fastfetch

echo chsh -s /usr/bin/zsh >> .zshrc

echo export ZSH="$HOME/.oh-my-zsh" >> .zshrc
echo ZSH_THEME="agnosterzak" >> .zshrc
echo plugins={ >> .zshrc
echo 	git >> .zshrc
echo	archlinux >> .zshrc
echo	zsh-autosuggestion >> .zshrc
echo	zsh-syntax-highlighting >> .zshrc
echo } >> .zshrc


echo source $ZSH/oh-my-zsh.sh >> .zshrc

echo #Aliases# >> .zshrc 
echo alias S='sudo pacman -S -y' >> .zshrc
echo alias SS='sudo pacman -Syu -y' >> .zshrc
echo alias SN='sudo nano' >> .zshrc
echo alias Rdd='sudo pacman -Rdd' >> .zshrc
echo alias Qs='sudo pacmann -Qs' >> .zshrc
echo alias shutdown='shutdown now'
echo alias clear='clear && fastfetch' >> .zshrc

echo #History Stuffs >> .zshrc 
echo HISTFILE=~/.zsh_history >> .zshrc
echo HISTSIZE=10000 >> .zshrc
echo SAVEHIST=10000 >> .zshrc
echo setopt appendhistory >> .zshrc

echo #OS Show >> .zshrc 
echo fastfetch >> .zshrc
