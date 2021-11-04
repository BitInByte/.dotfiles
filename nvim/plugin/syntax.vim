" function! <SID>SynStack()
    " if !exists("*synstack")
        " return
    " endif
    " echo map(synstack(line('.'), col('.')), 'synIDattr(v:val, "name")')
" endfunc

" function! CheckIt()
    " if !exists("*synstack")
        " echo "Doesnt exist"
        " return
    " endif
    " echo "It have"
    " echo map(synstack(line('.'), col('.')), 'synIDattr(v:val, "name")')
" endfunction

nnoremap <space>; :TSHighlightCapturesUnderCursor<CR>
