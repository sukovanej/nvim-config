local setup = { "f-person/auto-dark-mode.nvim" }

setup.dependencies = {
  require("plugins.theme").name,
}
setup.name = "auto-dark-mode"
setup.lazy = false
setup.priority = 10001
setup.opts = {}

setup.config = function()
  local auto_dark_mode = require "auto-dark-mode"

  auto_dark_mode.setup {
    update_interval = 1000,
    set_dark_mode = function()
      vim.cmd[[colorscheme Carbonfox]]
    end,
    set_light_mode = function()
      vim.cmd[[colorscheme Dayfox]]
    end,
  }
end

return setup
