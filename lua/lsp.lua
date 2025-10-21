-- show LSP diagnostics as a virtual text
vim.diagnostic.config { virtual_text = true }
vim.o.winborder = "rounded"
vim.lsp.inlay_hint.enable(true)
