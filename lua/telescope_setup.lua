local telescope_setup = { "nvim-telescope/telescope.nvim" }

telescope_setup.dependencies = { "nvim-lua/plenary.nvim" }

function telescope_setup.config()
  require("telescope").setup {
    defaults = {
      file_ignore_patterns = {
        ".stack%-work",
        ".git",
        "./.yarn/releases/",
        "dist%-newstyle",
        ".venv",
        ".mypy_cache",
        ".pytest_cache",
        "__pycache__",
        "node_modules",
      },
      path_display = {
        "truncate",
      },
    },
  }
end

return telescope_setup
