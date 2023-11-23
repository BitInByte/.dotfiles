require("mason").setup()
require("mason-lspconfig").setup({
	ensure_installed = { "tsserver" },
	-- ensure_installed = { "lua_ls", "tsserver", "jdtls", "angularls", "bashls" },
	automatic_installation = true,
})
-- Now we're using dap_vscode_js and to manage js
-- require("mason-nvim-dap").setup({
-- 	automatic_installation = true,
-- 	ensure_installed = { "firefox", "chrome" },
-- 	-- automatic_setup = true,
-- 	handlers = {
-- 		function(config)
-- 			-- all sources with no handler get passed here
--
-- 			-- Keep original functionality
-- 			require("mason-nvim-dap").default_setup(config)
-- 		end,
-- 		-- firefox = function(config)
-- 		-- 	require("mason-nvim-dap").default_setup(config)
-- 		-- end,
-- 	},
-- })
