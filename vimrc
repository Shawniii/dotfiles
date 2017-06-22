source ~/.vim/sources/vundle.vim

syntax enable
filetype plugin indent on

source ~/.vim/sources/powerline.vim
source ~/.vim/sources/javascript.vim
source ~/.vim/sources/ruby.vim

autocmd InsertEnter * set cursorline
autocmd InsertLeave * set nocursorline

"Mappings========================================================

"set Leader key to semicolon
let mapleader=";"

"NERDtree
nnoremap <leader>m :NERDTreeToggle<CR>

"NO-OP arrow keys
nnoremap <left> <Nop>
nnoremap <right> <Nop>
nnoremap <up> <Nop>
nnoremap <down> <Nop>

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
nnoremap <leader>i3 :e ~/.config/i3/config<CR>

"=================================================================
set path+=**
set wildmenu

set autoread

set ruler

set timeoutlen=1000 ttimeoutlen=0
colorscheme onedark

set tabstop=4
set ignorecase
set smartcase
set hlsearch
set incsearch
set lazyredraw
set showmatch
set autoindent
set smartindent

set relativenumber
set number
