-- Python
vim.cmd [[autocmd FileType python setlocal ts=4 sts=4 sw=4 expandtab]]

-- Markdown
vim.g.vim_markdown_folding_disabled = 1
vim.g.tex_conceal = ""
vim.g.indentLine_conceallevel = 0

-- YAML
vim.cmd [[autocmd FileType yaml setlocal ts=2 sts=2 sw=2 expandtab]]

-- Typescript + Javascript
vim.cmd [[au BufNewFile,BufRead *.scss setlocal filetype=sass]]
vim.cmd [[au BufNewFile,BufRead *.ts setlocal filetype=typescript]]
vim.cmd [[au BufNewFile,BufRead *.tsx setlocal filetype=typescript.tsx]]
vim.cmd [[au BufNewFile,BufRead .babelrc setlocal filetype=json]]
vim.cmd [[au BufNewFile,BufRead .eslintrc setlocal filetype=json]]
vim.cmd [[autocmd FileType javascript setlocal ts=2 sts=2 sw=2 expandtab]]
vim.cmd [[autocmd FileType typescript setlocal ts=2 sts=2 sw=2 expandtab]]
vim.cmd [[autocmd FileType typescript.tsx setlocal ts=2 sts=2 sw=2 expandtab]]

-- Vue
vim.cmd [[autocmd FileType vue setlocal ts=2 sts=2 sw=2 expandtab]]

-- Sass
vim.cmd [[autocmd FileType sass setlocal ts=2 sts=2 sw=2 expandtab]]

-- HTML
vim.cmd [[autocmd FileType html setlocal ts=2 sts=2 sw=2 expandtab]]
vim.g.yats_host_keyword = 1

-- Haskell
vim.cmd [[au BufNewFile,BufRead *.hs setlocal filetype=haskell]]

-- Tmux
vim.cmd [[au BufNewFile,BufRead *.conf.local setlocal filetype=conf]]

-- Lua
vim.cmd [[autocmd FileType lua setlocal ts=2 sts=2 sw=2 expandtab]]
