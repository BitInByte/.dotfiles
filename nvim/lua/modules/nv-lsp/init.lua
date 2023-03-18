return {

	{
		"neovim/nvim-lspconfig",
		config = function()
			require("core.lsp") -- lsp engine
		end,
	},

	{
		"williamboman/mason.nvim",
		dependencies = {
			"williamboman/mason-lspconfig.nvim",
			"jayp0521/mason-null-ls.nvim",
			"jayp0521/mason-nvim-dap.nvim",
			{ "jose-elias-alvarez/typescript.nvim" },
			{ "lervag/vimtex" },
			{ "akinsho/flutter-tools.nvim", dependencies = { "nvim-lua/plenary.nvim" } },
		},
		config = function()
			require("core.mason") -- lsp management
			require("core.null-ls") -- formaters management
			require("core.dap") -- debuggers management
		end,
	},
	"mfussenegger/nvim-dap",
	"rcarriga/nvim-dap-ui",

	-- LSP Sources && Modules
	{
		"hrsh7th/nvim-cmp",
		config = function()
			require("core.cmp") -- completion
		end,
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
	-- use({ "tzachar/cmp-tabnine", build = "./install.sh", dependencies = "hrsh7th/nvim-cmp" })
}
