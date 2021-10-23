-- Fzf
vim.cmd [[nnoremap <space><space> :FZF<cr>]]
vim.cmd [[nnoremap <space>a :Ag<cr>]]
vim.cmd [[nnoremap <space>b :Buffers<cr>]]

-- clean selection
vim.cmd [[nnoremap <C-c><C-c> :noh<cr>]]

-- windows movement
vim.cmd [[nnoremap <C-j> <C-w>j]]
vim.cmd [[nnoremap <C-k> <C-w>k]]
vim.cmd [[nnoremap <C-l> <C-w>l]]
-- https://github.com/neovim/neovim/issues/2048#issuecomment-77159983
vim.cmd [[nnoremap <BS> <C-w>h]]
vim.cmd [[nnoremap <C-h> <C-w>h]]

-- :W = :w
vim.cmd [[command W w]]

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

-- LSP code diagnostics
vim.cmd [[nnoremap <silent> [d <cmd>lua vim.lsp.diagnostic.goto_prev()<CR>]]
vim.cmd [[nnoremap <silent> ]d <cmd>lua vim.lsp.diagnostic.goto_next()<CR>]]
