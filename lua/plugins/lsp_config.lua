local setup = { "neovim/nvim-lspconfig" }

setup.dependencies = {
  "williamboman/mason.nvim",
  "williamboman/mason-lspconfig.nvim",
  "saghen/blink.cmp",
}

function setup.config(_)
  local capabilities = require("blink.cmp").get_lsp_capabilities()

  require("mason").setup()
  require("mason-lspconfig").setup {
    ensure_installed = { "lua_ls", "ty" },
    handlers = {
      -- Default handler for all servers
      function(server_name)
        require("lspconfig")[server_name].setup {
          capabilities = capabilities,
        }
      end,

      -- Custom handler for lua_ls to avoid workspace warnings
      ["lua_ls"] = function()
        require("lspconfig").lua_ls.setup {
          capabilities = capabilities,
          settings = {
            Lua = {
              diagnostics = {
                globals = { "vim" },
              },
              workspace = {
                library = vim.api.nvim_get_runtime_file("", true),
                checkThirdParty = false,
              },
              telemetry = { enable = false },
            },
          },
        }
      end,
    },
  }
end

return setup
