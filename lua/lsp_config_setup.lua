local lsp_config_setup = { "neovim/nvim-lspconfig" }

lsp_config_setup.dependencies = {
  "williamboman/mason.nvim",
  "williamboman/mason-lspconfig.nvim",
  "hrsh7th/cmp-nvim-lsp",
}

function lsp_config_setup.config()
  local mason_lspconfig = require "mason-lspconfig"
  local lspconfig = require "lspconfig"

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

  -- lspconfig.ruff_lsp.setup({
  --   on_attach = function(_, bufnr)
  --     vim.api.nvim_create_autocmd("BufWritePre", {
  --       buffer = bufnr,
  --       command = "EslintFixAll",
  --     })
  --   end,
  -- })
end

return lsp_config_setup
