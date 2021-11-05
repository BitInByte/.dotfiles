" Remove every white spaces in our code credits: The Primeagen
" fun! TrimWhitespace()
  " let l:save = winsaveview()
  " keeppatterns %s/\s\+$//e
  " call winrestview(l:save)
" endfun

" augroup THE_PRIMEAGEN
  " autocmd!
  " autocmd BufWritePre * :call TrimWhitespace()
" augroup END
