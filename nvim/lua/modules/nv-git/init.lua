return {

	-- {
	"lewis6991/gitsigns.nvim",
	event = { "BufReadPre", "BufNewFile" },
	-- version = 'release' -- To use the latest release (do not use this if you build Neovim nightly or dev builds!)
	config = function()
		require("gitsigns").setup({
			current_line_blame = true, -- Toggle with `:Gitsigns toggle_current_line_blame`
		})
		-- gitconflict.setup()
	end,
	-- },
}
