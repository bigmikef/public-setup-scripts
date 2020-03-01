set nocompatible              " be iMproved, required
filetype off                  " required

" set the runtime path to include Vundle and initialize
set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()
" alternatively, pass a path where Vundle should install plugins
"call vundle#begin('~/some/path/here')

" let Vundle manage Vundle, required
Plugin 'VundleVim/Vundle.vim'

" make sure Ack is installed
Plugin 'mileszs/ack.vim'

" All of your Plugins must be added before the following line
call vundle#end()            " required
filetype plugin indent on    " required
" To ignore plugin indent changes, instead use:
"filetype plugin on
"
" Brief help
" :PluginList       - lists configured plugins
" :PluginInstall    - installs plugins; append `!` to update or just :PluginUpdate
" :PluginSearch foo - searches for foo; append `!` to refresh local cache
" :PluginClean      - confirms removal of unused plugins; append `!` to auto-approve removal
"
" see :h vundle for more details or wiki for FAQ
" Put your non-Plugin stuff after this line

function! Paste(mode)
  if a:mode == "v"
    normal gv
    normal "+P
    normal l
  elseif a:mode == "i"
    set virtualedit=all
    normal `^"+gP
    let &virtualedit = ""
  endif
endfunction

function! PasteCopyright()
    normal gv
    let @+ = system('cat ~/.copyright')
    normal "+P
    normal l
endfunction

" ~/.copyright is the copyright template
nnoremap <C-R> read~/.copyright<CR>
vnoremap <C-R> :<C-U>call PasteCopyright()<CR>
inoremap <C-R>  (C) Copyright 2020 Hewlett Packard Enterprise Development LP<ESC>

vnoremap <C-X> "+d
vnoremap <C-C> "+y
nnoremap <C-V> "+gPl
vnoremap <C-V> :<C-U>call Paste("v")<CR>
inoremap <C-V> <C-O>:call Paste("i")<CR>

set incsearch
set ts=4
set expandtab
set backspace=2
au FileType gitcommit set tw=70
