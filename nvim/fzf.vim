if !has('nvim')
  " Fuzzy Find Keybinds and commands
  nnoremap <C-p> :FZF<CR>

  nnoremap <leader>ff :Files<CR>
  nnoremap <leader>fb :Buffers<CR>
  nnoremap <leader>fs :Rg<CR>
  nnoremap <leader>fg :GFiles<CR>

  " Quit FZF with escape key
  autocmd! FileType fzf tnoremap <buffer> <esc> <c-c>

  " FZF Dimensions
  let g:fzf_layout = { 'window': { 'width': 0.9, 'height': 0.9 } }

  " Change syntax colors preview
  " Customize fzf colors to match your color scheme
  let g:fzf_colors =
  \ { 'fg':      ['fg', 'Normal'],
    \ 'bg':      ['bg', 'Normal'],
    \ 'hl':      ['fg', 'Comment'],
    \ 'fg+':     ['fg', 'CursorLine', 'CursorColumn', 'Normal'],
    \ 'bg+':     ['bg', 'CursorLine', 'CursorColumn'],
    \ 'hl+':     ['fg', 'Statement'],
    \ 'info':    ['fg', 'PreProc'],
    \ 'border':  ['fg', 'Ignore'],
    \ 'prompt':  ['fg', 'Conditional'],
    \ 'pointer': ['fg', 'Exception'],
    \ 'marker':  ['fg', 'Keyword'],
    \ 'spinner': ['fg', 'Label'],
    \ 'header':  ['fg', 'Comment']  }
endif
