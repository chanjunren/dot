" BASIC SETUP
syntax enable

let mapleader='\'

setlocal spell spelllang=en_us
colorscheme desert
set nocompatible
set nu 
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
set guicursor+=a:blinkon0
set completeopt=longest,menuone 
set cursorline cursorcolumn

highlight CursorLine term=bold cterm=bold ctermfg=none ctermbg=none guibg=Grey20 gui=bold

" Enable syntax and plugins for netrw
filetype plugin on

" FINDING FILES
"
" Search down into sub-folders
" Provides tab-completion for all file-related tasks
set path+=**

" Display all matching files when pressing tab-complete
set wildmenu
set wildignore+=*/tmp/*
set wildignore+=*/target/*
set wildignore+=*/build/*
set wildignore+=*/tmp/*                                     " ctrlp - ignore files in tmp directories
set wildignore+=*/target/*                                  " ctrlp - ignore files in target directories
set wildignore+=*/build/*                                   " ctrlp - ignore gradle build directories
set wildignore+=*.so                                        " ctrlp - ignore .so files
set wildignore+=*.o                                         " ctrlp - ignore .o files
set wildignore+=*.class                                     " ctrlp - ignore .class files
set wildignore+=*.swp                                       " ctrlp - ignore .swp files
set wildignore+=*.zip                                       " ctrlp - ignore .zip files
set wildignore+=*.pdf                                       " ctrlp - ignore .pdf files
set wildignore+=*/node_modules/*                            " ctrlp - ignore node modules
set wildignore+=*/bower_components/*                        " ctrlp - ignore bower components
set wildignore+=*/dist/*                                    " ctrlp - ignore grunt build directory
set wildignore+=*/usr/*
"
" NOW CAN: 
" Hit tab to :find by partial match
" Use * to make it fuzzy
"
" THINGS TO CONSIDER:
" :b auto-completes any open buffer

" TAG JUMPING:
command! MakeTags !ctags -R .

" NOW WE CAN:
" - Use ^] to jump to tag under cursor
" - Use g^] for ambiguous tags
" - Use ^t to jump back up the tag stack
"
" THINGS TO CONSIDER
" - This doesn't help if you want a visual list of tags
