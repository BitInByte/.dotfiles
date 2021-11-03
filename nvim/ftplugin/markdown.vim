" Cancels auto close brackets in markdown files
inoremap " "
inoremap ' '
inoremap ` `
inoremap ( (
inoremap [ [
inoremap { {

" unmap "
" unmap '
" unmap (
" unmap [
" unmap {

" Bold text
function! BoldText()
  execute "normal! `<v`>y"
  echo @@
  execute 'd'
endfunction

vnoremap <C-b> :call BoldText()<CR>
