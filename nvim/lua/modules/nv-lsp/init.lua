return {
	-- {
	"neovim/nvim-lspconfig",
	dependencies = {
		"williamboman/mason.nvim",
		-- Mason
		"williamboman/mason-lspconfig.nvim",
		"jay-babu/mason-null-ls.nvim",
		"jayp0521/mason-nvim-dap.nvim",

		-- LSP
		-- { "jose-elias-alvarez/typescript.nvim" },
		{
			"pmizio/typescript-tools.nvim",
			dependencies = { "nvim-lua/plenary.nvim", "neovim/nvim-lspconfig" },
			opts = {
				settings = {
					code_lens = "all",
				},
			},
		},
		{ "lervag/vimtex" },
		{ "akinsho/flutter-tools.nvim", dependencies = { "nvim-lua/plenary.nvim" } },
		{ "mfussenegger/nvim-jdtls" },

		-- CMP
		{
			"hrsh7th/nvim-cmp",
			event = "InsertEnter",
			dependencies = {
				"hrsh7th/cmp-nvim-lsp",
				"hrsh7th/cmp-buffer",
				"hrsh7th/cmp-path",
				"hrsh7th/cmp-cmdline",
				"hrsh7th/cmp-calc",
				"hrsh7th/cmp-nvim-lua",
				"hrsh7th/cmp-nvim-lsp-signature-help",
				"onsails/lspkind-nvim",
			},
		},

		-- DAP
		{
			"mfussenegger/nvim-dap",
			event = { "BufReadPre", "BufNewFile" },
			dependencies = {
				"rcarriga/nvim-dap-ui",
				"theHamsta/nvim-dap-virtual-text",
				"mxsdev/nvim-dap-vscode-js",
				{
					"microsoft/vscode-js-debug",
					-- opt = true,
					build = "npm install --legacy-peer-deps && npx gulp vsDebugServerBundle && mv dist out",
				},
			},
		},

		-- NULL-LS
		"nvim-lua/plenary.nvim",

		-- Formatter
		-- {
		-- 	"stevearc/conform.nvim",
		-- 	-- opts = {},
		-- 	config = function()
		-- 		require("core.formatter") -- formatters
		-- 	end,
		-- },

		-- Linters
		-- { "mfussenegger/nvim-lint" },

		-- UI Tools
		-- {
		-- 	"nvimdev/lspsaga.nvim",
		-- 	-- config = function()
		-- 	-- 	require("lspsaga").setup({
		-- 	-- 		-- symbol_in_winbar = {
		-- 	-- 		-- 	enable = false,
		-- 	-- 		-- },
		-- 	-- 	})
		-- 	-- end,
		-- 	dependencies = {
		-- 		"nvim-treesitter/nvim-treesitter", -- optional
		-- 		"nvim-tree/nvim-web-devicons", -- optional
		-- 	},
		-- },

		{
			"SmiteshP/nvim-navbuddy",
			dependencies = {
				"SmiteshP/nvim-navic",
				"MunifTanjim/nui.nvim",
			},
			opts = { lsp = { auto_attach = true } },
		},
		-- formatter / linter
		{
			"nvimtools/none-ls.nvim",
		},

		-- References made easy
		{
			"dnlhc/glance.nvim",
			event = "LspAttach",
			config = function()
				require("glance").setup({
					-- your configuration
				})
			end,
		},

		-- inlay hints until neovim 0.10 release
		-- "simrat39/inlay-hints.nvim",
	},
	build = ":MasonUpdate", -- :MasonUpdate updates registry contents
	config = function()
		-- Everything related to LSP need to have the following order
		-- Mason should be first and then lsp and lastly all of the others
		-- If we change this order, can lead to unexpected behaviour
		require("core.mason") -- lsp management
		-- Lsp needs to be loaded after mason in order for
		-- automatic_installation to work
		-- require("inlay-hints").setup({
		-- 	renderer = "inlay-hints/render/virtline",
		-- })
		require("core.lsp") -- lsp engine
		require("core.cmp") -- completion
		require("core.dap") -- debuggers management
		-- require("core.formatter") -- formatters
		-- require("core.linter") -- linters
		require("core.none-ls")
	end,
	-- },
}
