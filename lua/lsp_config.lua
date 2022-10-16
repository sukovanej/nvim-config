require("mason").setup()
local mason_lspconfig = require "mason-lspconfig"
mason_lspconfig.setup()
local lspconfig = require "lspconfig"

-- protocol.CompletionItemKind = completion_icons.completion_icons

-- Add additional capabilities supported by nvim-cmp
local capabilities = vim.lsp.protocol.make_client_capabilities()
capabilities = require("cmp_nvim_lsp").default_capabilities(capabilities)

mason_lspconfig.setup_handlers {
  -- The first entry (without a key) will be the default handler
  -- and will be called for each installed server that doesn't have
  -- a dedicated handler.
  function(server_name) -- default handler (optional)
    lspconfig[server_name].setup {
      flags = {
        debounce_text_changes = 150,
      },
      capabilities = capabilities,
    }
  end,
  ["tsserver"] = function()
    lspconfig.tsserver.setup {
      on_attach = function(client, _)
        client.server_capabilities.document_formatting = false
        client.server_capabilities.document_range_formatting = false
      end,
    }
  end,
  ["sumneko_lua"] = function()
    lspconfig.sumneko_lua.setup {
      on_attach = function(client, _)
        client.server_capabilities.document_formatting = false
        client.server_capabilities.document_range_formatting = false
      end,
      settings = {
        Lua = {
          diagnostics = {
            globals = { "vim" },
          },
        },
      },
    }
  end,
}

local null_ls = require "null-ls"
null_ls.setup {
  sources = {
    null_ls.builtins.formatting.stylua.with {
      extra_args = { "--config-path", vim.fn.expand "~/.config/nvim/stylua.toml" },
    },
    null_ls.builtins.formatting.black,
    null_ls.builtins.formatting.isort,
    null_ls.builtins.code_actions.gitsigns,
    null_ls.builtins.formatting.eslint,
  },
  -- on_attach = function(client)
  --   if client.server_capabilities.document_formatting then
  --     vim.cmd "autocmd BufWritePre <buffer> lua vim.lsp.buf.formatting_sync()"
  --   end
  -- end,
}
