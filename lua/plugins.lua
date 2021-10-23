-- This file can be loaded by calling `lua require('plugins')` from your init.vim

-- Only required if you have packer configured as `opt`
vim.cmd [[packadd packer.nvim]]

return require('packer').startup(function(use)
  -- Packer can manage itself
  use 'wbthomason/packer.nvim'

  -- Prisma syntax hightlighting
  use 'pantharshit00/vim-prisma'

  -- Haskell
  use 'pbrisbin/vim-syntax-shakespeare'

  -- tmux navigation
  use 'christoomey/vim-tmux-navigator'

  -- vim-surround + repeat
  use 'tpope/vim-surround'
  use 'tpope/vim-repeat'

  -- clojure
  use 'Olical/conjure'  -- conjure
  use 'guns/vim-sexp'  -- something like paredit
  use 'tpope/vim-sexp-mappings-for-regular-people'  -- syrup

  -- search
  use 'mileszs/ack.vim'

  -- Theme
  use 'srcery-colors/srcery-vim'
  use 'hashivim/vim-terraform' -- Terraform plugin

  -- Lsp
  use 'neovim/nvim-lspconfig'
  use 'williamboman/nvim-lsp-installer'

  -- airline
  use 'vim-airline/vim-airline'
  use 'vim-airline/vim-airline-themes'

  -- Fzf
  use 'junegunn/fzf' -- function() vim.call('fzf#install()') end
  use 'junegunn/fzf.vim'

  -- Syntax highlight
  use 'nvim-treesitter/nvim-treesitter'
  use 'JoosepAlviste/nvim-ts-context-commentstring'
  use 'p00f/nvim-ts-rainbow'

  -- Icons
  use 'ryanoasis/vim-devicons'

  -- Completion
  -- Plug 'nvim-lua/completion-nvim'
  use 'hrsh7th/nvim-cmp' -- Autocompletion plugin
  use 'hrsh7th/cmp-nvim-lsp' -- LSP source for nvim-cmp
  use 'onsails/lspkind-nvim' -- Autocomplete icons

end)
