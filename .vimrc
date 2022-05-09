syntax on " Syntax highlighting
filetype plugin indent on
set showmatch " Shows matching brackets
set ruler " Always shows location in file (line#)
set number
set relativenumber
set smarttab " Autotabs for certain code
set shiftwidth=4
set tabstop=4
set expandtab

noremap <expr> k (v:count == 0 ? 'gk' : 'k')
noremap <expr> j (v:count == 0 ? 'gj' : 'j')

call plug#begin()
Plug 'sainnhe/everforest'
call plug#end()

if has('termguicolors')
    set termguicolors
endif
set background=dark
let g:everforest_background = 'soft'
let g:everforest_better_performance = 1
colorscheme everforest
