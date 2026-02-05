local setup = { "projekt0n/github-nvim-theme" }

setup.name = "github-theme"
setup.lazy = false
setup.priority = 1000
setup.opts = {}

setup.config = function()
  require("github-theme").setup {}

  vim.cmd "colorscheme github_light_default"

  -- Customize semantic token highlights (using links for theme compatibility)
  vim.api.nvim_set_hl(0, "@lsp.type.parameter", { link = "@parameter" })
  vim.api.nvim_set_hl(0, "@lsp.type.variable", {}) -- disable, let treesitter handle it
  vim.api.nvim_set_hl(0, "@lsp.type.property", { link = "@property" })
  vim.api.nvim_set_hl(0, "@variable.member", { link = "@property" })
end

return setup
