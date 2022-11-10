local status, packer = pcall(require, "packer")
if not status then
	return
end

local ensure_packer = function()
	local fn = vim.fn
	local install_path = fn.stdpath("data") .. "/site/pack/packer/start/packer.nvim"
	if fn.empty(fn.glob(install_path)) > 0 then
		fn.system({ "git", "clone", "--depth", "1", "https://github.com/wbthomason/packer.nvim", install_path })
		vim.cmd([[packadd packer.nvim]])
		return true
	end
	return false
end
local packer_bootstrap = ensure_packer()

vim.cmd([[
  augroup packer_user_config
    autocmd!
    autocmd BufWritePost plugins.lua source <afile> | PackerSync
  augroup end
]])

return packer.startup(function(use)
	use("wbthomason/packer.nvim")

	-- {  LSP  }
	-- Mason - helper to install needed lsps
	use({
		"williamboman/mason.nvim",
		"williamboman/mason-lspconfig.nvim",
		"jayp0521/mason-null-ls.nvim",
		"jayp0521/mason-nvim-dap.nvim",
	})

	-- LSP Sources && Modules
	use({
		"neovim/nvim-lspconfig",
		"hrsh7th/cmp-nvim-lsp",
		"hrsh7th/cmp-buffer",
		"hrsh7th/cmp-path",
		"hrsh7th/cmp-cmdline",
		"hrsh7th/nvim-cmp",
		"hrsh7th/cmp-calc",
		"hrsh7th/cmp-nvim-lua",
		"hrsh7th/cmp-nvim-lsp-signature-help",
		"onsails/lspkind-nvim",
	})
	use({ "tzachar/cmp-tabnine", run = "./install.sh", requires = "hrsh7th/nvim-cmp" })

	use({ "jose-elias-alvarez/typescript.nvim" })

	-- Formatters and linters support
	use({
		"jose-elias-alvarez/null-ls.nvim",
		requires = { { "nvim-lua/plenary.nvim" } },
	})

	-- Bar with position
	use({
		"SmiteshP/nvim-navic",
		requires = "neovim/nvim-lspconfig",
	})

	-- { Snippets }
	use({
		"L3MON4D3/LuaSnip",
		"saadparwaiz1/cmp_luasnip",
		"rafamadriz/friendly-snippets",
	})

	-- { File Explorer }
	use({
		"kyazdani42/nvim-tree.lua",
		requires = "kyazdani42/nvim-web-devicons",
		tag = "nightly",
	})

	-- { TreeSitter }
	use({
		"nvim-treesitter/nvim-treesitter",
		run = function()
			local ts_update = require("nvim-treesitter.install").update({ with_sync = true })
			ts_update()
		end,
	})

	-- { Colorscheme }
	use({ "bluz71/vim-nightfly-colors" })

	-- { Fuzzy Finders }
	use({
		"nvim-telescope/telescope.nvim",
		tag = "0.1.0",
		-- or                            , branch = '0.1.x',
		requires = { { "nvim-lua/plenary.nvim" } },
	})

	-- { Comments }
	use({
		"numToStr/Comment.nvim",
		requires = "JoosepAlviste/nvim-ts-context-commentstring",
	})

	-- { Lines }
	use({
		"nvim-lualine/lualine.nvim",
		requires = { "kyazdani42/nvim-web-devicons", opt = true },
	})
	use({ "akinsho/bufferline.nvim", tag = "v3.*", requires = "nvim-tree/nvim-web-devicons" })

	-- { Tag }
	use({
		"windwp/nvim-autopairs",
		"windwp/nvim-ts-autotag",
	})

	-- { Git Signs }
	use({
		"lewis6991/gitsigns.nvim",
		-- tag = 'release' -- To use the latest release (do not use this if you run Neovim nightly or dev builds!)
	})
	use({ "akinsho/git-conflict.nvim", tag = "*" })

	-- { Folds }
	use({ "kevinhwang91/nvim-ufo", requires = "kevinhwang91/promise-async" })

	-- { TODO }
	-- TODO: test
	use({
		"folke/todo-comments.nvim",
		requires = "nvim-lua/plenary.nvim",
	})

	-- { Cyclist }
	use({ "tjdevries/cyclist.vim" })

	-- { Cache plugins }
	use({ "lewis6991/impatient.nvim" })

	-- { Hash Colors }
	use({ "norcalli/nvim-colorizer.lua" })

	-- Automatically set up your configuration after cloning packer.nvim
	-- Put this at the end after all plugins
	if packer_bootstrap then
		require("packer").sync()
	end
end)
