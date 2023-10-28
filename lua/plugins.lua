local lazypath = vim.fn.stdpath "data" .. "/lazy/lazy.nvim"

if not vim.loop.fs_stat(lazypath) then
  vim.fn.system {
    "git",
    "clone",
    "--filter=blob:none",
    "https://github.com/folke/lazy.nvim.git",
    "--branch=stable", -- latest stable release
    lazypath,
  }
end

vim.opt.rtp:prepend(lazypath)

local plugins = {
  "christoomey/vim-tmux-navigator",
  "tpope/vim-surround",
  "tpope/vim-repeat",
  "hashivim/vim-terraform",
  require "tokyonight_setup",
  require "lsp_config_setup",
  require "cmp_setup",
  require "lualine_setup",
  require "tabline_setup",
  require "telescope_setup",
  require "tree_sitter_setup",
  "JoosepAlviste/nvim-ts-context-commentstring",
  {
    "kyazdani42/nvim-web-devicons",
    config = function()
      require("nvim-web-devicons").setup {}
    end,
  },
  require "rust_tools_setup",
  require "neogit_setup",
  require "gitsigns_setup",
  require "toggleterm_setup",
  "famiu/bufdelete.nvim",
  "stevearc/dressing.nvim",
  "eandrju/cellular-automaton.nvim",
  "github/copilot.vim",
  "NoahTheDuke/vim-just",
}

require("lazy").setup(plugins)
