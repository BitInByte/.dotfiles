-- #000000
return {
	-- {
	"norcalli/nvim-colorizer.lua",
	event = { "BufReadPre", "BufNewFile" },
	-- opts = {},
	-- config = true, -- equivalent to require("colorizer").setup()
	config = function()
		require("colorizer").setup()
	end,
	-- },
}
