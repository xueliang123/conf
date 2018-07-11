syntax on
colorscheme molokai

set relativenumber                     " 设置相对行号
set number                             " 设置当前行号
set shiftwidth=4
set softtabstop=4
set tabstop=4
set cursorline
set cursorcolumn
set expandtab
set hlsearch
set completeopt=menu,menuone
set updatetime=100
set hidden

let mapleader = "\<Space>"

let g:ycm_add_preview_to_completeopt = 0
let g:go_version_warning = 0
let g:ycm_server_python_interpreter='/usr/bin/python'
let g:go_highlight_functions = 1
let g:go_highlight_methods = 1
let g:go_highlight_structs = 1
let g:go_highlight_operators = 1
let g:go_highlight_build_constraints = 1
let g:nerdtree_tabs_open_on_console_startup = 1
let NERDTreeIgnore = ['\.pyc$']
let g:airline_theme = "bubblegum"
let g:airline#extensions#tabline#enabled = 1
let g:airline#extensions#branch#enabled = 1
if !exists('g:airline_symbols')
  let g:airline_symbols = {}
endif
let g:airline_symbols.space = "\ua0"

nmap <leader>nt :NERDTree<CR>
nmap <leader>nu :set norelativenumber<CR>
nmap <leader>nh :nohl<CR>
nmap <leader>to :tabo<CR>
nmap <leader>tc :tabc<CR>
nmap <leader>l :bnext<CR>
nmap <leader>h :bprevious<CR>
nmap <leader>bl :ls<CR>
nmap <Leader><Leader> V
nmap <Leader>v <C-v>
nnoremap <leader>w :w<CR>

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
Plugin 'Valloric/YouCompleteMe'
Plugin 'tpope/vim-fugitive'
call vundle#end()
filetype plugin indent on
