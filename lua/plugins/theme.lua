local setup = { "projekt0n/github-nvim-theme" }

setup.name = "github-theme"
setup.lazy = false
setup.priority = 1000
setup.opts = {}

setup.config = function()
  require("github-theme").setup {}

  vim.cmd "colorscheme github_light_default"
end

return setup
