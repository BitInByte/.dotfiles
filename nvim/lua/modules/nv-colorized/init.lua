-- local status, colorized = pcall(require, "colorized")
-- if not status then
-- 	return
-- end

return {

	{
		"norcalli/nvim-colorizer.lua",
		setup = function()
			require("colorized").setup()
		end,
	},
}
