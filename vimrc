call plug#begin()

" Some colorschemes
Plug 'sainnhe/everforest' " forest green-blue bg, red and many shades of green
Plug 'arcticicestudio/nord-vim' " Cobalt blue bg, ice blue, light green
Plug 'joshdick/onedark.vim' " Gray bg, pink, lightgreen, orange

" Allows fuzzy find files
Plug 'junegunn/fzf.vim'

" Type pairs of things
Plug 'jiangmiao/auto-pairs'

call plug#end()

set termguicolors
set background=dark

" ---- Basics ----
set nocompatible
set number
set cursorline
set relativenumber
set hidden

" ---- Indentation (C++) ----
set autoindent
set smartindent
set tabstop=4
set shiftwidth=4
set expandtab

" ---- Search ----
set ignorecase
set smartcase
set incsearch
set hlsearch

" ---- Editing comfort ----
set backspace=indent,eol,start
set wrap
set linebreak

" ---- Quality of life ----
set clipboard=unnamedplus
set pastetoggle=<F2>
set undofile

" ---- Style ----
syntax on
filetype plugin indent on

" ---- Mapping ----
let mapleader = " " 

" ---- Normal Mode ----

" Navigate buffer
nnoremap <leader>n :bnext<CR>
nnoremap <leader>p :bprev<CR>

" Requires netrw (built-in) or NERDTree plugin
nnoremap <leader>e :Ex<CR>

" Fuzzy file finder, Requires fzf.vim plugin
nnoremap <leader>s :Files<CR>

" Toggle terminal
nnoremap <leader>t :terminal<CR>

" Open vimrc
nnoremap <leader>, :e $MYVIMRC<CR>

" ---- Insert Mode ----

" Escape + save (jk / kj / JK / KJ)
inoremap jk <Esc>:w<CR>
inoremap JK <Esc>:w<CR>

call plug#end()

silent! colorscheme onedark 
