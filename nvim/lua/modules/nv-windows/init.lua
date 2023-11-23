return {
	"anuvyklack/windows.nvim",
	event = "WinNew",
	dependencies = {
		"anuvyklack/middleclass",
		"anuvyklack/animation.nvim",
	},
	keys = { { "<C-w>z", "<cmd>WindowsMaximize<cr>", desc = "Focus pane split" } },
	config = function()
		-- vim.o.winwidth = 5
		-- vim.o.winminwidth = 10
		-- vim.o.equalalways = false
		require("windows").setup({
			autowidth = {
				enable = true,
			},
			animation = {
				enable = true,
				duration = 150,
			},
		})
	end,
}
