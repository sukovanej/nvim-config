local telescope_setup = { "nvim-telescope/telescope.nvim" }

telescope_setup.dependencies = { "nvim-lua/plenary.nvim" }

function telescope_setup.config()
  local telescope_builtin = require "telescope.builtin"

  vim.keymap.set("n", "<space><space>", telescope_builtin.find_files)
  vim.keymap.set("n", "<space>a", telescope_builtin.live_grep)
  vim.keymap.set("n", "<space>b", telescope_builtin.buffers)
  vim.keymap.set("n", "gd", telescope_builtin.lsp_definitions, { silent = true })
  vim.keymap.set("n", "gr", telescope_builtin.lsp_references, { silent = true })
  vim.keymap.set("n", "<space>D", telescope_builtin.diagnostics, { silent = true })

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
