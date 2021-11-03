"    ____      _ __        _
"   /  _/___  (_) /__   __(_)___ ___
"   / // __ \/ / __/ | / / / __ `__ \
" _/ // / / / / /__| |/ / / / / / / /
"/___/_/ /_/_/\__(_)___/_/_/ /_/ /_/

 "Enable file splitting
filetype plugin indent on

let pluginPath = '~/.vim/plugged'

if has('nvim')
  let pluginPath = '~/.config/nvim/plugged'
endif

 "Installed via vim plug https://github.com/junegunn/vim-plug
" :PlugInstall to install them
" if has('nvim')
  " call plug#begin('~/.config/nvim/plugged')
" else
  " call plug#begin('~/.vim/plugged')
" endif
call plug#begin(pluginPath)
" Vim Manual
Plug 'vim-utils/vim-man'

" Linting
" Plug 'dense-analysis/ale'

" NerdTree Explorer
Plug 'preservim/nerdtree'

" Comment utility
Plug 'preservim/nerdcommenter'

" NerdTree Git Highlight
Plug 'Xuyuanp/nerdtree-git-plugin'

" Nerd Tree Highlight
Plug 'tiagofumo/vim-nerdtree-syntax-highlight'
"Plug 'preservim/tagbar'
" Use release branch (recommend)

" Vim LSP Manager
" Plug 'neoclide/coc.nvim', {'branch': 'release'}
Plug 'styled-components/vim-styled-components'
"Plug 'ycm-core/YouCompleteMe'
"Plug 'leafgarland/typescript-vim'

" Lsp stuff
Plug 'neovim/nvim-lspconfig'
Plug 'hrsh7th/cmp-nvim-lsp'
Plug 'hrsh7th/cmp-buffer'
Plug 'hrsh7th/cmp-path'
Plug 'hrsh7th/cmp-cmdline'
Plug 'hrsh7th/nvim-cmp'
Plug 'f3fora/cmp-spell'
Plug 'hrsh7th/cmp-calc'
Plug 'onsails/lspkind-nvim'

" LSP for Java
Plug 'mfussenegger/nvim-jdtls'

" Snippets stuff
Plug 'L3MON4D3/LuaSnip'
Plug 'saadparwaiz1/cmp_luasnip'
Plug 'rafamadriz/friendly-snippets'

" Plug 'glepnir/lspsaga.nvim'

" Status Bar
Plug 'itchyny/lightline.vim'

" Key Leader Utility
" Plug 'liuchengxu/vim-which-key'

" Color schemes
Plug 'gruvbox-community/gruvbox'
Plug 'phanviet/vim-monokai-pro'
Plug 'arcticicestudio/nord-vim'

" Syntax Highlight
Plug 'posva/vim-vue'

"Plug 'tmhedberg/simpylfold'
"
" A Vim Plugin for Lively Previewing LaTeX PDF Output
Plug 'xuhdev/vim-latex-live-preview', { 'for': 'tex' }
" Plug 'xuhdev/vim-latex-live-preview'

" NerdTree icons
Plug 'ryanoasis/vim-devicons'

" LaTeX
Plug 'lervag/vimtex'

" Top ToolBar
Plug 'romgrk/barbar.nvim'

" HTML Auto Close
Plug 'alvan/vim-closetag'


" Snippets
Plug 'honza/vim-snippets'

" Kotlin Syntax Highlight
Plug 'udalov/kotlin-vim'

if has('nvim')

  " Telescope thing
  Plug 'nvim-lua/popup.nvim'
  Plug 'nvim-lua/plenary.nvim'
  Plug 'nvim-telescope/telescope.nvim'
  Plug 'nvim-telescope/telescope-fzy-native.nvim'
  Plug 'kyazdani42/nvim-web-devicons'
else
  " Fuzy Finder
  Plug 'junegunn/fzf', { 'do': { -> fzf#install() } }
  Plug 'junegunn/fzf.vim'
endif

if has('nvim')
  " Treesitter highlight this now
  Plug 'nvim-treesitter/nvim-treesitter', {'do': ':TSUpdate'}  " We recommend updating the parsers on update
  " Plug 'nvim-treesitter/playground'
endif

call plug#end()

" let $VIMRCPATH
" let VIMRCPATH='.vim'
" if has('nvim')
  " let VIMRCPATH = '.config/nvim'
" endif


" let $VIMRMPATH='.config/nvim'
" echo $VIMRMPATH

" Sourcing my configs
" source ~/.config/nvim/plugins/sets.vim
" source ~/.config/nvim/plugins/ale.vim
" source ~/.config/nvim/plugins/fix.vim
" source ~/.config/nvim/plugins/NERD.vim
" source ~/.config/nvim/plugins/keymaps.vim
" source ~/.config/nvim/plugins/cocconfig.vim
" source ~/.config/nvim/plugins/functions.vim
" source ~/.config/nvim/plugins/lightline.vim
" source ~/.config/nvim/plugins/whichkey.vim
" source ~/.config/nvim/plugins/java.vim
" source ~/.config/nvim/plugins/fold.vim
" source ~/.config/nvim/plugins/plugvim.vim
" source ~/.config/nvim/plugins/colors.vim
" source ~/.config/nvim/plugins/terminal_toggle.vim
" source ~/.config/nvim/plugins/cspell.vim
" source ~/.config/nvim/plugins/find_and_replace.vim
"source ~/.config/nvim/plugins/tmux.vim

" execute 'source ~/' . VIMRCPATH . '/plugins/sets.vim'
" execute 'source ~/' . VIMRCPATH . '/plugins/ale.vim'
" execute 'source ~/' . VIMRCPATH . '/plugins/fix.vim'
" execute 'source ~/' . VIMRCPATH . '/plugins/NERD.vim'
" execute 'source ~/' . VIMRCPATH . '/plugins/keymaps.vim'
" execute 'source ~/' . VIMRCPATH . '/plugins/cocconfig.vim'
" execute 'source ~/' . VIMRCPATH . '/plugins/functions.vim'
" execute 'source ~/' . VIMRCPATH . '/plugins/lightline.vim'
" execute 'source ~/' . VIMRCPATH . '/plugins/whichkey.vim'
" execute 'source ~/' . VIMRCPATH . '/plugins/java.vim'
" execute 'source ~/' . VIMRCPATH . '/plugins/fold.vim'
" execute 'source ~/' . VIMRCPATH . '/plugins/plugvim.vim'
" execute 'source ~/' . VIMRCPATH . '/plugins/colors.vim'
" execute 'source ~/' . VIMRCPATH . '/plugins/terminal_toggle.vim'
" execute 'source ~/' . VIMRCPATH . '/plugins/cspell.vim'
" execute 'source ~/' . VIMRCPATH . '/plugins/find_and_replace.vim'


" if has('nvim')
  " source ~/.config/nvim/plugins/telescope.vim
" else
  " " source ~/.config/nvim/plugins/fzf.vim
  " source ~/.vim/plugins/fzf.vim
" endif

" if executable('rg')
    " let g:rg_derive_root='true'
" endif

" Lua stuff
if has('nvim')
  lua require("init")
endif

" if has("nvim")
    " set inccommand="nosplit"
" endif

let g:vimtex_compiler_progname = 'nvr'

nmap <space>li <plug>(vimtex-info)

