-- local status, gitsigns = pcall(require, "gitsigns")
-- if not status then
-- 	return
-- end

-- local status_conflict, gitconflict = pcall(require, "git-conflict")
-- if not status_conflict then
-- 	return
-- end

return {

	{
		"lewis6991/gitsigns.nvim",
		-- version = 'release' -- To use the latest release (do not use this if you build Neovim nightly or dev builds!)
		config = function()
			require("gitsigns").setup()
			-- gitconflict.setup()
		end,
	},
}
