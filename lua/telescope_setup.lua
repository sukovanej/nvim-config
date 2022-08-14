require("telescope").setup {
  defaults = {
    file_ignore_patterns = {
      ".stack%-work",
      ".git",
      "./.yarn/releases/",
      "dist%-newstyle",
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
