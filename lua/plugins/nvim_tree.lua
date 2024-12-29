local setup = { "nvim-tree/nvim-tree.lua" }

setup.keys = {
  {
    "<C-d>",
    function()
      require("nvim-tree.api").tree.toggle()
    end,
    mode = "n",
  },
}

function setup.config()
  -- disable netrw at the very start of your init.lua
  vim.g.loaded_netrw = 1
  vim.g.loaded_netrwPlugin = 1

  -- optionally enable 24-bit colour
  vim.opt.termguicolors = true

  require("nvim-tree").setup {
    sort = {
      sorter = "case_sensitive",
    },
    view = {
      side = "right",
      width = 60,
    },
    renderer = {
      group_empty = true,
    },
    filters = {
      dotfiles = true,
    },
  }
end

return setup
