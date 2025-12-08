#!/bin/bash

sudo pacman -S --needed git base-devel
git clone https://aur.archlinux.org/yay.git
cd yay
makepkg -si
cd ~/
sudo rm -rf yay
curl -sS https://download.spotify.com/debian/pubkey_5384CE82BA52C83A.gpg | gpg --import -
yay -S -y librewolf plex-media-player spotify 

sudo pacman -S zsh fastfetch lutris steam alacritty grim slurp flameshot qt6-wayland obs-studio flatpak
echo 'Restart PC to install Franz (an app to comine multiple messaging apps together)

echo chsh -s /usr/bin/zsh >> .bashrc

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

echo 'if you are on laptop make sure to install tlp with S tlp after reopening terminal'
