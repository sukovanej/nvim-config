-- clean selection
vim.api.nvim_set_keymap("n", "<C-c><C-c>", ":noh<cr>", { noremap = true })

-- windows movement
vim.api.nvim_set_keymap("n", "<C-j>", "<C-w>j", { noremap = true })
vim.api.nvim_set_keymap("n", "<C-k>", "<C-w>k", { noremap = true })
vim.api.nvim_set_keymap("n", "<C-l>", "<C-w>l", { noremap = true })

-- https://github.com/neovim/neovim/issues/2048#issuecomment-77159983
vim.api.nvim_set_keymap("n", "<BS>", "<C-w>h", { noremap = true })
vim.api.nvim_set_keymap("n", "<C-h>", "<C-w>h", { noremap = true })

-- :W = :w
vim.cmd [[command W w]]
vim.cmd [[command Wq wq]]
vim.cmd [[command Wqa wqa]]

-- Basic buffer key bindings
vim.cmd [[nnoremap gc :Bdelete<cr>]]
vim.cmd [[nnoremap gn :bn<cr>]]
vim.cmd [[nnoremap gN :bp<cr>]]

-- Delete all buffers but the current
vim.cmd [[command! BufOnly execute '%bdelete|edit #|normal `"']]
vim.cmd [[nnoremap gC :BufOnly<cr>]]

-- Terminal
vim.cmd [[tnoremap <Esc> <C-\><C-n>]]

local open_diagnostics = function()
  vim.diagnostic.open_float(0, { scope = "line" })
end

-- LSP
vim.keymap.set("n", "<space>f", vim.lsp.buf.format, { silent = true })
vim.keymap.set("n", "K", vim.lsp.buf.hover, { silent = true })
vim.keymap.set("n", "C-K", vim.lsp.buf.signature_help, { silent = true })
vim.keymap.set("n", "gR", vim.lsp.buf.rename, { silent = true })
vim.keymap.set("n", "<space>]", vim.diagnostic.goto_next, { silent = true })
vim.keymap.set("n", "<space>.", vim.lsp.buf.code_action, { silent = true })
vim.keymap.set("n", "<space>e", open_diagnostics, { silent = true })

-- Git
vim.cmd [[nnoremap <silent> <space>gr <cmd>Gitsigns reset_hunk<CR>]]
vim.cmd [[vnoremap <silent> <space>gr <cmd>'<,'>Gitsigns reset_hunk<CR>]]
vim.cmd [[nnoremap <silent> <space>gs <cmd>lua require("neogit").open({ kind = "split" })<CR>]]

-- Toggleterm
vim.cmd [[tnoremap <C-q> <cmd>:ToggleTerm<CR>]]
vim.cmd [[nnoremap <C-q> <cmd>:ToggleTerm<CR>]]

vim.api.nvim_set_keymap("n", "<C-d>", ":NvimTreeToggle<CR>", { noremap = true })
