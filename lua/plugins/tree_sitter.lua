local setup = { "nvim-treesitter/nvim-treesitter" }

setup.lazy = false
setup.build = ":TSUpdate"

setup.cmd = { "TSUpdateSync", "TSUpdate", "TSInstall" }

local parsers = {
  "bash",
  "c",
  "css",
  "csv",
  "dockerfile",
  "fish",
  "git_config",
  "git_rebase",
  "gitattributes",
  "gitignore",
  "go",
  "gomod",
  "gosum",
  "gotmpl",
  "haskell",
  "html",
  "ini",
  "javascript",
  "jinja",
  "jq",
  "json",
  "json5",
  "just",
  "lua",
  "markdown",
  "markdown_inline",
  "make",
  "nix",
  "python",
  "rust",
  "sql",
  "terraform",
  "toml",
  "tsx",
  "typescript",
  "typst",
  "vim",
  "vimdoc",
  "yaml",
  "zig",
  -- "wisp",
}

setup.config = function()
  require("nvim-treesitter").setup()
  require("nvim-treesitter").install(parsers)

  vim.api.nvim_create_autocmd("FileType", {
    callback = function(ev)
      pcall(vim.treesitter.start, ev.buf)
    end,
  })
end

return setup
