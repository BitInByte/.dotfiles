return {
	-- {
	"neovim/nvim-lspconfig",
	dependencies = {
		"williamboman/mason.nvim",
		-- Mason
		"williamboman/mason-lspconfig.nvim",
		"jayp0521/mason-nvim-dap.nvim",

		-- LSP
		-- { "jose-elias-alvarez/typescript.nvim" },
		{
			"pmizio/typescript-tools.nvim",
			dependencies = { "nvim-lua/plenary.nvim", "neovim/nvim-lspconfig" },
			opts = {},
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
		"mfussenegger/nvim-dap",
		"rcarriga/nvim-dap-ui",

		-- NULL-LS
		"nvim-lua/plenary.nvim",

		-- Formatter
		{
			"stevearc/conform.nvim",
			opts = {},
		},

		-- Linters
		{ "mfussenegger/nvim-lint" },
	},
	build = ":MasonUpdate", -- :MasonUpdate updates registry contents
	config = function()
		-- Everything related to LSP need to have the following order
		-- Mason should be first and then lsp and lastly all of the others
		-- If we change this order, can lead to unexpected behaviour
		require("core.mason") -- lsp management
		-- Lsp needs to be loaded after mason in order for
		-- automatic_installation to work
		require("core.lsp") -- lsp engine
		require("core.cmp") -- completion
		require("core.dap") -- debuggers management
		require("core.formatter") -- formatters
		require("core.linter") -- linters
	end,
	-- },
}
