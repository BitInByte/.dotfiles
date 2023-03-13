-- local status, lazy = pcall(require, "lazy")
-- if not status then
-- 	return
-- end

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
vim.opt.rtp:prepend(lazypath)

local opts = {}

require("lazy").setup({
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
	-- use({ "tzachar/cmp-tabnine", build = "./install.sh", dependencies = "hrsh7th/nvim-cmp" })

	{ "jose-elias-alvarez/typescript.nvim" },
	{ "lervag/vimtex" },
	{ "akinsho/flutter-tools.nvim", dependencies = { "nvim-lua/plenary.nvim" } },

	-- Formatters and linters support
	{
		"jose-elias-alvarez/null-ls.nvim",
		dependencies = { "nvim-lua/plenary.nvim" },
	},

	-- { UI }
	{
		"folke/noice.nvim",
		-- config = function()
		-- 	require("noice").setup({
		-- 		-- add any lazyions here
		-- 	})
		-- end,
		dependencies = {
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
		dependencies = { "nvim-tree/nvim-web-devicons" },
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
		dependencies = { "neovim/nvim-lspconfig" },
	},

	-- { Snippets }
	{
		"L3MON4D3/LuaSnip",
		"saadparwaiz1/cmp_luasnip",
		"rafamadriz/friendly-snippets",
	},

	-- { File Explorer }
	{
		"nvim-tree/nvim-tree.lua",
		dependencies = { "nvim-tree/nvim-web-devicons" },
		version = "nightly",
	},

	-- { TreeSitter }
	{ "nvim-treesitter/nvim-treesitter", build = ":TSUpdate" },

	-- { Where am I? }
	-- { "echasnovski/mini.map" },
	{ "echasnovski/mini.map", version = false },

	-- { Colorscheme }
	{ "bluz71/vim-nightfly-colors" },
	-- use({ "catppuccin/vim", as = "catppuccin" })
	{ "catppuccin/nvim", name = "catppuccin" },
	{ "Mofiqul/dracula.nvim" },

	-- { Pane helper }
	{ "sunjon/shade.nvim" },

	-- { Fuzzy Finders }
	{
		"nvim-telescope/telescope.nvim",
		version = "0.1.0",
		-- or                            , branch = '0.1.x',
		dependencies = { "nvim-lua/plenary.nvim" },
	},

	-- { Comments }
	{
		"numToStr/Comment.nvim",
		dependencies = { "JoosepAlviste/nvim-ts-context-commentstring" },
	},
	{
		"danymat/neogen",
		dependencies = { "nvim-treesitter/nvim-treesitter" },
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
		dependencies = { "nvim-tree/nvim-web-devicons", lazy = true },
	},
	-- use({ "akinsho/bufferline.nvim", version = "v3.*", dependencies = "nvim-tree/nvim-web-devicons" })
	{ "akinsho/bufferline.nvim", dependencies = { "nvim-tree/nvim-web-devicons" } },
	{
		"noib3/nvim-cokeline",
		dependencies = { "nvim-tree/nvim-web-devicons" }, -- If you want devicons
		-- config = function()
		-- 	-- require("cokeline").setup()
		-- end,
	},

	-- { version }
	{
		"windwp/nvim-autopairs",
		-- "windwp/nvim-ts-autoversion",
	},

	-- { Git Signs }
	{
		"lewis6991/gitsigns.nvim",
		-- version = 'release' -- To use the latest release (do not use this if you build Neovim nightly or dev builds!)
	},

	-- { Mark Signs }
	{
		"chentoast/marks.nvim",
	},

	-- { Git Conflict Tool}
	-- use({ "akinsho/git-conflict.nvim", version = "*" })

	-- { Git Diff Tool}
	-- use({ "sindrets/diffview.nvim", dependencies = "nvim-lua/plenary.nvim" })

	-- { Git Hero }
	{ "tpope/vim-fugitive" },

	-- { Surround me this }
	{ "tpope/vim-surround" },

	-- { Folds }
	{ "kevinhwang91/nvim-ufo", dependencies = { "kevinhwang91/promise-async" } },

	-- { TODO }
	-- TODO: test
	{
		"folke/todo-comments.nvim",
		dependencies = { "nvim-lua/plenary.nvim" },
	},

	-- { Cyclist }
	{
		"tjdevries/cyclist.vim",
	},

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
