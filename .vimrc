syntax enable

setlocal spell spelllang=en_us
set nocompatible
set nu 

if !has('gui_running')
    colorscheme desert
else
    colorscheme desert
endif

let mapleader='\'

set ai 
set ic 
set hls
set lbr
set ve=onemore
set path=.,,**
set backspace=indent,eol,start
set ruler
set showcmd
set incsearch
set expandtab
set tabstop=4
set shiftwidth=4
set autoindent
set showmatch
set encoding=utf-8
set termencoding=utf-8
set fdm=indent

set cursorline cursorcolumn


highlight CursorLine term=bold cterm=bold ctermfg=none ctermbg=none guibg=Grey20 gui=bold
hi cursorcolumn term=bold cterm=bold ctermfg=none ctermbg=none guibg=Grey20 gui=bold

set guicursor+=a:blinkon0
set completeopt=longest,menuone 

filetype plugin on
