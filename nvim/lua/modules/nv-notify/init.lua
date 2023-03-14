-- For noice
require("notify").setup({
	timeout = 1000,
	on_open = function(win)
		vim.api.nvim_win_set_config(win, { focusable = false })
	end,
})
