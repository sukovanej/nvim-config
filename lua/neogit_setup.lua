neogit_setup = { "TimUntersberger/neogit" }

neogit_setup.dependencies = { "nvim-lua/plenary.nvim" }

function neogit_setup.config()
  require("neogit").setup()
end

return neogit_setup
