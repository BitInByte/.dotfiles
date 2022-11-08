require("mason").setup()
require("mason-lspconfig").setup({
	ensure_installed = { "sumneko_lua", "tsserver", "jdtls" },
	automatic_installation = true,
})
-- require("mason-nvim-dap").setup({
--	automatic_installation = true,
--})
require("mason-null-ls").setup({
	ensure_installed = { "stylua", "eslint_d", "prettierd" },
	automatic_installation = true,
})

