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
Plugin 'slim-template/vim-slim'
Bundle 'elzr/vim-json'
Bundle 'vim-ruby/vim-ruby'
Bundle 'tpope/vim-sensible'
Bundle 'tpope/vim-fugitive'
Bundle 'tpope/vim-commentary'
Plugin 'Yggdroot/indentLine'

call vundle#end()
filetype plugin indent on     " required

" remove trailing whitespace
:nnoremap <silent> <F5> :let _s=@/ <Bar> :%s/\s\+$//e <Bar> :let @/=_s <Bar> :nohl <Bar> :unlet _s <CR>

"syntax
syntax on
let g:syntastic_mode_map = { 'mode' : 'active',
    \ 'active_filetypes': [],
    \ 'passive_filetypes': []}
let g:syntastic_php_checkers = ['php', 'phpcs', 'phpmd']
let g:syntastic_typescript_checkers = ['tslint', 'tsc']
let g:syntastic_javascript_checkers = ['eslint']
let g:syntastic_python_checkers = ['pylint']
let g:syntastic_ruby_checkers = ['rubocop']
let g:syntastic_typescript_tsc_args = "--experimentalDecorators"

" configure spacing
autocmd Filetype html setlocal ts=2 sts=2 sw=2 et
autocmd Filetype python setlocal ts=4 sts=4 sw=4 et
autocmd Filetype javascript setlocal ts=2 sts=2 sw=2 et
autocmd Filetype ruby setlocal ts=2 sts=2 sw=2 et
autocmd Filetype json setlocal ts=2 sts=2 sw=2 et
autocmd Filetype typescript setlocal ts=2 sts=2 sw=2 et
autocmd Filetype php setlocal ts=4 sts=4 sw=4 et

"automatically indent
set smartindent

"configure interface
set number
if has('mouse')
    set mouse=a
endif
set title

"configure search
set ignorecase
set smartcase

"use utf-8
set encoding=utf8
set fileencoding=utf8

set clipboard=unnamed

set history=1000
