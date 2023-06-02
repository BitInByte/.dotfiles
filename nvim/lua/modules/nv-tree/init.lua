-- empty setup using defaults
return {
	"nvim-neo-tree/neo-tree.nvim",
	version = "v2.x",
	dependencies = {
		"nvim-lua/plenary.nvim",
		"nvim-tree/nvim-web-devicons", -- not strictly required, but recommended
		"MunifTanjim/nui.nvim",
	},
	config = function()
		-- Unless you are still migrating, remove the deprecated commands from v1.x
		vim.cmd([[ let g:neo_tree_remove_legacy_commands = 1 ]])
		require("neo-tree").setup({
			close_if_last_window = true,
		})
	end,

	-- {
	-- 	"nvim-tree/nvim-tree.lua",
	-- 	dependencies = { "nvim-tree/nvim-web-devicons" },
	-- 	version = "nightly",
	-- 	config = function()
	-- 		-- disable netrw at the very start of your init.lua (strongly advised)
	-- 		vim.g.loaded_netrw = 1
	-- 		vim.g.loaded_netrwPlugin = 1
	--
	-- 		-- set termguicolors to enable highlight groups
	-- 		vim.opt.termguicolors = true
	--
	-- 		require("nvim-tree").setup({
	-- 			actions = {
	-- 				open_file = {
	-- 					quit_on_open = true,
	-- 				},
	-- 			},
	-- 		})
	-- 	end,
	-- },
}
