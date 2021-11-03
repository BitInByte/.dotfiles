function! ToggleTerminal()
  if !exists("g:term_toggle_buf")
    "echo "Exist"
    :term
    "echo bufnr("$")
    let g:term_toggle_buf = bufnr("$")
    exe ":" . g:term_toggle_buf . "b"
  "endif
  "echo mode()
  "echo g:term_toggle_buf
  "if mode() == 't'
  elseif &buftype == 'terminal'
    exe "normal \<C-O>"
    "echo 'Im in terminal'
  else
    "echo 'Opening Terminal'
    exe ":" . g:term_toggle_buf . "b"
  endif
endfunction

nnoremap <leader>k :call ToggleTerminal()<CR>
