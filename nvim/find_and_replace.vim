" Search and replace function
" nnoremap <leader>fr :s%/input('Word to search > ')/input('Word to replace > ')/gc<CR>

function! FindAndReplace()
  let searchWord = input("Word to search > ")
  let replaceWord = input("Word to replace > ")
  " echo searchWord
  " echo replaceWord
  let command = ':%s/' . searchWord . '/' . replaceWord . '/gc'
  " execute ':s%/' . searchWord . '/' . replaceWord . '/gc'
  execute command
endfunction

nnoremap <leader>fr :call FindAndReplace()<CR>
