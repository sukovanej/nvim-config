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
  words = { enabled = true },
}

setup.keys = {
  -- buffers
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
  -- terminal
  {
    "<C-t>",
    function()
      Snacks.terminal()
    end,
    mode = { "n", "i", "t" },
    desc = "Toggle terminal",
  },
  {
    "<space>tn",
    function()
      Snacks.terminal.open()
    end,
    mode = { "n", "i", "t" },
    desc = "Toggle terminal",
  },
  -- lazy git
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
  -- files
  {
    "<space><space>",
    function()
      Snacks.picker.files()
    end,
    mode = { "n" },
    desc = "Search in files",
  },
  {
    "<space>b",
    function()
      Snacks.picker.buffers()
    end,
    mode = { "n" },
    desc = "Search in buffers",
  },
  {
    "<space>a",
    function()
      Snacks.picker.grep()
    end,
    mode = { "n" },
    desc = "Grep",
  },
  -- LSP
  {
    "gd",
    function()
      Snacks.picker.lsp_definitions()
    end,
    mode = { "n" },
    desc = "LSP definitions",
  },
  {
    "gr",
    function()
      Snacks.picker.lsp_references()
    end,
    mode = { "n" },
    desc = "Picker files",
  },
}

setup.config = function()
  vim.api.nvim_create_autocmd("LspProgress", {
    callback = function(ev)
      local spinner = { "⠋", "⠙", "⠹", "⠸", "⠼", "⠴", "⠦", "⠧", "⠇", "⠏" }
      vim.notify(vim.lsp.status(), "info", {
        id = "lsp_progress",
        title = "LSP Progress",
        opts = function(notif)
          notif.icon = ev.data.params.value.kin== "end" and " "
              or spinner[math.floor(vim.uv.hrtime() / (1e6 * 80)) % #spinner + 1]
        end,
      })
    end,
  })
end

setup.init = function()
  vim.api.nvim_create_autocmd("User", {
    pattern = "VeryLazy",
    callback = function()
      vim._print = function(_, ...)
        Snacks.debug.inspect(...)
      end
    end,
  })
end

return setup
