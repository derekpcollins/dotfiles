#!/bin/zsh

# Create symlinks
ln -s ~/dotfiles/.gitconfig ~/.gitconfig
ln -s ~/dotfiles/.hushlogin ~/.hushlogin
ln -s ~/dotfiles/.macos ~/.macos
ln -s ~/dotfiles/.zshrc ~/.zshrc

# Reload
source ~/.zshrc