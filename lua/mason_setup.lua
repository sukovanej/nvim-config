local mason_setup = { "williamboman/mason.nvim" }

mason_setup.dependencies = {
  "williamboman/mason-lspconfig.nvim",
}

function mason_setup.config()
  require("mason").setup()
  require("mason-lspconfig").setup()
end

return mason_setup
