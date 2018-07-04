set relativenumber
syntax on
colorscheme molokai
set shiftwidth=4
set softtabstop=4
set tabstop=4
set cursorline
set expandtab
set hlsearch

let g:go_version_warning = 0

nmap nt :NERDTree<cr>
nmap nu :set norelativenumber<cr>
nmap nh :nohl<cr>

set nocompatible              " be iMproved, required
filetype off                  " required

autocmd VimEnter * NERDTree
wincmd w
autocmd VimEnter * wincmd w   " auto put cursor to the right area
autocmd BufEnter * if 0 == len(filter(range(1, winnr('$')), 'empty(getbufvar(winbufnr(v:val), "&bt"))')) | qa! | endif  " 当退出的是最后一个窗>口时关闭所有vim窗口

" set the runtime path to include Vundle and initialize
set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()
Bundle 'kien/ctrlp.vim'
Plugin 'fatih/vim-go'
Bundle 'scrooloose/nerdtree'
Plugin 'bling/vim-airline'
Plugin 'vim-airline/vim-airline-themes'
call vundle#end()
filetype plugin indent on
