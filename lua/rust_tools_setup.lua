local rust_tools_setup = { "simrat39/rust-tools.nvim" }

rust_tools_setup.dependencies = { "onsails/lspkind-nvim", "saadparwaiz1/cmp_luasnip", "L3MON4D3/LuaSnip" }

function rust_tools_setup.config()
  require("rust-tools").setup {
    inlay_hints = {
      -- wheter to show parameter hints with the inlay hints or not
      show_parameter_hints = true,

      -- prefix for parameter hints
      parameter_hints_prefix = ":: ",

      -- prefix for all the other hints (type, chaining)
      other_hints_prefix = ":: ",
      right_align = false,
    },
  }
end

return rust_tools_setup
