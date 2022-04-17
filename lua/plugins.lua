vim.cmd [[packadd packer.nvim]]

return require("packer").startup(function(use)
  -- Packer can manage itself
  use "wbthomason/packer.nvim"

  -- tmux navigation
  use "christoomey/vim-tmux-navigator"

  -- vim-surround + repeat
  use "tpope/vim-surround"
  use "tpope/vim-repeat"

  -- Terraform
  use "hashivim/vim-terraform"

  -- Theme
  use "folke/tokyonight.nvim"

  -- Lsp
  use "neovim/nvim-lspconfig"
  use "williamboman/nvim-lsp-installer"
  use "jose-elias-alvarez/null-ls.nvim"

  -- Lualine
  use "nvim-lualine/lualine.nvim"

  -- Tabline
  use {
    "kdheepak/tabline.nvim",
    requires = { "nvim-lualine/lualine.nvim", "kyazdani42/nvim-web-devicons" },
  }

  -- Telescope
  use {
    "nvim-telescope/telescope.nvim",
    requires = { { "nvim-lua/plenary.nvim" } },
  }

  -- Syntax highlight
  use "nvim-treesitter/nvim-treesitter"
  use "JoosepAlviste/nvim-ts-context-commentstring"
  use "p00f/nvim-ts-rainbow"

  -- Icons
  use "kyazdani42/nvim-web-devicons"

  -- Completion
  use "hrsh7th/nvim-cmp"
  use "hrsh7th/cmp-nvim-lsp"
  use "onsails/lspkind-nvim"
  use "saadparwaiz1/cmp_luasnip"
  use "L3MON4D3/LuaSnip"

  -- Git
  use { "TimUntersberger/neogit", requires = "nvim-lua/plenary.nvim" }
  use { 'sindrets/diffview.nvim', requires = 'nvim-lua/plenary.nvim' }
  use "lewis6991/gitsigns.nvim"

  -- Rust
  use "simrat39/rust-tools.nvim"

  -- Scala
  use { "scalameta/nvim-metals", requires = { "nvim-lua/plenary.nvim" } }
end)
