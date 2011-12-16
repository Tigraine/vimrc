set nocompatible               " be iMproved
filetype off                   " required!

call pathogen#helptags()
call pathogen#runtime_append_all_bundles()

filetype plugin indent on

"general tabstopp stuff
set ts=4
set sw=4
"set number

"let mapleader = ","
set history=1000
set wildmode=list:longest
set ignorecase
set smartcase

set scrolloff=3

set backupdir=~/.vim-tmp,~/.tmp,~/tmp,/var/tmp,/tmp
set directory=~/.vim-tmp,~/.tmp,~/tmp,/var/tmp,/tmp


syntax enable
set background=dark

colorscheme solarized

:set guifont=Monaco
