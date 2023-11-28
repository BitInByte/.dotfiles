return {
	"ThePrimeagen/harpoon",
	dependencies = {
		"nvim-lua/plenary.nvim",
	},
	keys = {
		{
			"<leader>ham",
			"<cmd>lua require('harpoon.mark').add_file()<cr>",
			desc = "Mark file with harpoon",
			-- Defaluts to n
			-- Can be string or string[]
			-- mode = "n",
		},
		{
			"<leader>han",
			"<cmd>lua require('harpoon.ui').nav_next()<cr>",
			desc = "Go to next harpoon mark",
		},
		{
			"<leader>hap",
			"<cmd>lua require('harpoon.ui').nav_prev()<cr>",
			desc = "Go to previous harpoon mark",
		},
		{
			"<leader>hae",
			"<cmd>lua require('harpoon.ui').toggle_quick_menu()<cr>",
			desc = "Open harpoon file explorer",
		},
		{
			"<leader>hat",
			"<cmd>Telescope harpoon marks<cr>",
			desc = "Open harpoon telescope",
		},
	},
	opts = {},
	-- config = function()
	-- 	local keymap = vim.keymap
	-- 	-- keymap.set(
	-- 	-- 	"n",
	-- 	-- 	"<leader>ham",
	-- 	-- 	"<cmd>lua require('harpoon.mark').add_file()<cr>",
	-- 	-- 	{ desc = "Mark file with harpoon" }
	-- 	-- )
	-- 	-- keymap.set(
	-- 	-- 	"n",
	-- 	-- 	"<leader>han",
	-- 	-- 	"<cmd>lua require('harpoon.ui').nav_next()<cr>",
	-- 	-- 	{ desc = "Go to next harpoon mark" }
	-- 	-- )
	-- 	-- keymap.set(
	-- 	-- 	"n",
	-- 	-- 	"<leader>hap",
	-- 	-- 	"<cmd>lua require('harpoon.ui').nav_prev()<cr>",
	-- 	-- 	{ desc = "Go to previous harpoon mark" }
	-- 	-- )
	-- 	-- keymap.set(
	-- 	-- 	"n",
	-- 	-- 	"<leader>hae",
	-- 	-- 	"<cmd>lua require('harpoon.ui').toggle_quick_menu()<cr>",
	-- 	-- 	{ desc = "Open hapoon file explorer" }
	-- 	-- )
	-- end,
}
