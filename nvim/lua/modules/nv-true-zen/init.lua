return {
	"Pocco81/true-zen.nvim",
	keys = {
		{

			"<leader>zn",
			":TZNarrow<CR>",
			desc = "True Zen narrow",
		},
		{
			"<leader>zn",
			mode = { "v" },
			":'<,'>TZNarrow<CR>",
			desc = "True Zen narrow",
		},
		{
			"<leader>zf",
			":TZFocus<CR>",
			desc = "True Zen focus",
		},
		{
			"<leader>zm",
			":TZMinimalist<CR>",
			desc = "True Zen minimalist",
		},
		{
			"<leader>za",
			":TZAtaraxis<CR>",
			desc = "True Zen ataraxis",
		},
	},
	opts = {},
	-- config = function()
	-- 	require("true-zen").setup({
	-- 		-- your config goes here
	-- 		-- or just leave it empty :)
	-- 	})
	--
	-- 	-- local api = vim.api
	-- 	-- -- api.nvim_set_keymap("n", "<leader>zn", ":TZNarrow<CR>", { desc = "True Zen narrow" })
	-- 	-- -- api.nvim_set_keymap("v", "<leader>zn", ":'<,'>TZNarrow<CR>", { desc = "True Zen narrow" })
	-- 	-- -- api.nvim_set_keymap("n", "<leader>zf", ":TZFocus<CR>", { desc = "True Zen focus" })
	-- 	-- -- api.nvim_set_keymap("n", "<leader>zm", ":TZMinimalist<CR>", { desc = "True Zen minimalist" })
	-- 	-- api.nvim_set_keymap("n", "<leader>za", ":TZAtaraxis<CR>", { desc = "True Zen ataraxis" })
	-- end,
}
