local setup = { "neovim/nvim-lspconfig" }

setup.dependencies = {
  "williamboman/mason.nvim",
  "williamboman/mason-lspconfig.nvim",
  "saghen/blink.cmp",
}

function setup.config(_)
  -- local mason_lspconfig = require "mason-lspconfig"
  -- local lspconfig = require "lspconfig"
  -- local blink = require "blink.cmp"

  -- mason_lspconfig.setup_handlers {
  --   -- The first entry (without a key) will be the default handler
  --   -- and will be called for each installed server that doesn't have
  --   -- a dedicated handler.
  --   function(server_name, config) -- default handler (optional)
  --     lspconfig[server_name].setup {
  --       flags = {
  --         debounce_text_changes = 150,
  --       },
  --       capabilities = blink.get_lsp_capabilities(),
  --     }
  --   end,
  --   ["ts_ls"] = function()
  --     lspconfig.ts_ls.setup {
  --       on_attach = function(client, _)
  --         client.server_capabilities.documentformattingprovider = false
  --         client.server_capabilities.documentrangeformattingprovider = false
  --       end,
  --     }
  --   end,
  -- }
  require("mason").setup()
  require("mason-lspconfig").setup {
    ensure_installed = { "lua_ls", "ty" },
  }

  local lspconfig = require "lspconfig"
  local capabilities = require("blink.cmp").get_lsp_capabilities()

  -- require('mason-lspconfig').setup_handlers {
  --     -- The first entry (without a key) will be the default handler.
  --     -- This will be called for all servers that are not handled by a specific handler.
  --     function (server_name)
  --         lspconfig[server_name].setup {
  --             capabilities = capabilities
  --             -- Add other common server configurations here
  --         }
  --     end,
  --     -- Specific handlers for certain servers
  --     ["lua_ls"] = function ()
  --         lspconfig.lua_ls.setup {
  --             capabilities = capabilities,
  --             settings = {
  --                 Lua = {
  --                     diagnostics = {
  --                         globals = {'vim'},
  --                     },
  --                 },
  --             },
  --         }
  --     end,
  --     -- ... other custom server setups
  -- }
end

return setup
