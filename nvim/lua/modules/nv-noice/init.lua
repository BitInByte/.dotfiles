-- local status, noice = pcall(require, "noice")
-- if not status then
-- 	return
-- end

return {
	{
		"folke/noice.nvim",
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
			"rcarriga/nvim-notify",
		},
		config = function()
			local noice = require("noice")
			noice.setup({
				-- add any options here
			})
			-- For noice
			require("notify").setup({
				timeout = 1000,
				on_open = function(win)
					vim.api.nvim_win_set_config(win, { focusable = false })
				end,
			})

			vim.opt.termguicolors = true
		end,
	},
}
