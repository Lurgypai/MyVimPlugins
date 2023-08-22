#!/bin/bash

sudo apt install vim
cp .vimrc ~/.vimrc
git clone https://github.com/VundleVim/Vundle.vim.git ~/.vim/bundle/Vundle.vim
vim -c 'PluginInstall' -c 'qa!'
cd ~/.vim/bundle/youcompleteme
python3 install.py --all
