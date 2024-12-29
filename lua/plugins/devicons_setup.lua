local setup = { "nvim-tree/nvim-web-devicons" }

setup.opts = {}

function setup.config(_, opts)
  require("nvim-web-devicons").setup(opts)
end

return setup
