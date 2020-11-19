#!/bin/zsh

# Create symlinks
ln -s ~/dotfiles/zshrc ~/.zshrc
ln -s ~/dotfiles/gitconfig ~/.gitconfig
ln -s ~/dotfiles/hushlogin ~/.hushlogin

# Reload
source ~/.zshrc