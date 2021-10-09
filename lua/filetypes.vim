" Python
autocmd FileType python setlocal ts=4 sts=4 sw=4 expandtab " formating for html files

" Markdown
let g:vim_markdown_folding_disabled = 1
let g:tex_conceal = ""
let g:indentLine_conceallevel = 0

" Yaml
autocmd FileType yaml setlocal ts=2 sts=2 sw=2 expandtab " formating for yaml files

" Typescript + Javascript
au BufNewFile,BufRead *.scss setlocal filetype=sass
au BufNewFile,BufRead *.ts setlocal filetype=typescript
au BufNewFile,BufRead *.tsx setlocal filetype=typescript.tsx
au BufNewFile,BufRead .babelrc setlocal filetype=json
au BufNewFile,BufRead .eslintrc setlocal filetype=json

autocmd FileType javascript setlocal ts=2 sts=2 sw=2 expandtab " formating for ts files
autocmd FileType typescript setlocal ts=2 sts=2 sw=2 expandtab " formating for ts files
autocmd FileType typescript.tsx setlocal ts=2 sts=2 sw=2 expandtab " formating for ts files
autocmd FileType vue setlocal ts=2 sts=2 sw=2 expandtab " formating for vue files
autocmd FileType sass setlocal ts=2 sts=2 sw=2 expandtab " formating for sass files
autocmd FileType html setlocal ts=2 sts=2 sw=2 expandtab " formating for html files
let g:yats_host_keyword = 1

" Haskell
au BufNewFile,BufRead *.hs setlocal filetype=haskell

" Tmux conf
au BufNewFile,BufRead *.conf.local setlocal filetype=conf

" lua
autocmd FileType lua setlocal ts=2 sts=2 sw=2 expandtab " formating for ts files
