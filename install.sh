#!/bin/bash


echo "Generating vim install directory and cloning..."
if [[ -e ~/.viminstall ]]; then
	rm -rf ~/.viminstall
fi

mkdir ~/.viminstall
cp .vimrc ~/.vimrc
cp .ycm_extra_conf.py ~/.viminstall

cd ~/.viminstall/
git clone https://github.com/vim/vim.git
cd vim
./configure --enable-python3interp
make && sudo make install



git clone https://github.com/VundleVim/Vundle.vim.git ~/.vim/bundle/Vundle.vim
vim -c 'PluginInstall' -c 'qa!'
cd ~/.vim/bundle/youcompleteme
python3 install.py --all
