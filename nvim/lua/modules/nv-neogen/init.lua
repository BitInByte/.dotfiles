return {
	-- {
	"danymat/neogen",
	event = "InsertEnter",
	dependencies = { "nvim-treesitter/nvim-treesitter", "L3MON4D3/LuaSnip" },
	-- Uncomment next line if you want to follow only stable versions
	-- version = "*"
	config = function()
		local neogen = require("neogen")
		neogen.setup({
			snippet_engine = "luasnip",
		})
	end,
	-- },
}
