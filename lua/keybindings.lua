-- clean selection
vim.api.nvim_set_keymap("n", "<C-c><C-c>", ":noh<cr>", { noremap = true, desc = "Clean selection" })

-- windows movement
vim.api.nvim_set_keymap("n", "<C-j>", "<C-w>j", { noremap = true, desc = "Swich window (down)" })
vim.api.nvim_set_keymap("n", "<C-k>", "<C-w>k", { noremap = true, desc = "Swich window (up)" })
vim.api.nvim_set_keymap("n", "<C-l>", "<C-w>l", { noremap = true, desc = "Swich window (right)" })
vim.api.nvim_set_keymap("n", "<C-h>", "<C-w>h", { noremap = true, desc = "Swich window (left)" })

-- :W = :w
vim.cmd [[command W w]]
vim.cmd [[command Wq wq]]
vim.cmd [[command Wqa wqa]]

-- Basic buffer key bindings
vim.keymap.set("n", "}", vim.cmd.bnext, { silent = true, desc = "Next buffer" })
vim.keymap.set("n", "{", vim.cmd.bprevious, { silent = true, desc = "Previous buffer" })

-- LSP
vim.keymap.set("n", "<space>f", vim.lsp.buf.format, { silent = true, desc = "Format buffer (LSP)" })
vim.keymap.set("n", "<space>]", vim.diagnostic.goto_next, { silent = true, desc = "Go to next diagnostic (LSP)" })
vim.keymap.set("n", "<space>[", vim.diagnostic.goto_prev, { silent = true, desc = "Go to previous diagnostic (LSP)" })
vim.keymap.set("n", "gra", vim.lsp.buf.code_action, { silent = true, desc = "Code action (overrides the builtin vim.lsp.buf.code_action())" })
