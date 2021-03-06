local lsp_installer = require "nvim-lsp-installer"

-- protocol.CompletionItemKind = completion_icons.completion_icons

-- Add additional capabilities supported by nvim-cmp
local capabilities = vim.lsp.protocol.make_client_capabilities()
capabilities = require("cmp_nvim_lsp").update_capabilities(capabilities)

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
      Lua = {
        diagnostics = {
          globals = { "vim" },
        },
      },
    }
    opts.on_attach = function(client, _)
      client.resolved_capabilities.document_formatting = false
      client.resolved_capabilities.document_range_formatting = false
    end
  elseif server.name == "pyright" then
    -- nothing
  elseif server.name == "tsserver" then
    -- for tsserver use formatting capability from the null-ls instead
    opts.on_attach = function(client, _)
      client.resolved_capabilities.document_formatting = false
      client.resolved_capabilities.document_range_formatting = false
    end
  end

  server:setup(opts)
  vim.cmd [[ do User LspAttachBuffers ]]
end)

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
  --   if client.resolved_capabilities.document_formatting then
  --     vim.cmd "autocmd BufWritePre <buffer> lua vim.lsp.buf.formatting_sync()"
  --   end
  -- end,
}
