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
		"mfussenegger/nvim-dap",
		"rcarriga/nvim-dap-ui",
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
	-- use({ "tzachar/cmp-tabnine", run = "./install.sh", requires = "hrsh7th/nvim-cmp" })

	use({ "jose-elias-alvarez/typescript.nvim" })
	use("lervag/vimtex")
	use({ "akinsho/flutter-tools.nvim", requires = "nvim-lua/plenary.nvim" })

	-- Formatters and linters support
	use({
		"jose-elias-alvarez/null-ls.nvim",
		requires = { { "nvim-lua/plenary.nvim" } },
	})

	-- Tell me my problem
	-- Lua
	use({
		"folke/trouble.nvim",
		requires = "nvim-tree/nvim-web-devicons",
		config = function()
			require("trouble").setup({
				-- your configuration comes here
				-- or leave it empty to use the default settings
				-- refer to the configuration section below
			})
		end,
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

	-- { Where am I? }
	use("echasnovski/mini.map")

	-- { Colorscheme }
	use({ "bluz71/vim-nightfly-colors" })
	-- use({ "catppuccin/vim", as = "catppuccin" })
	use({ "catppuccin/nvim", as = "catppuccin" })
	use("Mofiqul/dracula.nvim")

	-- { Pane helper }
	use("sunjon/shade.nvim")

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
	use({
		"danymat/neogen",
		requires = "nvim-treesitter/nvim-treesitter",
		-- Uncomment next line if you want to follow only stable versions
		-- tag = "*"
	})
	use({
		"kkoomen/vim-doge",
		run = ":call doge#install()",
	})

	-- { Lines }
	use({
		"nvim-lualine/lualine.nvim",
		requires = { "kyazdani42/nvim-web-devicons", opt = true },
	})
	-- use({ "akinsho/bufferline.nvim", tag = "v3.*", requires = "nvim-tree/nvim-web-devicons" })
	use({ "akinsho/bufferline.nvim", requires = "nvim-tree/nvim-web-devicons" })
	use({
		"noib3/nvim-cokeline",
		requires = "kyazdani42/nvim-web-devicons", -- If you want devicons
		-- config = function()
		-- 	-- require("cokeline").setup()
		-- end,
	})

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

	-- { Git Conflict Tool}
	-- use({ "akinsho/git-conflict.nvim", tag = "*" })

	-- { Git Diff Tool}
	-- use({ "sindrets/diffview.nvim", requires = "nvim-lua/plenary.nvim" })

	-- { Git Hero }
	use({ "tpope/vim-fugitive" })

	-- { Surround me this }
	use({ "tpope/vim-surround" })

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

	-- {Term Utility}
	use({
		"akinsho/toggleterm.nvim",
		tag = "*",
	})

	-- { Motions }
	use({ "easymotion/vim-easymotion" })

	-- { UndoMeThis }
	use("mbbill/undotree")

	-- Automatically set up your configuration after cloning packer.nvim
	-- Put this at the end after all plugins
	if packer_bootstrap then
		require("packer").sync()
	end
end)
