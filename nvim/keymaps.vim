" Remaps
let mapleader = " "

"nnoremap <leader>h :wincmd h<CR>
"nnoremap <leader>j :wincmd j<CR>
"nnoremap <leader>k :wincmd k<CR>
"nnoremap <leader>l :wincmd l<CR>
" Swap Vim Window
nnoremap <leader>w :wincmd w<CR>
" Quit Current Vim Window
nnoremap <leader>tq :wincmd c<CR>
"nnoremap <leader>e :Ex <CR>
"nnoremap <leader>n :FZF<CR>
" nnoremap <C-p> :FZF<CR>
nnoremap <leader>tt :sp<CR>
nnoremap <leader>tT :vsp<CR>

" NerdTree specific maps
"nnoremap <leader>n :NERDTreeFocus<CR>
nnoremap <C-n> :NERDTree<CR>
nnoremap <C-t> :NERDTreeToggle<CR>
nnoremap <C-f> :NERDTreeFind<CR>

" Linting options
" nmap <silent> <C-e> <Plug>(ale_next_wrap)

" Auto bracket close
inoremap " ""<left>
inoremap ' ''<left>
inoremap ` ``<left>
inoremap ( ()<left>
inoremap [ []<left>
inoremap { {}<left>
inoremap {<CR> {<CR>}<ESC>O
inoremap {;<CR> {<CR>};<ESC>O

" Tabs Switching
" Go to tab by number
noremap <leader>t1 1gt
noremap <leader>t2 2gt
noremap <leader>t3 3gt
noremap <leader>t4 4gt
noremap <leader>t5 5gt
noremap <leader>t6 6gt
noremap <leader>t7 7gt
noremap <leader>t8 8gt
noremap <leader>t9 9gt
noremap <leader>t0 :tablast<cr>
nnoremap <leader>[ :tabprevious<CR>
noremap <leader>] :tabnext<CR>
nnoremap <leader>tw :tabnew<CR>

"inoremap <leader>b <leader>v<space>

" Terminal mode mappings
tnoremap <Esc> <C-\><C-n>
" vim-powered terminal in split window
"map <Leader>k :term ++close<cr>
"tmap <Leader>k <c-w>:term ++close<cr>

" vim-powered terminal in new tab
"map <Leader>K :tab term ++close<cr>
"tmap <Leader>K <c-w>:tab term ++close<cr>
"map <Leader>K :tab term zsh<cr>
"tmap <Leader>K <c-w>:tab term zsh<cr>

" Open vimrc
nnoremap <leader>. :edit ~/.config/nvim/init.vim<CR>

" Apply changes from vimrc
nnoremap <leader>, :so ~/.config/nvim/init.vim<CR>

" Options Keymaps
nnoremap <leader>on :set nu?<CR>
nnoremap <leader>or :set relativenumber!<CR>
nnoremap <leader>og :colorscheme gruvbox<CR>
nnoremap <leader>om :colorscheme monokai_pro<CR>

" Tag Bar Toggle
"nmap <leader>p :TagbarToggle<CR>

" Toggle Terminal
nnoremap <leader>y <C-^>

" Buffers
" nnoremap <Leader>bl :ls<CR>:b<Space>
" nnoremap <leader>b] :bnext<CR>
" nnoremap <leader>b[ :bprev<CR>

" Move Lines
nnoremap <C-j> :m .+1<CR>==
nnoremap <C-k> :m .-2<CR>==
inoremap <C-j> <Esc>:m .+1<CR>==gi
inoremap <C-k> <Esc>:m .-2<CR>==gi
vnoremap <C-j> :m '>+1<CR>gv=gv
vnoremap <C-k> :m '<-2<CR>gv=gv

nnoremap <C-h> :bprev<CR>
nnoremap <C-l> :bnext<CR>
nnoremap <C-d> :bd<CR>
nnoremap <C-o> :ls<CR>


