local setup = { "neovim/nvim-lspconfig" }

setup.dependencies = {
  "williamboman/mason.nvim",
  "williamboman/mason-lspconfig.nvim",
  "saghen/blink.cmp",
}

function setup.config(_)
  require("mason").setup()
  require("mason-lspconfig").setup {
    ensure_installed = { "lua_ls", "ty" },
  }
end

return setup
