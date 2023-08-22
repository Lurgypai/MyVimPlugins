syntax on
set backspace=indent,eol,start
set tabstop=4
set shiftwidth=4
set expandtab
set number
set nocompatible
set spr
set sb

packadd termdebug

let g:termdebug_wide=1
filetype off

set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()

Plugin 'VundleVim/Vundle.vim'
"Plugin 'scrooloose/syntastic'
Plugin 'ctrlpvim/ctrlp.vim'
Plugin 'valloric/youcompleteme'

call vundle#end()

let g:syntastic_check_on_open = 1
let g:syntastic_lua_checkers = ["luacheck"]
let g:syntastic_lua_luacheck_args = "--no-unused-args"

filetype plugin indent on

