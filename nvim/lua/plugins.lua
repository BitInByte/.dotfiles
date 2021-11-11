local fn = vim.fn
local install_path = fn.stdpath('data')..'/site/pack/packer/start/packer.nvim'
if fn.empty(fn.glob(install_path)) > 0 then
  packer_bootstrap = fn.system({'git', 'clone', '--depth', '1', 'https://github.com/wbthomason/packer.nvim', install_path})
end

return require('packer').startup(function(use)
    -- My plugins here

    -- LSP
    use 'neovim/nvim-lspconfig'
    use 'mfussenegger/nvim-jdtls' -- java
    use 'lervag/vimtex' -- vimtex

    -- CMP
	use 'hrsh7th/cmp-nvim-lsp'
	use 'hrsh7th/cmp-buffer'
	use 'hrsh7th/cmp-path'
	use 'hrsh7th/cmp-cmdline'
	use 'hrsh7th/nvim-cmp'
	use 'hrsh7th/cmp-calc'
	-- use 'hrsh7th/cmp-cmdline'
	use 'f3fora/cmp-spell'
	use {'tzachar/cmp-tabnine', run='./install.sh', requires = 'hrsh7th/nvim-cmp'}
	use 'onsails/lspkind-nvim'

	-- Snippets stuff
	use 'L3MON4D3/LuaSnip'
	use 'saadparwaiz1/cmp_luasnip'
	use 'rafamadriz/friendly-snippets'

	-- File Explorer
	use {
	    'kyazdani42/nvim-tree.lua',
	    requires = 'kyazdani42/nvim-web-devicons',
	    config = function() require'nvim-tree'.setup {} end
	}

	-- ColorSchemes
	use 'yashguptaz/calvera-dark.nvim'
	use 'shaunsingh/moonlight.nvim'
	use({
	    'rose-pine/neovim',
	    as = 'rose-pine',
	    config = function()
		-- Options (see available options below)
		vim.g.rose_pine_variant = 'base'

		-- Load colorscheme after options
		vim.cmd('colorscheme rose-pine')
	    end
	})

    -- Telescope
    use {
      'nvim-telescope/telescope.nvim',
      requires = { {'nvim-lua/plenary.nvim'} }
    }

    -- Convert hash to colors
    use 'norcalli/nvim-colorizer.lua'

    -- TreeSitter
    use {
        'nvim-treesitter/nvim-treesitter',
        run = ':TSUpdate'
    }

    -- Buffer Line
    use {'akinsho/bufferline.nvim', requires = 'kyazdani42/nvim-web-devicons'}

    -- Galaxy Line
    use {
      'glepnir/galaxyline.nvim',
        branch = 'main',
        -- your statusline
        --config = function() require'my_statusline' end,
        -- some optional icons
        requires = {'kyazdani42/nvim-web-devicons', opt = true}
    }

    -- Comment Utility
    use "terrortylor/nvim-comment"
    use 'JoosepAlviste/nvim-ts-context-commentstring' -- vue integration

    -- Auto Close Tag
    use 'windwp/nvim-autopairs'
    use 'windwp/nvim-ts-autotag'

    -- Infor on the cursor location
    use {
	"SmiteshP/nvim-gps",
	requires = "nvim-treesitter/nvim-treesitter"
    }


  -- Automatically set up your configuration after cloning packer.nvim
  -- Put this at the end after all plugins
  if packer_bootstrap then
    require('packer').sync()
  end
end)

