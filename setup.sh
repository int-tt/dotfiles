#!/bin/sh

##Install Neobule
git submodule init
git submodule update

ln -sf ~/dotfiles/_vimrc ~/.vimrc
ln -sf ~/dotfiles/_vim ~/.vim
ln -sf ~/dotfiles/_zshrc ~/.zshrc
