call plug#begin('~/.vim/plugged')

" Prisma syntax hightlighting
Plug 'pantharshit00/vim-prisma'

" Haskell
Plug 'pbrisbin/vim-syntax-shakespeare'

" tmux navigation
Plug 'christoomey/vim-tmux-navigator'

" vim-surround + repeat
Plug 'tpope/vim-surround'
Plug 'tpope/vim-repeat'

" rainbow parentheses
Plug 'luochen1990/rainbow'

" clojure
Plug 'Olical/conjure'  " conjure
Plug 'guns/vim-sexp'  " something like paredit
Plug 'tpope/vim-sexp-mappings-for-regular-people'  " syrup

" search
Plug 'mileszs/ack.vim'

" parentheses
Plug 'kien/rainbow_parentheses.vim'

" Theme
Plug 'bluz71/vim-nightfly-guicolors'
Plug 'EdenEast/nightfox.nvim'

" Terraform plugin
Plug 'hashivim/vim-terraform' 

" Lsp
Plug 'neovim/nvim-lspconfig'
Plug 'glepnir/lspsaga.nvim'
Plug 'kabouzeid/nvim-lspinstall'

" airline
Plug 'vim-airline/vim-airline' " airline
Plug 'vim-airline/vim-airline-themes' " airline

" Fzf
Plug 'junegunn/fzf', { 'do': { -> fzf#install() } }
Plug 'junegunn/fzf.vim'

" Syntax highlight
Plug 'nvim-treesitter/nvim-treesitter', {'do': ':TSUpdate'}

" Icons
Plug 'ryanoasis/vim-devicons'

" Completion
Plug 'nvim-lua/completion-nvim'

call plug#end()
