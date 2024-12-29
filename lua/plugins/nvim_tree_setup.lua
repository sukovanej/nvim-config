local setup = { "nvim-tree/nvim-tree.lua" }

function setup.config()
  -- disable netrw at the very start of your init.lua
  vim.g.loaded_netrw = 1
  vim.g.loaded_netrwPlugin = 1

  -- optionally enable 24-bit colour
  vim.opt.termguicolors = true

  local nvim_tree = require "nvim-tree"
  local api = require "nvim-tree.api"

  -- empty setup using defaults
  nvim_tree.setup()

  -- OR setup with some options
  nvim_tree.setup {
    sort = {
      sorter = "case_sensitive",
    },
    view = {
      width = 60,
    },
    renderer = {
      group_empty = true,
    },
    filters = {
      dotfiles = true,
    },
  }

  vim.keymap.set("n", "<C-d>", api.tree.toggle, { silent = true })
end

return setup
