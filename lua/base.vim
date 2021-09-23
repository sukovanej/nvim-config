" TextEdit might fail if hidden is not set.
set hidden

" Some servers have issues with backup files, see #649.
set nobackup
set nowritebackup

" Having longer updatetime (default is 4000 ms = 4 s) leads to noticeable
" delays and poor user experience.
set updatetime=300

set encoding=UTF-8
set termguicolors
set mouse=a
set clipboard=unnamedplus
set number
set relativenumber
let mapleader = ','
let maplocalleader=","
set nocompatible

set smartcase

filetype plugin indent on
set tabstop=4
set shiftwidth=4
set expandtab 
set nowrap
set scrolloff=10 " Gap from the top/bottom when scrolling
set splitbelow " Natural split
set splitright " Natural split
set undofile " Maintain undo history between sessions
set undodir=~/.vim/undodir
set foldnestmax=2

" Always show the signcolumn, otherwise it would shift the text each time
" diagnostics appear/become resolved.
if has("patch-8.1.1564")
  " Recently vim can merge signcolumn and number column into one
  set signcolumn=number
else
  set signcolumn=yes
endif

" rainbow parentheses
let g:rainbow_active = 1

" Ack - use ag is installed
if executable('ag')
  let g:ackprg = 'ag --vimgrep'
endif

