local lualine_setup = { "nvim-lualine/lualine.nvim" }

lualine_setup.dependencies = {
  "folke/tokyonight.nvim",
  "nvim-tree/nvim-web-devicons",
}

lualine_setup.lazy = false

lualine_setup.opts = {
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
  tabline = {
    lualine_a = { "buffers" },
    lualine_x = { "tabs" },
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

function lualine_setup.config(_, opts)
  require("lualine").setup(opts)
end

return lualine_setup
