vim.o.cursorline = true
vim.o.updatetime = 300
vim.o.mouse = "a"
vim.o.clipboard = "unnamedplus"
vim.o.number = true
vim.o.relativenumber = true

vim.o.ignorecase = true
vim.o.smartcase = true

vim.o.tabstop = 4
vim.o.shiftwidth = 4
vim.o.expandtab = true
vim.o.wrap = false

-- Gap from the top/bottom when scrolling
vim.o.scrolloff = 10

vim.o.splitbelow = true
vim.o.splitright = true

vim.o.undofile = true
vim.o.undodir = vim.fn.expand "~/.vim/undodir"

-- Keep text from shifting when diagnostics appear
vim.o.signcolumn = "yes"

-- One statusline for all windows
vim.o.laststatus = 3

vim.o.winborder = "rounded"

vim.diagnostic.config {
  virtual_text = true,
  jump = {
    on_jump = function(diagnostic, bufnr)
      if diagnostic then
        vim.diagnostic.open_float { bufnr = bufnr, scope = "cursor", focus = false }
      end
    end,
  },
}

-- neovim/neovim#36318 breaks inlay hints with multiple LSP clients. The fix (#40569) is on master, with no 0.12 backport.
-- vim.lsp.inlay_hint.enable(true)
