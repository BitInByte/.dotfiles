require("mason").setup()
require("mason-lspconfig").setup({
	ensure_installed = { "lua_ls", "tsserver", "jdtls", "angularls", "bashls" },
	automatic_installation = true,
})
require("mason-nvim-dap").setup({
	automatic_installation = true,
	ensure_installed = { "chrome" },
	automatic_setup = true,
})
require("mason-null-ls").setup({
	-- ensure_installed = { "stylua", "eslint_d", "prettierd", "prettier" },
	ensure_installed = { "stylua", "prettier" },
	automatic_installation = true,
})
