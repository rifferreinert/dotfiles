set nocompatible
"configure vundle
filetype off
" set the runtime path to include Vundle and initialize
set rtp+=~/.vim/bundle/vundle/
call vundle#rc()
" alternatively, pass a path where Vundle should install bundles
"let path = '~/some/path/here'
"call vundle#rc(path)

" let Vundle manage Vundle, required
Bundle 'kien/ctrlp.vim'

filetype plugin indent on     " required

syntax on
" configure spacing
set expandtab
set tabstop=4
set shiftwidth=4
set softtabstop=4
set smartindent

"configure interface
set number
set ruler

"configure search
set ignorecase
set smartcase

set wildmenu

"ctags
set tags=/home/ben/Code/networks/chitcp/tags
