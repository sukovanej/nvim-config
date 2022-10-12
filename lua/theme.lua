vim.cmd [[set t_Co=256]]

require("lualine").setup {
  options = {
    theme = "tokyonight",
  },
  sections = {
    lualine_c = {
      {
        "filename",
        file_status = true, -- displays file status (readonly status, modified status)
        path = 1, -- 0 = just filename, 1 = relative path, 2 = absolute path
      },
    },
  },
  winbar = {
    lualine_a = {},
    lualine_b = {},
    lualine_c = { "filename" },
    lualine_x = {},
    lualine_y = {},
    lualine_z = {},
  },
  inactive_winbar = {
    lualine_a = {},
    lualine_b = {},
    lualine_c = { "filename" },
    lualine_x = {},
    lualine_y = {},
    lualine_z = {},
  },
}

-- Common
vim.cmd [[syntax on]]
vim.cmd [[syntax enable]]

-- Tokyonight
vim.cmd [[colorscheme tokyonight-moon]]
