return {
	{
		"nvim-treesitter/nvim-treesitter",
		dependencies = {
			"nvim-treesitter/nvim-tree-docs",
			"nvim-treesitter/nvim-treesitter-context",
		},
		build = ":TSUpdate",
		config = function()
			-- Parser for context awareness
			require("core.treesitter") -- colorscheme util
		end,
	},
}
