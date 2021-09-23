local nvim_lsp = require 'lspconfig'
local saga = require 'lspsaga'
local completion = require 'completion'
local protocol = require 'vim.lsp.protocol'
local lspinstall = require 'lspinstall'
local completion_icons = require('completion_icons')

protocol.CompletionItemKind = completion_icons.completion_icons

-- Use an on_attach function to only map the following keys
-- after the language server attaches to the current buffer
local on_attach = function(client, bufnr)
  -- autocomplete
  completion.on_attach(client, bufnr)
end

lspinstall.setup()
local servers = lspinstall.installed_servers()

for _, lsp in ipairs(servers) do
  nvim_lsp[lsp].setup {
    on_attach = on_attach,
    flags = {
      debounce_text_changes = 150,
    }
  }
end

saga.init_lsp_saga()
