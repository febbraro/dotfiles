syntax on
set background=dark
set nocompatible
set showmatch
set guioptions-=T
set vb t_vb=
set ruler
"set virtualedit=all
set number
set linebreak
set incsearch
set hlsearch
set textwidth=100
map! <M-BS> <C-W>

" Indentation
set autoindent
set smartindent
set sw=4
set tabstop=2
set softtabstop=2
set shiftwidth=2
set expandtab

" Stop vim from exiting with status 1.
filetype on


" Set up vim for optimal use with Drupal.
au BufNewFile,BufRead *.engine set filetype=php
au BufNewFile,BufRead *.theme set filetype=php
au BufNewFile,BufRead *.module set filetype=php
au BufNewFile,BufRead *.test set filetype=php
au BufNewFile,BufRead *.install set filetype=php
au BufNewFile,BufRead *.inc set filetype=php
au BufNewFile,BufRead *.profile set filetype=php

" Good completion.
autocmd FileType javascript set omnifunc=javascriptcomplete#CompleteJS
autocmd FileType html set omnifunc=htmlcomplete#CompleteTags
autocmd FileType css set omnifunc=csscomplete#CompleteCSS
autocmd FileType xml set omnifunc=xmlcomplete#CompleteTags
autocmd FileType php set omnifunc=phpcomplete#CompletePHP
autocmd FileType inc set omnifunc=phpcomplete#CompletePHP

" Lots of history / undo.
set history=1000
set undolevels=1000

" Set the terminal title
set title
