local status, lazy = pcall(require, "lazy")
if not status then
	return
end

local lazypath = vim.fn.stdpath("data") .. "/lazy/lazy.nvim"
if not vim.loop.fs_stat(lazypath) then
	vim.fn.system({
		"git",
		"clone",
		"--filter=blob:none",
		"https://github.com/folke/lazy.nvim.git",
		"--branch=stable", -- latest stable release
		lazypath,
	})
end
vim.lazy.rtp:prepend(lazypath)

local opts = {}

lazy.setup({
	-- {  LSP  }
	-- Mason - helper to install needed lsps
	{
		"williamboman/mason.nvim",
		"williamboman/mason-lspconfig.nvim",
		"jayp0521/mason-null-ls.nvim",
		"jayp0521/mason-nvim-dap.nvim",
		"mfussenegger/nvim-dap",
		"rcarriga/nvim-dap-ui",
	},

	-- LSP Sources && Modules
	{
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
	},
	-- use({ "tzachar/cmp-tabnine", build = "./install.sh", dependecies = "hrsh7th/nvim-cmp" })

	{ "jose-elias-alvarez/typescript.nvim" },
	{ "lervag/vimtex" },
	{ "akinsho/flutter-tools.nvim", dependecies = "nvim-lua/plenary.nvim" },

	-- Formatters and linters support
	{
		"jose-elias-alvarez/null-ls.nvim",
		dependecies = { { "nvim-lua/plenary.nvim" } },
	},

	-- { UI }
	{
		"folke/noice.nvim",
		-- config = function()
		-- 	require("noice").setup({
		-- 		-- add any lazyions here
		-- 	})
		-- end,
		dependecies = {
			-- if you lazy-load any plugin below, make sure to add proper `module="..."` entries
			"MunifTanjim/nui.nvim",
			-- lazyIONAL:
			--   `nvim-notify` is only needed, if you want to use the notification view.
			--   If not available, we use `mini` as the fallback
			"rcarriga/nvim-notify",
		},
	},

	-- Tell me my problem
	-- Lua
	{
		"folke/trouble.nvim",
		dependecies = "nvim-tree/nvim-web-devicons",
		config = function()
			require("trouble").setup({
				-- your configuration comes here
				-- or leave it empty to use the default settings
				-- refer to the configuration section below
			})
		end,
	},

	-- Bar with position
	{
		"SmiteshP/nvim-navic",
		dependecies = "neovim/nvim-lspconfig",
	},

	-- { Snippets }
	{
		"L3MON4D3/LuaSnip",
		"saadparwaiz1/cmp_luasnip",
		"rafamadriz/friendly-snippets",
	},

	-- { File Explorer }
	{
		"kyazdani42/nvim-tree.lua",
		dependecies = "kyazdani42/nvim-web-devicons",
		version = "nightly",
	},

	-- { TreeSitter }
	{ { "nvim-treesitter/nvim-treesitter", build = ":TSUpdate" } },

	-- { Where am I? }
	{ "echasnovski/mini.map" },

	-- { Colorscheme }
	{ "bluz71/vim-nightfly-colors" },
	-- use({ "catppuccin/vim", as = "catppuccin" })
	{ "catppuccin/nvim", as = "catppuccin" },
	{ "Mofiqul/dracula.nvim" },

	-- { Pane helper }
	{ "sunjon/shade.nvim" },

	-- { Fuzzy Finders }
	{
		"nvim-telescope/telescope.nvim",
		version = "0.1.0",
		-- or                            , branch = '0.1.x',
		dependecies = { { "nvim-lua/plenary.nvim" } },
	},

	-- { Comments }
	{
		"numToStr/Comment.nvim",
		dependecies = "JoosepAlviste/nvim-ts-context-commentstring",
	},
	{
		"danymat/neogen",
		dependecies = "nvim-treesitter/nvim-treesitter",
		-- Uncomment next line if you want to follow only stable versions
		-- version = "*"
	},
	{
		"kkoomen/vim-doge",
		build = ":call doge#install()",
	},

	-- { Lines }
	{
		"nvim-lualine/lualine.nvim",
		dependecies = { "kyazdani42/nvim-web-devicons", lazy = true },
	},
	-- use({ "akinsho/bufferline.nvim", version = "v3.*", dependecies = "nvim-tree/nvim-web-devicons" })
	{ "akinsho/bufferline.nvim", dependecies = "nvim-tree/nvim-web-devicons" },
	{
		"noib3/nvim-cokeline",
		dependecies = "kyazdani42/nvim-web-devicons", -- If you want devicons
		-- config = function()
		-- 	-- require("cokeline").setup()
		-- end,
	},

	-- { version }
	{
		"windwp/nvim-autopairs",
		"windwp/nvim-ts-autoversion",
	},

	-- { Git Signs }
	{
		"lewis6991/gitsigns.nvim",
		-- version = 'release' -- To use the latest release (do not use this if you build Neovim nightly or dev builds!)
	},

	-- { Git Conflict Tool}
	-- use({ "akinsho/git-conflict.nvim", version = "*" })

	-- { Git Diff Tool}
	-- use({ "sindrets/diffview.nvim", dependecies = "nvim-lua/plenary.nvim" })

	-- { Git Hero }
	{ "tpope/vim-fugitive" },

	-- { Surround me this }
	{ "tpope/vim-surround" },

	-- { Folds }
	{ "kevinhwang91/nvim-ufo", dependecies = "kevinhwang91/promise-async" },

	-- { TODO }
	-- TODO: test
	{
		"folke/todo-comments.nvim",
		dependecies = "nvim-lua/plenary.nvim",
	},

	-- { Cyclist }
	{ "tjdevries/cyclist.vim" },

	-- { Cache plugins }
	{ "lewis6991/impatient.nvim" },

	-- { Hash Colors }
	{ "norcalli/nvim-colorizer.lua" },

	-- {Term Utility}
	{
		"akinsho/toggleterm.nvim",
		version = "*",
	},

	-- { Motions }
	{ "easymotion/vim-easymotion" },

	-- { UndoMeThis }
	{ "mbbill/undotree" },
}, opts)
