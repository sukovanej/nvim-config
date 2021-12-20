require('telescope').setup{
  pickers = {
    find_files = {
      theme = "dropdown",
    },
    buffers = {
      theme = "dropdown",
    },
    live_grep = {
      theme = "dropdown",
    }
  }
  -- defaults = {
  --   -- Default configuration for telescope goes here:
  --   -- config_key = value,
  --   mappings = {
  --     i = {
  --       ["<C-j>"] = "C-n"
  --     }
  --   }
  -- }
}
