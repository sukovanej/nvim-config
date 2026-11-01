local setup = { "folke/snacks.nvim" }

setup.priority = 10000
setup.lazy = false

setup.opts = {
  indent = { enabled = true },
  input = { enabled = true },
  notifier = { enabled = true },
  statuscolumn = { enabled = true },
  words = { enabled = true },
}

setup.keys = {
  -- buffers
  {
    "g-",
    function()
      Snacks.bufdelete()
    end,
    desc = "Delete buffer",
  },
  {
    "g=",
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

  -- lazy git
  {
    "<space>l",
    function()
      Snacks.lazygit()
    end,
    desc = "Lazygit",
  },
  {
    "<space>L",
    function()
      Snacks.lazygit.log()
    end,
    desc = "Lazygit",
  },

  -- files, buffers, searching
  {
    "<space><space>",
    function()
      Snacks.picker.files { hidden = true }
    end,
    desc = "Search in files",
  },
  {
    "<space>b",
    function()
      Snacks.picker.buffers()
    end,
    desc = "Search in buffers",
  },
  {
    "<space>a",
    function()
      Snacks.picker.grep { hidden = true }
    end,
    desc = "Grep",
  },
  {
    "<C-e>",
    function()
      Snacks.explorer { layout = { layout = { position = "right" } } }
    end,
    desc = "File explorer",
  },
  {
    "<C-f>",
    function()
      Snacks.picker.lines()
    end,
    desc = "Search lines in current buffer",
  },
  {
    "<space>w",
    function()
      Snacks.picker.grep_word()
    end,
    desc = "Grep current word",
  },

  -- LSP
  {
    "gd",
    function()
      Snacks.picker.lsp_definitions()
    end,
    desc = "LSP definitions",
  },
  {
    "grr",
    function()
      Snacks.picker.lsp_references()
    end,
    desc = "LSP references (overrides the builtin vim.lsp.buf.references())",
  },
  {
    "gO",
    function()
      Snacks.picker.lsp_symbols()
    end,
    desc = "LSP symbols (overrides the builtin vim.lsp.buf.document_symbol())",
  },
  {
    "<space>e",
    function()
      vim.diagnostic.open_float(nil, {
        wrap = true,
        max_width = 80,
        focus = true,
      })
    end,
    desc = "Show line diagnostics (wrapped)",
  },
}

setup.init = function()
  vim.api.nvim_create_autocmd("LspProgress", {
    callback = function(ev)
      local spinner = { "⠋", "⠙", "⠹", "⠸", "⠼", "⠴", "⠦", "⠧", "⠇", "⠏" }
      vim.notify(vim.lsp.status(), "info", {
        id = "lsp_progress",
        title = "LSP Progress",
        opts = function(notif)
          notif.icon = ev.data.params.value.kind == "end" and " "
            or spinner[math.floor(vim.uv.hrtime() / (1e6 * 80)) % #spinner + 1]
        end,
      })
    end,
  })

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
