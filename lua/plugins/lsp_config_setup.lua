local setup = { "neovim/nvim-lspconfig" }

setup.dependencies = {
  "williamboman/mason.nvim",
  "williamboman/mason-lspconfig.nvim",
  "saghen/blink.cmp",
}

function setup.config(_)
  local mason_lspconfig = require "mason-lspconfig"
  local lspconfig = require "lspconfig"
  local blink = require "blink.cmp"

  mason_lspconfig.setup_handlers {
    -- The first entry (without a key) will be the default handler
    -- and will be called for each installed server that doesn't have
    -- a dedicated handler.
    function(server_name, config) -- default handler (optional)
      lspconfig[server_name].setup {
        flags = {
          debounce_text_changes = 150,
        },
        capabilities = blink.get_lsp_capabilities(),
      }
    end,
    ["ts_ls"] = function()
      lspconfig.ts_ls.setup {
        on_attach = function(client, _)
          client.server_capabilities.documentformattingprovider = false
          client.server_capabilities.documentrangeformattingprovider = false
        end,
      }
    end,
  }

  lspconfig.eslint.setup {
    filetypes = {
      "javascript",
      "javascriptreact",
      "javascript.jsx",
      "typescript",
      "typescriptreact",
      "typescript.tsx",
      "vue",
      "svelte",
      "astro",
      "json",
    },
    on_attach = function(_, bufnr)
      vim.api.nvim_create_autocmd("BufWritePre", {
        buffer = bufnr,
        command = "EslintFixAll",
      })
    end,
  }
end

return setup
