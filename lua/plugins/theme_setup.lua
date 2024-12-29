local setup = { "catppuccin/nvim" }

setup.name = "theme"
setup.lazy = false
setup.priority = 10000
setup.opts = {}

setup.config = function()
  vim.cmd.colorscheme "catppuccin-mocha"
end

return setup
