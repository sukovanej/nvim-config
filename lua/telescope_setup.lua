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
    },
  },
  pickers = {
    find_files = {
      theme = "dropdown",
      hidden = true,
    },
    buffers = {
      theme = "dropdown",
    },
    live_grep = {
      theme = "dropdown",
    },
  },
}
