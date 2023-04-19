return {
	{
		"L3MON4D3/LuaSnip",
		dependencies = {

			"saadparwaiz1/cmp_luasnip",
			"rafamadriz/friendly-snippets",
		},
		config = function()
			local luasnip = require("luasnip")
			-- luasnip.filetype_extend("javascript", { "javascriptreact" })
			luasnip.filetype_extend("typescript", { "typescriptreact" })
			-- luasnip.filetype_extend("php", { "html" })
		end,
	},
}
