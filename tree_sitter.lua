require'nvim-treesitter.configs'.setup {
  highlight = {
    enable = true,
    disable = {},
  },
  indent = {
    enable = false,
    disable = {},
  },
  ensure_installed = {
    "tsx",
    "toml",
    "fish",
    "python",
    "json",
    "yaml",
    "rust",
    "html",
    "scss",
    "scss",
    "lua",
  },
}
