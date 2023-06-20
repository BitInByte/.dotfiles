return {
	{
		"L3MON4D3/LuaSnip",
		-- follow latest release.
		-- version = "<CurrentMajor>.*", -- Replace <CurrentMajor> by the latest released major (first number of latest release)
		-- install jsregexp (optional!).
		build = "make install_jsregexp",
		dependencies = {
			"saadparwaiz1/cmp_luasnip",
			"rafamadriz/friendly-snippets",
		},
		config = function()
			local luasnip = require("luasnip")
			require("luasnip.loaders.from_vscode").lazy_load()
			-- luasnip.filetype_extend("javascript", { "javascriptreact" })
			luasnip.filetype_extend("typescript", { "typescriptreact" })
			luasnip.filetype_extend("php", { "html" })
		end,
	},
}
