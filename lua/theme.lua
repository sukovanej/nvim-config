vim.cmd [[set t_Co=256]]

require("tabline").setup {
  enable = false,
  options = {
    show_filename_only = false,
    modified_icon = "+ ",
    modified_italic = true,
  },
}

require("lualine").setup {
  options = {
    theme = "auto",
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
  tabline = {
    lualine_c = { require("tabline").tabline_buffers },
    lualine_x = { require("tabline").tabline_tabs },
  },
}

-- Common
vim.cmd [[syntax on]]
vim.cmd [[syntax enable]]

-- Tokyonight theme settings
vim.g.tokyonight_style = "night"
vim.g.tokyonight_italic_functions = true
vim.g.tokyonight_sidebars = { "qf", "vista_kind", "terminal", "packer" }

vim.g.tokyonight_colors = { hint = "orange", error = "#ff0000" }

vim.cmd [[colorscheme tokyonight]]
