set nocompatible
"configure vundle
filetype off
" set the runtime path to include Vundle and initialize
set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()
" alternatively, pass a path where Vundle should install bundles
"let path = '~/some/path/here'
"call vundle#rc(path)

" let Vundle manage Vundle, required
Bundle 'kien/ctrlp.vim'
Bundle 'scrooloose/syntastic'
call vundle#end()
filetype plugin indent on     " required

"syntax
syntax on
let g:syntastic_mode_map = { 'mode' : 'active',
    \ 'active_filetypes': [],
    \ 'passive_filetypes': []}
let g:syntastic_php_checkers = ['php', 'phpcs', 'phpmd']

" configure spacing
set expandtab
set tabstop=4
set shiftwidth=4
set softtabstop=4

"automatically indent
filetype indent on
set smartindent
set autoindent

"folding
set foldmethod=syntax

"configure interface
set number
set ruler
if has('mouse')
    set mouse=a
endif
set title
set wildmenu

"configure search
set ignorecase
set smartcase

"use utf-8
set encoding=utf8
set fileencoding=utf8

"use current file's directory
set autochdir

set history=1000

"ctags
set tags=tags;
