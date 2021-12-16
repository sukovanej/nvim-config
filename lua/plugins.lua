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

  -- search
  use 'mileszs/ack.vim'

  -- Theme
  use 'srcery-colors/srcery-vim'
  use 'hashivim/vim-terraform' -- Terraform plugin
  use "projekt0n/github-nvim-theme"

  -- Lsp
  use 'neovim/nvim-lspconfig'
  use 'williamboman/nvim-lsp-installer'

  -- airline
  -- use 'vim-airline/vim-airline'
  -- use 'vim-airline/vim-airline-themes'
  use 'nvim-lualine/lualine.nvim'

  -- Fzf
  use 'junegunn/fzf' -- function() vim.call('fzf#install()') end
  use 'junegunn/fzf.vim'
  use {
    'nvim-telescope/telescope.nvim',
    requires = { {'nvim-lua/plenary.nvim'} }
  }

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
  use 'saadparwaiz1/cmp_luasnip' -- Snippets source for nvim-cmp
  use 'L3MON4D3/LuaSnip' -- Snippets plugin

  -- Rust
  use 'simrat39/rust-tools.nvim'

end)
