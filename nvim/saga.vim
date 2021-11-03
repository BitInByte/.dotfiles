 " code action
nnoremap <silent><leader>aa <cmd>lua require('lspsaga.codeaction').code_action()<CR>
vnoremap <silent><leader>aa :<C-U>lua require('lspsaga.codeaction').range_code_action()<CR>
 " or use command
nnoremap <silent><leader>aa :Lspsaga code_action<CR>
vnoremap <silent><leader>aa :<C-U>Lspsaga range_code_action<CR>

