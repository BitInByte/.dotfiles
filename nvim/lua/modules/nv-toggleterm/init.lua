-- local status, toggleterm = pcall(require, "toggleterm")
-- if not status then
-- 	return
-- end

return {
	{
		"akinsho/toggleterm.nvim",
		version = "*",
		config = function()
			local toggleterm = require("toggleterm")
			toggleterm.setup()
		end,
	},
}
