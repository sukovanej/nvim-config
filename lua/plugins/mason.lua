local setup = { "williamboman/mason.nvim" }

setup.dependencies = {
  "williamboman/mason-lspconfig.nvim",
}

function setup.config()
  require("mason").setup()
  require("mason-lspconfig").setup()

  -- vim.fn.sign_define('DapBreakpoint', {text='🛑', texthl='', linehl='', numhl=''})
end

return setup
