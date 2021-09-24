local saga = require 'lspsaga'
local completion = require 'completion'
local protocol = require 'vim.lsp.protocol'
local completion_icons = require 'completion_icons'
local lsp_installer = require "nvim-lsp-installer"

protocol.CompletionItemKind = completion_icons.completion_icons

local on_attach = function(client, bufnr)
  completion.on_attach(client, bufnr)
end

local language_settings = {
    sumneko_lua = {
        Lua = {
            diagnostics = {
                globals = { 'vim' }
            }
        }
    }
}

lsp_installer.on_server_ready(function(server)
  local opts = {
    on_attach = on_attach,
    flags = {
      debounce_text_changes = 150,
    },
    settings=language_settings[server]
  }

  -- (optional) Customize the options passed to the server
  -- if server.name == "tsserver" then
  --     opts.root_dir = function() ... end
  -- end

  -- This setup() function is exactly the same as lspconfig's setup function (:help lspconfig-quickstart)
  server:setup(opts)
  vim.cmd [[ do User LspAttachBuffers ]]
end)

saga.init_lsp_saga()
