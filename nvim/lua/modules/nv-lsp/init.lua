return {

	"williamboman/mason.nvim",
	"williamboman/mason-lspconfig.nvim",
	"jayp0521/mason-null-ls.nvim",
	"jayp0521/mason-nvim-dap.nvim",
	"mfussenegger/nvim-dap",
	"rcarriga/nvim-dap-ui",

	-- LSP Sources && Modules
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
	-- use({ "tzachar/cmp-tabnine", build = "./install.sh", dependencies = "hrsh7th/nvim-cmp" })

	{ "jose-elias-alvarez/typescript.nvim" },
	{ "lervag/vimtex" },
	{ "akinsho/flutter-tools.nvim", dependencies = { "nvim-lua/plenary.nvim" } },

	-- config = function()
	--        vim.cmd[[echo "Loading lsp"]]
	-- 	require("core.mason") -- lsp management
	-- 	require("core.cmp") -- completion
	-- 	require("core.lsp") -- lsp engine
	-- 	require("core.null-ls") -- formaters management
	-- 	require("core.dap") -- debuggers management
	-- end,
}
