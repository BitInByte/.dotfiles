-- local status, colorized = pcall(require, "colorized")
-- if not status then
-- 	return
-- end

-- #000000
return {
	{
		"norcalli/nvim-colorizer.lua",
		config = function()
			require("colorizer").setup()
		end,
	},
}
