"    ____      _ __        _
"   /  _/___  (_) /__   __(_)___ ___
"   / // __ \/ / __/ | / / / __ `__ \
" _/ // / / / / /__| |/ / / / / / / /
"/___/_/ /_/_/\__(_)___/_/_/ /_/ /_/

 "Enable file splitting
filetype plugin indent on

  let pluginPath = '~/.config/nvim/plugged'

 "Installed via vim plug https://github.com/junegunn/vim-plug
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
Plug 'hrsh7th/nvim-cmp'
Plug 'hrsh7th/cmp-buffer'
Plug 'hrsh7th/cmp-path'
Plug 'hrsh7th/cmp-calc'
Plug 'hrsh7th/cmp-cmdline'
Plug 'f3fora/cmp-spell'
" Icons on auto completion
Plug 'onsails/lspkind-nvim'

" LSP for Java
Plug 'mfussenegger/nvim-jdtls'

" Snippets stuff
Plug 'L3MON4D3/LuaSnip'
Plug 'saadparwaiz1/cmp_luasnip'
Plug 'rafamadriz/friendly-snippets'

" not working
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

" Telescope thing
Plug 'nvim-lua/popup.nvim'
Plug 'nvim-lua/plenary.nvim'
Plug 'nvim-telescope/telescope.nvim'
Plug 'nvim-telescope/telescope-fzy-native.nvim'
Plug 'kyazdani42/nvim-web-devicons'
" Treesitter highlight this now
Plug 'nvim-treesitter/nvim-treesitter', {'do': ':TSUpdate'}  " We recommend updating the parsers on update
" Plug 'nvim-treesitter/playground'
"
" Git stuff
Plug 'lewis6991/gitsigns.nvim'

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

" Lua stuff
if has('nvim')
  lua require("init")
endif

" let g:vimtex_compiler_progname = 'nvr'

" nmap <space>li <plug>(vimtex-info)

