" Use K to show documentation in preview window.
nnoremap <silent> K :call <SID>show_documentation()<CR>

function! s:show_documentation()
  if (index(['vim','help'], &filetype) >= 0)
    execute 'h '.expand('<cword>')
  elseif (coc#rpc#ready())
    call CocActionAsync('doHover')
  else
    execute '!' . &keywordprg . " " . expand('<cword>')
  endif
endfunction

" use <c-space> to trigger completion.
inoremap <silent><expr> <c-space> coc#refresh()

" go to definition
nmap <silent> gd <Plug>(coc-definition)

" find references
nmap <silent> gr <Plug>(coc-references)

" List problems
nnoremap <silent> <space>d :<C-u>CocList diagnostics<cr>

" Remap keys for applying codeAction to the current line.
nmap <space>ac <Plug>(coc-codeaction)

" Apply AutoFix to problem on the current line.
nmap <space>qf <Plug>(coc-fix-current)

" Highlight on hover
" autocmd CursorHold * silent call CocActionAsync('highlight')

" Format
nnoremap <space>f :call CocAction('format')<cr>
