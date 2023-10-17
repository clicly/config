#!/bin/bash
echo "Instalando dependencias de Yay 😀"
sudo pacman -S wget exa fzf zsh

echo "Install fonts "
wget -c https://github.com/ryanoasis/nerd-fonts/releases/download/v3.0.2/FiraCode.zip
mkdir -p "$HOME/.fonts" && unzip FiraCode.zip -d  "$HOME/.fonts"
rm -rfv "$PWD/FiraCode.zip"
fc-cache -fv

echo "Agregando configuraciones al zsh"
if [ ! -d "$HOME/.oh-my-zsh" ]; then
    git clone https://github.com/ohmyzsh/ohmyzsh.git "$HOME/.oh-my-zsh"
    git clone --depth=1 https://github.com/romkatv/powerlevel10k.git "$HOME/.oh-my-zsh/themes/powerlevel10k"
    ln -sfv "$PWD"/.zshrc "$HOME/.zshrc"
    # ln -sfv "$PWD/.p10k.zsh" "$HOME/.p10k.zsh"
fi