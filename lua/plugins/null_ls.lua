local setup = { "jose-elias-alvarez/null-ls.nvim" }

function setup.config()
  local null_ls = require "null-ls"
  null_ls.setup {
    sources = {
      null_ls.builtins.formatting.stylua.with {
        extra_args = { "--config-path", vim.fn.expand "~/.config/nvim/stylua.toml" },
      },
      null_ls.builtins.code_actions.gitsigns,
    },
  }
end

return setup
