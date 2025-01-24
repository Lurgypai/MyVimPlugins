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

# you complete me, autocomplete plugin
git clone --recurse-submodules https://github.com/ycm-core/YouCompleteMe.git ~/.vim/pack/YouCompleteMe/opt/YouCompleteMe
pushd ~/.vim/pack/YouCompleteMe/opt/YouCompleteMe
./install.py --clang-completer
popd

# ctrlp, fuzzy file finder
mkdir -p ~/.vim/pack/plugins/start
git clone --depth=1 https://github.com/ctrlpvim/ctrlp.vim.git ~/.vim/pack/plugins/start/ctrlp

# syntastic, used for luacheck, not enabled (is it needed?)
# git clone --depth=1 https://github.com/ctrlpvim/ctrlp.vim.git ~/.vim/pack/plugins/start/ctrlp
