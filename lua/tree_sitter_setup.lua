local tree_sitter_setup = { "nvim-treesitter/nvim-treesitter" }

tree_sitter_setup.lazy = false
tree_sitter_setup.build = ":TSUpdate"
tree_sitter_setup.event = { "VeryLazy" }
tree_sitter_setup.init = function(plugin)
  -- PERF: add nvim-treesitter queries to the rtp and it's custom query predicates early
  -- This is needed because a bunch of plugins no longer `require("nvim-treesitter")`, which
  -- no longer trigger the **nvim-treeitter** module to be loaded in time.
  -- Luckily, the only thins that those plugins need are the custom queries, which we make available
  -- during startup.
  require("lazy.core.loader").add_to_rtp(plugin)
  require "nvim-treesitter.query_predicates"
end

tree_sitter_setup.cmd = { "TSUpdateSync", "TSUpdate", "TSInstall" }
tree_sitter_setup.keys = {
  { "<C-=>", desc = "Increment selection" },
  { "<c-->", desc = "Decrement selection", mode = "x" },
}

tree_sitter_setup.opts = {
  highlight = { enable = true },
  ensure_installed = "all",
  -- indent doesn't work well for me for Python
  -- indent = { enable = true },
  rainbow = { enable = true },
  autotag = { enable = true },
  context_commentstring = { enable = true },
  ignore_install = { "phpdoc" },
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

tree_sitter_setup.config = function(_, opts)
  require("nvim-treesitter.configs").setup(opts)
end

return tree_sitter_setup
