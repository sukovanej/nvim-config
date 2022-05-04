local lua_cmd = function(cmd)
  return "<cmd>lua " + cmd + "<cr>"
end

-- Telescope
vim.api.nvim_set_keymap("n", "<space><space>", lua_cmd "require('telescope.builtin').find_files()", { noremap = true })
vim.api.nvim_set_keymap("n", "<space>a", lua_cmd "require('telescope.builtin').live_grep()", { noremap = true })
vim.api.nvim_set_keymap("n", "<space>b", lua_cmd "require('telescope.builtin').buffers()", { noremap = true })

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
vim.cmd [[nnoremap gc :bdelete<cr>]]
vim.cmd [[nnoremap gn :bn<cr>]]
vim.cmd [[nnoremap gN :bp<cr>]]

-- Delete all buffers but the current
vim.cmd [[command! BufOnly execute '%bdelete|edit #|normal `"']]
vim.cmd [[nnoremap gC :BufOnly<cr>]]

-- Terminal
vim.cmd [[tnoremap <Esc> <C-\><C-n>]]

-- LSP
vim.cmd [[nnoremap <silent> gd <cmd>lua vim.lsp.buf.definition()<CR>]]
vim.cmd [[nnoremap <silent> <space>f <cmd>lua vim.lsp.buf.formatting()<CR>]]
vim.cmd [[nnoremap <silent> K  <cmd>lua vim.lsp.buf.hover()<CR>]]
vim.cmd [[nnoremap <silent> C-K <cmd>lua vim.lsp.buf.signature_help()<CR>]]
vim.cmd [[nnoremap <silent> gR <cmd>lua vim.lsp.buf.rename()<CR>]]
vim.cmd [[nnoremap <silent> gr <cmd>lua vim.lsp.buf.references()<CR>>]]
vim.cmd [[nnoremap <silent> <space>ca <cmd>lua vim.lsp.buf.code_action()<CR>]]
vim.cmd [[nnoremap <silent> <space>e <cmd>lua vim.diagnostic.open_float(0, {scope="line"})<CR>]]

-- LSP code diagnostics
vim.cmd [[nnoremap <silent> [d <cmd>lua vim.lsp.diagnostic.goto_prev()<CR>]]
vim.cmd [[nnoremap <silent> ]d <cmd>lua vim.lsp.diagnostic.goto_next()<CR>]]

-- Git
vim.cmd [[nnoremap <silent> <space>gr <cmd>Gitsigns reset_hunk<CR>]]
vim.cmd [[vnoremap <silent> <space>gr <cmd>'<,'>Gitsigns reset_hunk<CR>]]
vim.cmd [[nnoremap <silent> <space>gs <cmd>lua require("neogit").open({ kind = "split" })<CR>]]
vim.cmd [[nnoremap <silent> <space>gc <cmd>Neogit commit<CR>]]

-- Toggleterm
vim.cmd [[tnoremap <C-q> <cmd>:ToggleTerm<CR>]]
vim.cmd [[nnoremap <C-q> <cmd>:ToggleTerm<CR>]]
