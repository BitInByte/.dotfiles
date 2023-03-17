-- local status, neogen = pcall(require, "neogen")
-- if not status then
-- 	return
-- end

return {
	{
		"danymat/neogen",
		dependencies = { "nvim-treesitter/nvim-treesitter" },
		-- Uncomment next line if you want to follow only stable versions
		-- version = "*"
		config = function()
            local neogen = require("neogen")
			neogen.setup({})
		end,
	},
}
