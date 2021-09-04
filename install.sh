#!/bin/bash

mkdir ~/.vim_install
cp .vimrc ~/.vimrc
cd ~/.vim_install
git clone 'https://github.com/vim/vim.git'
cd ~/.vim_install/vim
sudo ./configure --enable-pythoninterp=yes \
	--enable-python3interp=yes \
	--with-python3-config-dir=/usr/lib/python3.8/config-3.8-x86_64-linux-gnu/
sudo make && sudo make install
git clone https://github.com/VundleVim/Vundle.vim.git ~/.vim/bundle/Vundle.vim
vim -c 'PluginInstall' -c 'qa!'
cd ~/.vim/bundle/youcompleteme
python3 install.py --all
