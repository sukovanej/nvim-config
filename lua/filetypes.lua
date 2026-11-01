vim.g.tex_conceal = ""

vim.api.nvim_create_autocmd("FileType", {
  pattern = {
    "css",
    "haskell",
    "html",
    "javascript",
    "json",
    "lua",
    "sass",
    "scss",
    "typescript",
    "typescriptreact",
    "vue",
    "yaml",
  },
  callback = function(ev)
    local bo = vim.bo[ev.buf]
    bo.tabstop, bo.softtabstop, bo.shiftwidth = 2, 2, 2
  end,
})

vim.filetype.add {
  extension = {
    MD = "markdown",
  },
  pattern = {
    [".*%.conf%.local"] = "conf",
    [".+%.env%..+"] = "sh",
  },
}
