-- Server overrides live in after/lsp/. rustaceanvim starts rust-analyzer itself, so it isn't listed here.
return {
  "neovim/nvim-lspconfig",
  config = function()
    vim.lsp.enable { "clangd", "lua_ls", "tsgo", "ty" }
  end,
}
