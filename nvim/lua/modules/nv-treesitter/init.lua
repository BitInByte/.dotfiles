return {
	{
		"nvim-treesitter/nvim-treesitter",
		build = ":TSUpdate",
		config = function()
			require("core.treesitter") -- colorscheme util
		end,
	},
}
