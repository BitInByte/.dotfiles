" Output encoding
set encoding=UTF-8

" Set path to current directory
set path+=**

" Nice menu when typing `:find *.py`
" set auto-completion
set wildmode=longest,list,full
set wildmenu

" Ignore files
set wildignore+=*.pyc
set wildignore+=*_build/*
set wildignore+=**/coverage/*
set wildignore+=**/node_modules/*
set wildignore+=**/android/*
set wildignore+=**/ios/*
set wildignore+=**/.git/*

" When running vim ., it executes de vimrc there if exists
set exrc
"set number
syntax on

" Set terminal title to current file name
set title

" set guicursor&
" Set background to dark
set background=dark

" set ruler

" highlight Comment ctermfg=green
" Indentation setting
" set tabstop=2 softtabstop=2
" Ident using x spaces
set tabstop=4

" set softtabstop=4
" When shifting, ident using x spaces
set shiftwidth=4
" When shifting lines, round rules that are file-type specific
" set shiftround

" Convert a tab into spaces
set expandtab

" Briefly jump to the matching brace when we insert one
" set showmatch
" set matchtime=3

" Work with clipboard
" set nopaste

" Copy indentation from the last line when starting a new line
set autoindent

" Copy indentation based on the syntax/style of the code we are editing
set smartindent

" Set current number overriding relative numbers
set nu

" Set relative numbers
set relativenumber

" Set smartcase for case sensitive in searchs
set smartcase

" Set to work with smartcase
set ignorecase

" Vim create swapfiles for backup, it save chagnes we've made to the buffer.
" set noswapfile

" Make a backup before overwriting a file
" set nobackup

" Dir for undo
set undodir=~/.config/nvim/undodir
set undofile

" Highlight as we search
set incsearch

" Scroll when is 8 rows above or below
set scrolloff=8

" Set a column for linting
" set signcolumn=yes
" set colorcolumn=80

" Text keep going through the page
set nowrap

" Let modify the file
" set ma

" If enable, change the root folder to the current file directory
" set noautochdir
" set autochdir

" NerdTree Neovim stuff
if has('nvim')
  set inccommand=nosplit
endif

" AutoReload file like a normal IDE
set autoread

" Let us create a new buffer without saving it
" asking to save when we leave the ViM
set hidden

" Some servers have issues with backup files, see #649.
set nowritebackup

" Give more space for displaying messages at the bottom.
" set cmdheight=2

" Having longer updatetime (default is 4000 ms = 4 s) leads to noticeable
" delays and poor user experience.
" set updatetime=300

" Don't pass messages to |ins-completion-menu|.
" set shortmess+=c


" Always show the signcolumn, otherwise it would shift the text each time
" diagnostics appear/become resolved.
if has("nvim-0.5.0") || has("patch-8.1.1564")
  " Recently vim can merge signcolumn and number column into one
  set signcolumn=number
else
  set signcolumn=yes
endif
" set statusline^=%{coc#status()}%{get(b:,'coc_current_function','')}

" Spelling options
set nospell
setlocal spell spelllang=en_us

" Doesn't allow neovim to wait for a second key
set notimeout
