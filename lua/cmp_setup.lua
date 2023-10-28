cmp_setup = { "hrsh7th/nvim-cmp" }

cmp_setup.dependencies = {
  "hrsh7th/cmp-nvim-lsp",
  "onsails/lspkind-nvim",
  "saadparwaiz1/cmp_luasnip",
  "L3MON4D3/LuaSnip",
}

function cmp_setup.config()
  local lspkind = require "lspkind"
  local cmp = require "cmp"

  vim.o.completeopt = "menuone,noselect"

  local luasnip = require "luasnip"

  cmp.setup {
    snippet = {
      expand = function(args)
        luasnip.lsp_expand(args.body)
      end,
    },
    mapping = {
      ["<C-p>"] = cmp.mapping.select_prev_item(),
      ["<C-n>"] = cmp.mapping.select_next_item(),
      ["<C-k>"] = cmp.mapping.select_prev_item(),
      ["<C-j>"] = cmp.mapping.select_next_item(),
      ["<C-d>"] = cmp.mapping.scroll_docs(-4),
      ["<C-f>"] = cmp.mapping.scroll_docs(4),
      ["<C-Space>"] = cmp.mapping.complete(),
      ["<C-e>"] = cmp.mapping.close(),
      ["<CR>"] = cmp.mapping.confirm {
        behavior = cmp.ConfirmBehavior.Replace,
        select = true,
      },
    },
    sources = {
      { name = "nvim_lsp" },
      -- { name = 'luasnip' },
    },
    formatting = {
      format = lspkind.cmp_format { with_text = false, maxwidth = 50 },
    },
  }
end

return cmp_setup
