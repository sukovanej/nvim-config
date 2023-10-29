local lualine_setup = { "nvim-lualine/lualine.nvim" }

lualine_setup.dependencies = { "kdheepak/tabline.nvim", "folke/tokyonight.nvim" }

function lualine_setup.config()
  local tabline = require "tabline"

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
    tabline = {
      lualine_c = { tabline.tabline_buffers },
      lualine_x = { tabline.tabline_tabs },
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
end

return lualine_setup
