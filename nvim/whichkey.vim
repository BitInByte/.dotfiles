" Attribute the leader key to the which key
" nnoremap <silent> <leader> :<c-u>WhichKey '<Space>'<CR>
" vnoremap <silent> <leader> :<c-u>WhichKeyVisual '<Space>'<CR>

" let g:which_key_timeout = 100

" let g:which_key_display_names = {'<CR>': '↵', '<TAB>': '⇆'}

" " Create map to add keys to
" let g:which_key_map =  {}
" " Define a separator
" let g:which_key_sep = '→'

" " Single mappings
" let g:which_key_map['.'] = [':edit ~/.vimr<CR>', 'Open vimrc file']
" let g:which_key_map[','] = [':so ~/.vimrc', 'Apply Config Changes']
" let g:which_key_map['/'] = [':<Plug>NERDCommenterToggle', 'Comment current line']
" let g:which_key_map['w'] = ['wincmd w', 'Toggle Vim Tab']
" let g:which_key_map[']'] = ['tabnext', 'Next Window']
" let g:which_key_map['['] = ['tabprevious', 'Previous Window']
" "let g:which_key_map['t'] = ['sp', 'Split Vim Horizontaly']
" "let g:which_key_map['vt'] = ['vsp', 'Split Vim Vertically']
" let g:which_key_map['k'] = [':call ToggleTerminal()', 'Toggle Terminal Buffer']
" "let g:which_key_map['K'] = ['tab term ++close', 'Open Terminal In New Vim Tab']
" let g:which_key_map['r'] = ['za', 'Collapse/Expand Current Cursor Block']
" let g:which_key_map['y'] = ['C-^', 'Toggle Terminal']
" let g:which_key_map['i'] = [':call CocActionAsync("doHover")', 'Hover Definition']

" " LSP - language server protocol mappings dictionary
" let g:which_key_map.l = {
    " \ 'name' : '+lsp',
    " \ 'r' : ['<Plug>(coc-rename)', 'Rename'],
    " \ 'f' : ['<Plug>(coc-format-selected)', 'Format Selected'],
    " \ 'g' : ['<Plug>(coc-format)', 'Format Buffer'],
    " \ 'a' : ['<Plug>(coc-codeaction-selected)', 'Action Selected'],
    " \ 'A' : ['<Plug>(coc-codeaction)', 'Action'],
    " \ 'q' : ['(coc-fix-current) ', 'Quick Fix'],
    " \ 'x' : ['<Plug>(coc-convert-snippet)', 'Convert Selected to Snippet'],
    " \ 'F' : {
      " \ 'name' : '+Flutter',
        " \ 'e' : [':CocCommand flutter.emulators', 'Choose Emulator to Run'],
        " \ 'r' : [':CocCommand flutter.run', 'Run Dev Server'],
        " \ 'l' : [':CocCommand flutter.dev.openDevLog', 'Open Dev Server Logs'],
        " \ 'f' : [':CocCommand flutter.dev.hotRestart', 'Hot Restart the Application'],
        " \ 'q' : [':CocCommand flutter.dev.quit', 'Quit Dev Server'],
        " \ 'd' : [':CocCommand flutter.devices', 'Choose Devices to Run'],
        " \ 'w' : [':CocCommand flutter.dev.detach', 'Eject Current Emulator']
        " \ },
    " \ }

" " d - Coc Diagnostics
" let g:which_key_map.d = {
    " \ 'name' : '+dignst',
    " \ '[' : ['<Plug>(coc-diagnostic-prev)', 'Prev Diagnostic'],
    " \ ']' : ['<Plug>(coc-diagnostic-next)', 'Next Diagnostic'],
    " \ 'd' : ['<Plug>(coc-definition)', 'Definition'],
    " \ 't' : ['<Plug>(coc-type-definition)', 'Type Definition'],
    " \ 'i' : ['<Plug>(coc-implementation)', 'Implementation'],
    " \ 'r' : ['<Plug>(coc-references)', 'References'],
    " \ }

" " a - Angular
" let g:which_key_map.a = {
    " \ 'name' : '+Angular',
    " \ 's' : [':call SwapFile()', 'Swap Angular File'],
    " \ 't' : [':call ChangeTS()', 'Change to Component TypeScript File'],
    " \ 'h' : [':call ChangeHTML()', 'Change to Component HTML File'],
    " \ 'c' : [':call ChangeCSS()', 'Change to Component CSS File'],
    " \ }

" " let g:which_key_map.f = {
    " " \ 'name' : '+fzf',
    " " \ 'f' : [':Files', 'Find Files'],
    " " \ 'b' : [':Buffers', 'Find Files in Buffer'],
    " " \ 's' : [':Rg', 'Find Strings in Files'],
    " " \ 'g' : [':GFiles', 'Find Files In Git Repo Directory'],
    " " \ }

" let g:which_key_map.f = {
    " \ 'name' : '+fzf',
    " \ 'f' : ['find_files', 'Find Files'],
    " \ 'b' : ['buffers', 'Find Files in Buffer'],
    " \ '/' : ['live_grep', 'Find Strings in Files'],
    " \ 'e' : ['file_browser', 'File Browser'],
    " \ 'c' : ['colorscheme', 'Colorschemes'],
    " \ 'k' : ['keymaps', 'Key Maps'],
    " \ 't' : ['treesitter', 'Treesitter'],
    " \ 's' : ['spell_suggest', 'Spell Suggest'],
    " \ 'h' : ['help_tags', 'Help Tags'],
    " \ 'r' : [':call FindAndReplace()', 'Find and Replace'],
    " \ 'g' : {
      " \ 'name' : '+git',
        " \ 's' : ['git_status', 'Git Status'],
        " \ 'c' : ['git_commits', 'Git Commits'],
        " \ 'b' : ['git_branches', 'Git Branches']
        " \ },
    " \ }

" " t - Tab Manipulation
" let g:which_key_map.t = {
    " \ 'name' : '+tab',
    " \ 'q' : ['wincmd c', 'Quit Current Tab'],
    " \ 't' : ['sp', 'Split Vim Horizontaly'],
    " \ 'T' : ['vsp', 'Split Vim Vertically'],
    " \ 'w' : ['tabnew', 'Create New Window'],
    " \ '1' : ['1gt', 'Go To Tab 1'],
    " \ '2' : ['2gt', 'Go To Tab 2'],
    " \ '3' : ['3gt', 'Go To Tab 3'],
    " \ '4' : ['4gt', 'Go To Tab 4'],
    " \ '5' : ['5gt', 'Go To Tab 5'],
    " \ '6' : ['6gt', 'Go To Tab 6'],
    " \ '7' : ['7gt', 'Go To Tab 7'],
    " \ '8' : ['8gt', 'Go To Tab 8'],
    " \ '9' : ['9gt', 'Go To Tab 9'],
    " \ '0' : ['tablast', 'Go To Last Tab'],
    " \ }

" " c - Coc Settings
" let g:which_key_map.z = {
    " \ 'name' : '+coc',
    " \ 'a' : ['<C-u>CocList diagnostics<cr>', 'Coc List Diagnostics'],
    " \ 'e' : ['<C-u>CocList extensions<cr>', 'Coc List Extensions'],
    " \ 'c' : ['<C-u>CocList commands<cr>', 'Coc List Commands'],
    " \ 'o' : ['<C-u>CocList outline<cr>', 'Coc List Outline'],
    " \ 's' : ['<C-u>CocList -I symbols<cr>', 'CocList -I symbolx'],
    " \ 'j' : ['<C-u>CocNext<CR>', 'Coc Next'],
    " \ 'k' : ['<C-u>CocPrev<CR>', 'Coc Prev'],
    " \ 'p' : ['<C-u>CocListResume<CR> ', 'Coc List Resume']
    " \ }

" let g:which_key_map.c = {
    " \ 'name' : '+NerdCommenter'
    " \ }

" let g:which_key_map.o = {
    " \ 'name' : '+options',
    " \ 'n' : ['set nu', 'Set Normal Numbers'],
    " \ 'r' : ['set relativenumber', 'Set Relative Numbers'],
    " \ 'g' : ['colorscheme gruvbox', 'Set Gruvbox Theme'],
    " \ 'm' : ['colorscheme monokay_pro', "Set Monokai Theme"]
    " \ }

" let g:which_key_map.p = {
    " \ 'name' : '+plug',
    " \ 'i' : ['PlugInstall', 'Plug Install'],
    " \ 'c' : ['PlugClean', 'Plug Clean'],
    " \ 'u' : ['PlugUpdate', 'Plug Plugins Update'],
    " \ 'g' : ["PlugUpgrade", "Plug Manager Update"],
    " \ 's' : ["PlugStatus", 'Plug Status']
    " \ }

" let g:which_key_map.b = {
  " \ 'name' : '+buff',
  " \ 'l' : [':ls<CR>:b<Space>', 'List all buffers'],
  " \ ']' : [':bnext<CR>', 'Next buffer'],
  " \ '[' : [':bprev<CR>', 'Previous buffer'],
  " \ '{' : [':BufferMovePrevious', 'Move Buffer Previous'],
  " \ '}' : [':BufferMoveNext', 'Move Buffer Previous'],
  " \ '1' : [':BufferGoto 1', 'Move to Buffer 1'],
  " \ '2' : [':BufferGoto 2', 'Move to Buffer 2'],
  " \ '3' : [':BufferGoto 3', 'Move to Buffer 3'],
  " \ '4' : [':BufferGoto 4', 'Move to Buffer 4'],
  " \ '5' : [':BufferGoto 5', 'Move to Buffer 5'],
  " \ '6' : [':BufferGoto 6', 'Move to Buffer 6'],
  " \ '7' : [':BufferGoto 7', 'Move to Buffer 7'],
  " \ '8' : [':BufferGoto 8', 'Move to Buffer 8'],
  " \ '9' : [':BufferLast', 'Move to Buffer 9'],
  " \ 'q' : [':BufferClose', 'Close Buffer'],
  " \ 's' : [':BufferPick', 'Buffer Pick'],
  " \ 'd' : [':BufferOrderByDirectory', 'Order Buffer By Directory']
  " \ }

" let g:which_key_map.s = {
  " \ 'name' : '+cSpell',
  " \ 'e' : [':CocCommand cSpell.toggleEnableSpellChecker', 'Toggle spell checker'],
  " \ 'a' : [':CocCommand cSpell.addWordToDictionary', 'Add word to dictionary'],
  " \ }

" " Apply Dictionary
" call which_key#register('<Space>', "g:which_key_map")
