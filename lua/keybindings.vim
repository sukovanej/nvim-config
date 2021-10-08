" navigate pop up with <C-j> and <C-k>
inoremap <expr> <C-j> pumvisible() ? "\<C-n>" : "\<C-j>"
inoremap <expr> <C-k> pumvisible() ? "\<C-p>" : "\<C-k>"

" Fzf
nnoremap <space><space> :FZF<cr>
nnoremap <space>a :Ag<cr>
nnoremap <space>b :Buffers<cr>

" clean selection
nnoremap <C-c><C-c> :noh<cr>

" windows movement
nnoremap <C-j> <C-w>j
nnoremap <C-k> <C-w>k
nnoremap <C-l> <C-w>l
nnoremap <BS> <C-w>h  " https://github.com/neovim/neovim/issues/2048#issuecomment-77159983
nnoremap <C-h> <C-w>h

" :W = :w
command W w

" Delete current buffer
nnoremap gc :bdelete<cr>

" Next buffer
nnoremap gn :bn<cr>

" Previous buffer
nnoremap gN :bp<cr>

" Delete all buffers but the current
command! BufOnly execute '%bdelete|edit #|normal `"'
nnoremap gC :BufOnly<cr>

" Terminal
tnoremap <Esc> <C-\><C-n>

" Python
" autocmd FileType python nnoremap <leader>p :Pytest file verbose<cr>
" autocmd FileType python nnoremap <leader>i :CocCommand pyright.organizeimports<cr>

" LSP
nnoremap <silent> gd <cmd>lua vim.lsp.buf.definition()<CR>
nnoremap <silent><space>f <cmd>lua vim.lsp.buf.formatting()<CR>
nnoremap <silent> gh <cmd>lua require'lspsaga.provider'.lsp_finder()<CR>
nnoremap <silent> gs :Lspsaga signature_help<CR>
nnoremap <silent> K  :Lspsaga hover_doc<CR>
nnoremap <silent> gR :Lspsaga rename<CR>
nnoremap <silent> gD :Lspsaga preview_definition<CR>
nnoremap <silent> gr <cmd>lua vim.lsp.buf.references()<CR>

nnoremap <silent><space>ca :Lspsaga code_action<CR>

nnoremap <silent> <space>cd :Lspsaga show_line_diagnostics<CR>
