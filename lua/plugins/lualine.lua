local setup = { "nvim-lualine/lualine.nvim" }

setup.dependencies = {
  require("plugins.theme").name,
  "nvim-tree/nvim-web-devicons",
}

setup.lazy = false

setup.opts = {
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
    lualine_c = { "filename" },
  },
  inactive_winbar = {
    lualine_c = { "filename" },
  },
}

function setup.config(_, opts)
  require("lualine").setup(opts)
end

return setup
