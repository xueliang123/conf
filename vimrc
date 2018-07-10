syntax on
colorscheme molokai

set relativenumber
set number
set shiftwidth=4
set softtabstop=4
set tabstop=4
set cursorline
set cursorcolumn
set expandtab
set hlsearch
set completeopt=menu,menuone
set updatetime=100

let g:ycm_add_preview_to_completeopt = 0
let g:go_version_warning = 0
let g:ycm_server_python_interpreter='/usr/bin/python'
let g:go_highlight_functions = 1
let g:go_highlight_methods = 1
let g:go_highlight_structs = 1
let g:go_highlight_operators = 1
let g:go_highlight_build_constraints = 1
let g:nerdtree_tabs_open_on_console_startup=1
let NERDTreeIgnore = ['\.pyc$']
let g:lightline = {
  \     'active': {
  \         'left': [['mode', 'paste' ], ['readonly', 'filename', 'modified']],
  \         'right': [['lineinfo'], ['percent'], ['fileformat', 'fileencoding']]
  \     }
  \ }

nmap nt :NERDTree<CR>
nmap nu :set norelativenumber<CR>
nmap nh :nohl<CR>
nmap no :tabo<CR>
nmap nc :tabc<CR>

set nocompatible              " be iMproved, required
set backspace=indent,eol,start
filetype off                  " required

autocmd VimEnter * NERDTree
wincmd w
autocmd VimEnter * wincmd w   " auto put cursor to the right area
autocmd StdinReadPre * let s:std_in=1
autocmd VimEnter * if argc() == 0 && !exists("s:std_in") | NERDTree | endif
autocmd BufEnter * if 0 == len(filter(range(1, winnr('$')), 'empty(getbufvar(winbufnr(v:val), "&bt"))')) | qa! | endif  " 当退出的是最后一个窗口时关闭所有vim窗口

" set the runtime path to include Vundle and initialize
set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()
Bundle 'kien/ctrlp.vim'
Plugin 'fatih/vim-go'
Bundle 'scrooloose/nerdtree'
Plugin 'Xuyuanp/nerdtree-git-plugin'
Bundle 'jistr/vim-nerdtree-tabs'
Plugin 'airblade/vim-gitgutter'
Plugin 'bling/vim-airline'
Plugin 'vim-airline/vim-airline-themes'
Plugin 'itchyny/lightline.vim'
Plugin 'Valloric/YouCompleteMe'
call vundle#end()
filetype plugin indent on
