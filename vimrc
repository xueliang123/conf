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
let g:ycm_server_python_interpreter='/usr/bin/python'
let g:go_highlight_functions = 1
let g:go_highlight_methods = 1
let g:go_highlight_structs = 1
let g:go_highlight_operators = 1
let g:go_highlight_build_constraints = 1

nmap nt :NERDTree<cr>
nmap nu :set norelativenumber<cr>
nmap nh :nohl<cr>

set nocompatible              " be iMproved, required
filetype off                  " required

autocmd VimEnter * NERDTree
wincmd w
autocmd VimEnter * wincmd w   " auto put cursor to the right area
autocmd BufEnter * if 0 == len(filter(range(1, winnr('$')), 'empty(getbufvar(winbufnr(v:val), "&bt"))')) | qa! | endif  " 当退出的是最后一个窗口时关闭所有vim窗口
autocmd BufWritePost,FileWritePost *.go execute 'Lint' | cwindow

" set the runtime path to include Vundle and initialize
set rtp+=$GOPATH/src/golang.org/x/lint/misc/vim
set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()
Bundle 'kien/ctrlp.vim'
Plugin 'fatih/vim-go'
Bundle 'scrooloose/nerdtree'
Plugin 'bling/vim-airline'
Plugin 'vim-airline/vim-airline-themes'
Plugin 'Valloric/YouCompleteMe'
call vundle#end()
filetype plugin indent on
