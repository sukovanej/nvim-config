vim.cmd [[set t_Co=256]]

require'lualine'.setup {
  options = {
    theme = 'auto'
  }
}

-- Common
vim.cmd [[syntax on]]
vim.cmd [[syntax enable]]

require('github-theme').setup({
  theme_style = "dark_default",
  function_style = "italic",
  sidebars = {"qf", "vista_kind", "terminal", "packer"},
})
