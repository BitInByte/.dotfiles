return {
	-- {
	"folke/noice.nvim",
	event = "VeryLazy",
	-- config = function()
	-- 	require("noice").setup({
	-- 		-- add any lazyions here
	-- 	})
	-- end,
	dependencies = {
		-- if you lazy-load any plugin below, make sure to add proper `module="..."` entries
		"MunifTanjim/nui.nvim",
		-- lazyIONAL:
		--   `nvim-notify` is only needed, if you want to use the notification view.
		--   If not available, we use `mini` as the fallback
		{
			"rcarriga/nvim-notify",
			config = function()
				-- For noice
				require("notify").setup({
					timeout = 1000,
					on_open = function(win)
						vim.api.nvim_win_set_config(win, { focusable = false })
					end,
				})
			end,
		},
	},
	keys = {
		{
			"<leader>nd",
			function()
				require("noice").cmd("dismiss")
			end,
			desc = "Noice dismiss",
		},
		{
			"<leader>nh",
			function()
				require("noice").cmd("history")
			end,
			desc = "Noice history",
		},
		{
			"<leader>nt",
			function()
				require("noice").cmd("telescope")
			end,
			desc = "Noice telescope",
		},
	},
	opts = {},
	-- config = function()
	-- 	local noice = require("noice")
	-- 	noice.setup({
	-- 		-- add any options here
	-- 	})
	-- 	-- For noice
	-- 	require("notify").setup({
	-- 		timeout = 1000,
	-- 		on_open = function(win)
	-- 			vim.api.nvim_win_set_config(win, { focusable = false })
	-- 		end,
	-- 	})
	--
	-- 	-- vim.keymap.set("n", "<leader>nd", function()
	-- 	-- 	noice.cmd("dismiss")
	-- 	-- end, { desc = "Noice dismiss" })
	-- 	-- vim.keymap.set("n", "<leader>nh", function()
	-- 	-- 	noice.cmd("history")
	-- 	-- end, { desc = "Noice history" })
	-- 	-- vim.keymap.set("n", "<leader>nt", function()
	-- 	-- 	noice.cmd("telescope")
	-- 	-- end, { desc = "Noice telescope" })
	-- end,
	-- init = function()
	-- 	vim.opt.termguicolors = true
	-- 	vim.opt.laststatus = 3 -- Status bar always on bottom (shared)
	-- end,
	-- },
}
