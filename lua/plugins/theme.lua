local setup = { "folke/tokyonight.nvim" }

setup.name = "tokyonight"
setup.lazy = false
setup.priority = 10001
setup.opts = {}

setup.config = function()
  vim.cmd [[colorscheme tokyonight]]
end

return setup
