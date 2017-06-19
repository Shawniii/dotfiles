"Vundle setup===================================================
set nocompatible              " be iMproved, required
filetype off                  " required

" set the runtime path to include Vundle and initialize
set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()

Plugin 'VundleVim/Vundle.vim'
Plugin 'tpope/vim-fugitive'
Plugin 'scrooloose/nerdtree'
Plugin 'roosta/srcery'
Plugin 'tpope/vim-surround'
Plugin 'vim-syntastic/syntastic'
Plugin 'kien/ctrlp.vim'

call vundle#end()            " required

filetype plugin indent on    " required
"=================================================================

python3 from powerline.vim import setup as powerline_setup
python3 powerline_setup()
python3 del powerline_setup
set rtp+=/usr/local/lib/python3.5/site-packages/powerline/bindings/vim
set laststatus=2
set t_Co=256


"Mappings

"set Leader key to semicolon
let mapleader=";"

"NO-OP arrow keys
nnoremap <left> <Nop>
nnoremap <right> <Nop>
nnoremap <up> <Nop>
nnoremap <down> <Nop>

inoremap <left> <Nop>
inoremap <right> <Nop>
inoremap <up> <Nop>
inoremap <down> <Nop> 

vnoremap <left> <Nop>
vnoremap <right> <Nop>
vnoremap <up> <Nop>
vnoremap <down> <Nop> 

"Window movement
nnoremap <C-j> <C-w>j 
nnoremap <C-k> <C-w>k 
nnoremap <C-h> <C-w>h 
nnoremap <C-l> <C-w>l 

"quickedit 
nnoremap <leader>vrc :e ~/.vimrc<CR>
nnoremap <leader>brc :e ~/.bashrc<CR>

syntax enable
filetype plugin on
filetype indent on

set path+=**
set wildmenu

set autoread

set ruler

colorscheme srcery

set ignorecase
set smartcase
set hlsearch
set incsearch
set lazyredraw
set showmatch

"set foldcolumn=1

set relativenumber
set number
