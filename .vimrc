syntax on
set backspace=indent,eol,start
set tabstop=4
set shiftwidth=4
set expandtab
set number
set nocompatible
set spr
set sb
set encoding=utf-8

packadd! termdebug
packadd YouCompleteMe

let g:termdebug_wide=1

let g:syntastic_check_on_open = 1
let g:syntastic_lua_checkers = ["luacheck"]
let g:syntastic_lua_luacheck_args = "--no-unused-args"


filetype plugin indent on


"Session management utilities

command Sess mksession! .vimsession
command SessClear echo delete(".vimsession")

function! ReloadSession()
    let b:sessionfile = getcwd() . "/.vimsession"
    if filereadable(b:sessionfile)
        echo "Loading previous session..."
        exe 'source ' b:sessionfile
        echo "Session loaded."
    else
        echo "No previous session found, continuing as normal."
    endif
endfunction

function! OverwriteSession()
    let b:sessionfile = getcwd() . "/.vimsession"
    if filereadable(b:sessionfile)
        echo "Saving session..."
        exe "mksession! " . b:sessionfile
        echo "Session saved."
    else
        echo "No previous session found, skipping save."
    endif
endfunction

if(argc() == 0)
    au VimEnter * nested :call ReloadSession()
endif
au VimLeave * :call OverwriteSession()
