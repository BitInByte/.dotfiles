" Move to previous/next
nnoremap <silent>  <space>b[ :BufferPrevious<CR>
nnoremap <silent>  <space>b] :BufferNext<CR>
" Re-order to previous/next
nnoremap <silent>    <space>b{ :BufferMovePrevious<CR>
nnoremap <silent>    <space>b} :BufferMoveNext<CR>
" Goto buffer in position...
nnoremap <silent>    <space>b1 :BufferGoto 1<CR>
nnoremap <silent>    <space>b2 :BufferGoto 2<CR>
nnoremap <silent>    <space>b3 :BufferGoto 3<CR>
nnoremap <silent>    <space>b4 :BufferGoto 4<CR>
nnoremap <silent>    <space>b5 :BufferGoto 5<CR>
nnoremap <silent>    <space>b6 :BufferGoto 6<CR>
nnoremap <silent>    <space>b7 :BufferGoto 7<CR>
nnoremap <silent>    <space>b8 :BufferGoto 8<CR>
nnoremap <silent>    <space>b9 :BufferLast<CR>
" Close buffer
nnoremap <silent>    <space>bq :BufferClose<CR>
" Wipeout buffer
"                          :BufferWipeout<CR>
" Close commands
"                          :BufferCloseAllButCurrent<CR>
"                          :BufferCloseBuffersLeft<CR>
"                          :BufferCloseBuffersRight<CR>
" Magic buffer-picking mode
nnoremap <silent> <space>bs    :BufferPick<CR>
" Sort automatically by...
nnoremap <silent> <space>bd :BufferOrderByDirectory<CR>
" nnoremap <silent> <space>bl :BufferOrderByLanguage<CR>

" Other:
" :BarbarEnable - enables barbar (enabled by default)
" :BarbarDisable - very bad command, should never be used

" Enable/disable close button
" let bufferline.closable = v:false

" " Enable/disable auto-hiding the tab bar when there is a single buffer
" let bufferline.auto_hide = v:true


