local saga = require 'lspsaga'
local protocol = require 'vim.lsp.protocol'
local completion_icons = require 'completion_icons'
local lsp_installer = require "nvim-lsp-installer"

-- protocol.CompletionItemKind = completion_icons.completion_icons

-- Add additional capabilities supported by nvim-cmp
local capabilities = vim.lsp.protocol.make_client_capabilities()
capabilities = require('cmp_nvim_lsp').update_capabilities(capabilities)

lsp_installer.on_server_ready(function(server)
  local opts = {
    -- on_attach = completion.on_attach,
    flags = {
      debounce_text_changes = 150,
    },
    capabilities = capabilities,
  }

  if server.name == "sumneko_lua" then
    opts.settings = {
      sumneko_lua = {
        Lua = {
          diagnostics = {
            globals = { 'vim' }
          }
        }
      }
    }
  elseif server.name == "pyright" then
    -- nothing
  end

  server:setup(opts)
  vim.cmd [[ do User LspAttachBuffers ]]
end)

saga.init_lsp_saga()
