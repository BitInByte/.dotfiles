return {
	"Wansmer/treesj",
	-- keys = { '<space>m', '<space>j', '<space>s' },
	keys = {
		{ "<leader>ts", "<cmd>TSJToggle<cr>", desc = "Treesj toggle" },
	},
	dependencies = { "nvim-treesitter/nvim-treesitter" },
	cmd = {
		"TSJToggle",
		"TSJSplit",
		"TSJJoin",
	},
	opts = {},
	-- opts = {
	-- 	langs = {}
	-- },
	-- config = function()
	-- 	require("treesj").setup({--[[ your config ]]
	-- 	})
	-- end,
}
