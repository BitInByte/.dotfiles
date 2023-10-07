return {
	-- {
	"nvim-treesitter/nvim-treesitter",
	event = { "BufReadPre", "BufNewFile" },
	dependencies = {
		"nvim-treesitter/nvim-tree-docs",
		"nvim-treesitter/nvim-treesitter-context",
		"windwp/nvim-ts-autotag",
	},
	build = ":TSUpdate",
	config = function()
		-- Parser for context awareness
		require("core.treesitter") -- colorscheme util
	end,
	-- },
}
