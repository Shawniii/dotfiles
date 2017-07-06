source ~/.vim/sources/vundle.vim

syntax enable
filetype plugin indent on

source ~/.vim/sources/abbreviations.vim

source ~/.vim/sources/powerline.vim
source ~/.vim/sources/javascript.vim
source ~/.vim/sources/ruby.vim



"Cursorline always on
set cursorline
augroup cursorline
		autocmd!
		autocmd InsertEnter * set cursorline
		autocmd InsertLeave * set cursorline
augroup END

"Mappings========================================================

"set Leader key to semicolon
let mapleader=","
let maplocalleader=";"

"execute current line in bash and return the output
nnoremap Q !!bash<cr>

"Enter for snip-completion
let g:UltiSnipsExpandTrigger = "<nop>"
inoremap <expr> <CR> pumvisible() ? "<C-R>=UltiSnips#ExpandSnippetOrJump()<CR>" : "\<CR>"

"custom snippets folder
let g:UltiSnipsSnippetsDir="~/.vim/myUltiSnips"
let g:UltiSnipsSnippetDirectories = ['myUltiSnips']

"javascript-mappings
augroup javascript
				autocmd!
				autocmd FileType javascript nnoremap <leader>n :!node <C-r>%<CR>
augroup END

"ruby-mappings

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

"easier moving of codeblocks
vnoremap < >gv
vnoremap > <gv

nnoremap H 0
nnoremap L $

nnoremap << >>
nnoremap >>	<<

"Window movement
nnoremap <C-j> <C-w>j 
nnoremap <C-k> <C-w>k 
nnoremap <C-h> <C-w>h 
nnoremap <C-l> <C-w>l 

nnoremap <C-e> 2<C-e>
nnoremap <C-y> 2<C-y>

"quickedit 
nnoremap <leader>vrc :e! ~/.vimrc<CR>
nnoremap <leader>brc :e! ~/.bashrc<CR>
nnoremap <leader>zrc :e! ~/.zshrc<CR>
nnoremap <leader>i3 :e! ~/.config/i3/config<CR>
nnoremap <leader>tmux :e! ~/.tmux.conf<CR>
noremap <leader>sv :so ~/.vimrc<CR>
"=================================================================

"General
set number
set relativenumber
set path+=**
set wildmenu
set wildignorecase

set autoread
set bs=2
set clipboard=unnamed

colorscheme onedark

set virtualedit=all

set ruler

set timeoutlen=1000 ttimeoutlen=0

set tabstop=4
set shiftwidth=4
set ignorecase
set smartcase
set hlsearch
set incsearch
set lazyredraw
set showmatch
set autoindent
set smartindent
