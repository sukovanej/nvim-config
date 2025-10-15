local setup = { "nvim-treesitter/nvim-treesitter" }

setup.lazy = false
setup.build = ":TSUpdate"
setup.event = { "VeryLazy" }
setup.init = function(plugin)
  -- PERF: add nvim-treesitter queries to the rtp and it's custom query predicates early
  -- This is needed because a bunch of plugins no longer `require("nvim-treesitter")`, which
  -- no longer trigger the **nvim-treeitter** module to be loaded in time.
  -- Luckily, the only thins that those plugins need are the custom queries, which we make available
  -- during startup.
  require("lazy.core.loader").add_to_rtp(plugin)
  require "nvim-treesitter.query_predicates"
end

setup.cmd = { "TSUpdateSync", "TSUpdate", "TSInstall" }
setup.keys = {
  { "<C-=>", desc = "Increment selection" },
  { "<c-->", desc = "Decrement selection", mode = "x" },
}

setup.opts = {
  highlight = { enable = true },
  ensure_installed = {
    "bash", "c", "css", "csv", "dockerfile", "fish", "git_config", "git_rebase", "gitattributes",
    "gitignore", "go", "gomod", "gosum", "gotmpl", "haskell", "html", "ini", "javascript",
    "jinja", "jq", "json", "json5", "just", "lua", "markdown", "markdown_inline",
    "make", "nix", "python", "rust", "sql", "terraform", "toml", "tsx",
    "typescript", "typst", "vim", "vimdoc", "yaml", "zig"
  },
  -- indent doesn't work well for me for Python
  -- indent = { enable = true },
  rainbow = { enable = true },
  autotag = { enable = true },
  -- ignore_install = { "phpdoc" },
  incremental_selection = {
    enable = true,
    keymaps = {
      init_selection = "<C-=>",
      node_incremental = "<C-=>",
      scope_incremental = false,
      node_decremental = "<c-->",
    },
  },
}

setup.config = function(_, opts)
  require("nvim-treesitter.configs").setup(opts)
end

return setup
