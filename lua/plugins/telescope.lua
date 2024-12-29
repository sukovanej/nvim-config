local setup = { "nvim-telescope/telescope.nvim" }

setup.dependencies = { "nvim-lua/plenary.nvim" }

setup.keys = {
  {
    "<space><space>",
    function()
      require("telescope.builtin").find_files()
    end,
    desc = "Find files",
  },
  {
    "<space>a",
    function()
      require("telescope.builtin").live_grep()
    end,
    desc = "Live grep",
  },
  {
    "<space>b",
    function()
      require("telescope.builtin").buffers()
    end,
    desc = "Buffers",
  },
  {
    "gd",
    function()
      require("telescope.builtin").lsp_definitions()
    end,
    desc = "LSP definitions",
  },
  {
    "gr",
    function()
      require("telescope.builtin").lsp_references()
    end,
    desc = "LSP references",
  },
}

function setup.config()
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

return setup
