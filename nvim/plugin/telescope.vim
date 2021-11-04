" Find files using Telescope command-line sugar.
" nnoremap <leader>ff <cmd>Telescope find_files<cr>
" nnoremap <leader>fg <cmd>Telescope live_grep<cr>
" nnoremap <leader>fb <cmd>Telescope buffers<cr>
" nnoremap <leader>fh <cmd>Telescope help_tags<cr>
" nnoremap <leader>fe <cmd>Telescope file_browser<cr>
" Using lua functions
nnoremap <leader>ff <cmd>lua require('telescope.builtin').find_files()<cr>
nnoremap <leader>f/ <cmd>lua require('telescope.builtin').live_grep()<cr>
" nnoremap <leader>fg <cmd>lua require('telescope.builtin').grep_string()<cr>
nnoremap <leader>fb <cmd>lua require('telescope.builtin').buffers()<cr>
nnoremap <leader>fh <cmd>lua require('telescope.builtin').help_tags()<cr>
nnoremap <leader>fe <cmd>lua require('telescope.builtin').file_browser()<cr>
nnoremap <leader>fc <cmd>lua require('telescope.builtin').colorscheme()<cr>
nnoremap <leader>fs <cmd>lua require('telescope.builtin').spell_suggest()<cr>
nnoremap <leader>fk <cmd>lua require('telescope.builtin').keymaps()<cr>
nnoremap <leader>ft <cmd>lua require('telescope.builtin').treesitter()<cr>
nnoremap <leader>fgs <cmd>lua require('telescope.builtin').git_status()<cr>
nnoremap <leader>fgc <cmd>lua require('telescope.builtin').git_commits()<cr>
nnoremap <leader>fgb <cmd>lua require('telescope.builtin').git_branches()<cr>
