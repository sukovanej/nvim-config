local neogit_setup = { "TimUntersberger/neogit" }

neogit_setup.dependencies = {
  "nvim-lua/plenary.nvim",
  "nvim-telescope/telescope.nvim",
  "sindrets/diffview.nvim",
  "ibhagwan/fzf-lua",
}

neogit_setup.opts = {}

function neogit_setup.config(_, opts)
  local neogit = require "neogit"

  neogit.setup(opts)

  vim.cmd [[nnoremap <silent> <space>gs <cmd>lua require("neogit").open({ kind = "tab" })<CR>]]
end

return neogit_setup
