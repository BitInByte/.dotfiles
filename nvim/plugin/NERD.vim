" AutoStart NerdTree
"autocmd VimEnter * NERDTree
" Cursor is pipe in Insert, block in Normal
let $NVIM_TUI_ENABLE_CURSOR_SHAPE=1
" Close tree after opening a file
let NERDTreeQuitOnOpen=1


" NerdComment
map <space>/ <Plug>NERDCommenterToggle<CR>
let NERDSpaceDelims=1
" let NERDSpaceDelims=0

" Vue Support
" let g:ft = ''
" fu! NERDCommenter_before()
    " if &ft == 'vue'
        " let g:ft = 'vue'
        " let stack = synstack(line('.'), col('.'))
        " if len(stack) > 0
            " let syn = synIDattr((stack)[0], 'name')
            " if len(syn) > 0
                " let syn = tolower(syn)
                " exe 'setf '.syn
            " endif
        " endif
    " endif
" endfu
" fu! NERDCommenter_after()
    " if g:ft == 'vue'
        " setf vue
        " let g:ft = ''
    " endif
" endfu
