local Plug = vim.fn['plug#']

vim.call('plug#begin', '~/.config/nvim/plugged')

-- Prisma syntax hightlighting
Plug 'pantharshit00/vim-prisma'

-- Haskell
Plug 'pbrisbin/vim-syntax-shakespeare'

-- tmux navigation
Plug 'christoomey/vim-tmux-navigator'

-- vim-surround + repeat
Plug 'tpope/vim-surround'
Plug 'tpope/vim-repeat'

-- clojure
Plug 'Olical/conjure'  -- conjure
Plug 'guns/vim-sexp'  -- something like paredit
Plug 'tpope/vim-sexp-mappings-for-regular-people'  -- syrup

-- search
Plug 'mileszs/ack.vim'

-- Theme
Plug 'bluz71/vim-nightfly-guicolors'
Plug 'EdenEast/nightfox.nvim'

-- Terraform plugin
Plug 'hashivim/vim-terraform'

-- Lsp
Plug 'neovim/nvim-lspconfig'
Plug 'glepnir/lspsaga.nvim'
Plug 'williamboman/nvim-lsp-installer'

-- airline
Plug 'vim-airline/vim-airline'
Plug 'vim-airline/vim-airline-themes'

-- Fzf
Plug('junegunn/fzf', {['do'] = function() vim.call('fzf#install()') end })
Plug 'junegunn/fzf.vim'

-- Syntax highlight
Plug('nvim-treesitter/nvim-treesitter', {['do'] = function() vim.call(':TSUpdate') end})
Plug 'JoosepAlviste/nvim-ts-context-commentstring'
Plug 'p00f/nvim-ts-rainbow'

-- Icons
Plug 'ryanoasis/vim-devicons'

-- Completion
Plug 'nvim-lua/completion-nvim'

vim.call('plug#end')
