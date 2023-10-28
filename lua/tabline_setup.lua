local tabline_setup = { "kdheepak/tabline.nvim" }

tabline_setup.dependencies = { "kyazdani42/nvim-web-devicons" }

function tabline_setup.config()
  require("tabline").setup {
    enable = false,
    options = {
      show_filename_only = false,
      modified_icon = "+ ",
      modified_italic = true,
    },
  }
end

return tabline_setup
