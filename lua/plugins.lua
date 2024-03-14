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
  "tpope/vim-surround",
  "tpope/vim-repeat",
  "hashivim/vim-terraform",
  require "tokyonight_setup",
  require "lsp_config_setup",
  require "null_ls_setup",
  require "mason_setup",
  require "cmp_setup",
  require "lualine_setup",
  require "telescope_setup",
  require "tree_sitter_setup",
  require "devicons_setup",
  require "rust_tools_setup",
  require "neogit_setup",
  require "gitsigns_setup",
  require "toggleterm_setup",
  "famiu/bufdelete.nvim",
  "github/copilot.vim",
  "NoahTheDuke/vim-just",
  "mfussenegger/nvim-dap",
  "jay-babu/mason-nvim-dap.nvim",
  'HiPhish/debugpy.nvim',
  require "nvim_dap",
}

require("lazy").setup(plugins)

vim.cmd [[colorscheme tokyonight-moon]]
