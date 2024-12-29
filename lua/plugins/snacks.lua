local setup = { "folke/snacks.nvim" }

setup.priority = 10000
setup.lazy = false

setup.opts = {
  bufdelete = { enabled = true },
  terminal = { enabled = true },
  modifier = { enabled = true },
  indent = {
    enabled = true,
    animate = {
      enabled = false,
    },
  },
  statuscolumn = { enabled = true },
  input = {
    enabled = true,
    keys = {
      n_esc = { "<esc>", { "cmp_close", "cancel" }, mode = "n" },
      i_esc = { "<esc>", { "cmp_close", "stopinsert" }, mode = "i" },
      n_cr = { "<cr>", { "cmp_accept", "confirm", "cmp_close" }, mode = { "n" } },
      i_cr = { "<cr>", { "cmp_accept", "confirm", "cmp_close" }, mode = { "i" } },
      i_tab = { "<tab>", { "cmp_select_next", "cmp" }, mode = "i" },
      q = "cancel",
    },
  },
  git = { enabled = true },
  lazygit = { enabled = true },
}

setup.keys = {
  {
    "gc",
    function()
      Snacks.bufdelete()
    end,
    desc = "Delete buffer",
  },
  {
    "gC",
    function()
      Snacks.bufdelete.other()
    end,
    desc = "Delete all but the current buffer",
  },
  {
    "<C-t>",
    function()
      Snacks.terminal()
    end,
    mode = { "n", "i", "t" },
    desc = "Toggle terminal",
  },
  {
    "<space>l",
    function()
      Snacks.lazygit()
    end,
    mode = { "n" },
    desc = "Lazygit",
  },
  {
    "<space>L",
    function()
      Snacks.lazygit.log()
    end,
    mode = { "n" },
    desc = "Lazygit",
  },
}

return setup
