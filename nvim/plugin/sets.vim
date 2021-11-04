set encoding=UTF-8
set path+=**

" Nice menu when typing `:find *.py`
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
set title
set guicursor&
set background=dark
set ruler
highlight Comment ctermfg=green
" Indentation setting
" set tabstop=2 softtabstop=2
set tabstop=4
set softtabstop=4
set shiftwidth=4
set shiftround
" Convert a tab into spaces
set expandtab
set showmatch
set nopaste
" Automatically indent settings
set autoindent
set smartindent
" Set current number overriding relative numbers
set nu
" Set relative numbers
set relativenumber
" Set smartcase for case sensitive in searchs
set smartcase
" Set to work with smartcase
set ignorecase
set noswapfile
set nobackup
set undodir=~/.config/nvim/undodir
set undofile
" Highlight as we search
set incsearch
" Scroll when is 8 rows above or below
set scrolloff=8
" Set a column for linting
" set signcolumn=yes
set colorcolumn=80
" Text keep going through the page
set nowrap

" Let modify the file
set ma

" If enable, change the root folder to the current file directory
set noautochdir
" set autochdir

" NerdTree Neovim stuff
if has('nvim')
  set inccommand=nosplit
endif

set expandtab

" AutoReload like a normal IDE
set autoread

" Coc settings
" Set internal encoding of vim, not needed on neovim, since coc.nvim using some
" unicode characters in the file autoload/float.vim

" TextEdit might fail if hidden is not set.
set hidden

" Some servers have issues with backup files, see #649.
set nowritebackup

" Give more space for displaying messages.
set cmdheight=2

" Having longer updatetime (default is 4000 ms = 4 s) leads to noticeable
" delays and poor user experience.
set updatetime=300

" Don't pass messages to |ins-completion-menu|.
set shortmess+=c


" Always show the signcolumn, otherwise it would shift the text each time
" diagnostics appear/become resolved.
if has("nvim-0.5.0") || has("patch-8.1.1564")
  " Recently vim can merge signcolumn and number column into one
  set signcolumn=number
else
  set signcolumn=yes
endif
set statusline^=%{coc#status()}%{get(b:,'coc_current_function','')}

set spell
setlocal spell spelllang=en_us
