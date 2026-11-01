local setup = { "nvim-lualine/lualine.nvim" }

setup.dependencies = "nvim-tree/nvim-web-devicons"

setup.opts = {
  sections = {
    lualine_a = { "filename" },
    lualine_c = {
      {
        "filename",
        file_status = true, -- displays file status (readonly status, modified status)
        path = 1, -- 0 = just filename, 1 = relative path, 2 = absolute path
      },
    },
  },
  tabline = {
    lualine_a = { "buffers" },
    lualine_x = { "tabs" },
  },
  winbar = {
    lualine_c = { "filename" },
  },
  inactive_winbar = {
    lualine_c = { "filename" },
  },
}

return setup
