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
Bundle 'leafgarland/typescript-vim'
call vundle#end()
filetype plugin indent on     " required

"syntax
syntax on
let g:syntastic_mode_map = { 'mode' : 'active',
    \ 'active_filetypes': [],
    \ 'passive_filetypes': []}
let g:syntastic_php_checkers = ['php', 'phpcs', 'phpmd']

" configure spacing
autocmd Filetype html setlocal ts=2 sts=2 sw=2 et
autocmd Filetype python setlocal ts=4 sts=4 sw=4 et
autocmd Filetype javascript setlocal ts=2 sts=2 sw=2 et
autocmd Filetype typescript setlocal ts=2 sts=2 sw=2 et
autocmd Filetype php setlocal ts=4 sts=4 sw=4 et

"automatically indent
filetype indent on
set smartindent
set autoindent

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
