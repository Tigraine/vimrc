set nocompatible               " be iMproved
filetype off                   " required!

call pathogen#helptags()
call pathogen#runtime_append_all_bundles()

filetype plugin indent on

"general tabstopp stuff
set ts=2
set sw=2
"set number

let $JS_CMD='node'

let mapleader = ","
set history=1000
set wildmode=list:longest
set ignorecase
set smartcase
set ruler
set autoindent
set showmatch
set incsearch
set hls

set scrolloff=3

set backupdir=~/.vim-tmp,~/.tmp,~/tmp,/var/tmp,/tmp
set directory=~/.vim-tmp,~/.tmp,~/tmp,/var/tmp,/tmp


syntax enable
set background=dark

colorscheme vibrantink

:set guifont=Monaco:h12

"if has("gui_macvim")
"	macm File.New\ Tab key=<nop>
"	nmap <D-t> :CommandT<CR>
"endif

map <leader>c :s/^/#<CR>

let g:Tex_ViewRule_pdf = 'Preview'

"autocmd VimEnter * NERDTree
"autocmd VimEnter * wincmd p

:set cursorline

:nnoremap <CR> :nohlsearch<cr>

:imap <c-j> <%=
:imap <c-k> <space>%>
:imap <c-l> <space>=><space>
