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
