require("telescope").setup {
  defaults = {
    file_ignore_patterns = { "node_modules/", ".git/" },
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
