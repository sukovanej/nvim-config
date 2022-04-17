require("neogit").setup()
require("gitsigns").setup { current_line_blame = true }

vim.cmd [[nnoremap <silent> <space>gr <cmd>Gitsigns reset_hunk<CR>]]
vim.cmd [[vnoremap <silent> <space>gr <cmd>'<,'>Gitsigns reset_hunk<CR>]]
vim.cmd [[nnoremap <silent> <space>gs <cmd>lua require("neogit").open({ kind = "split" })<CR>]]
vim.cmd [[nnoremap <silent> <space>gc <cmd>Neogit commit<CR>]]
