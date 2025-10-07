local setup = { "echasnovski/mini.nvim", version = "*" }

function setup.config()
  require("mini.icons").setup()
  require('mini.bufremove').setup()
  require("mini.files").setup {}
  require("mini.surround").setup()
end

setup.keys = {
  {
    "<C-d>",
    function()
      MiniFiles.open()
    end,
    desc = "Delete buffer",
  },
}

setup.lazy = false

return setup
