-- TextEdit might fail if hidden is not set.
vim.cmd [[set hidden]]

-- Highlight the current line
vim.cmd [[set cursorline]]

-- Some servers have issues with backup files, see #649.
vim.cmd [[set nobackup]]
vim.cmd [[set nowritebackup]]

-- Having longer updatetime (default is 4000 ms = 4 s) leads to noticeable
-- delays and poor user experience.
vim.cmd [[set updatetime=300]]

vim.cmd [[set encoding=UTF-8]]
vim.cmd [[set termguicolors]]
vim.cmd [[set mouse=a]]
vim.cmd [[set clipboard+=unnamedplus]]
vim.cmd [[set number]]
vim.cmd [[set relativenumber]]
vim.cmd [[let mapleader = ',']]
vim.cmd [[let maplocalleader=","]]
vim.cmd [[set nocompatible]]

vim.cmd [[set smartcase]]

vim.cmd [[filetype plugin indent on]]
vim.cmd [[set tabstop=4]]
vim.cmd [[set shiftwidth=4]]
vim.cmd [[set expandtab ]]
vim.cmd [[set nowrap]]

-- Gap from the top/bottom when scrolling
vim.cmd [[set scrolloff=10]]

-- Natural split
vim.cmd [[set splitbelow]]
-- Natural split
vim.cmd [[set splitright]]

-- Maintain undo history between sessions
vim.cmd [[set undofile]]
vim.cmd [[set undodir=~/.vim/undodir]]
vim.cmd [[set foldnestmax=2]]

-- Always show the signcolumn, otherwise it would shift the text each time
-- diagnostics appear/become resolved.
-- Recently vim can merge signcolumn and number column into one
vim.cmd [[
if has("patch-8.1.1564")
  set signcolumn=number
else
  set signcolumn=yes
endif
]]

-- rainbow parentheses
vim.g.rainbow_active = 1

-- Ack - use ag is installed
vim.cmd [[
if executable('ag')
  let g:ackprg = 'ag --vimgrep'
endif
]]

vim.opt_global.shortmess:remove "F"

vim.cmd [[set laststatus=3]]

-- hide command bar by default
vim.o.ch = 0

-- Theme
vim.cmd [[set t_Co=256]]
vim.cmd [[syntax on]]
vim.cmd [[syntax enable]]
