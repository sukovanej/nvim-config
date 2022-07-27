require("nvim-treesitter.configs").setup {
  highlight = { enable = true },
  ensure_installed = "all",
  -- indent doesn't work well for me for Python
  -- indent = { enable = true },
  rainbow = { enable = true },
  autotag = { enable = true },
  context_commentstring = { enable = true },
  ignore_install = { "phpdoc" },
}
