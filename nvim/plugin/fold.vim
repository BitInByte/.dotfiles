"set foldmethod=syntax
set foldmethod=indent
"set foldmethod=indent
set foldlevelstart=99
"set foldmethod=expr
"set foldexpr=nvim_treesitter#foldexpr()
"set foldmethod=expr
"set foldexpr=VimFolds(v:lnum)
autocmd BufWinLeave *.* mkview
autocmd BufWinEnter *.* silent! loadview
"
"FOLDS:
"------
" Automatically save folds
"augroup AutoSaveFolds
  "autocmd!
  "au BufWinLeave ?* mkview 1
  "au BufWinEnter ?* silent! loadview 1
"augroup END

nnoremap <leader>r za
