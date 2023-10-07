return {
	-- {
	-- TODO: test
	"folke/todo-comments.nvim",
	event = { "BufReadPre", "BufNewFile" },
	dependencies = { "nvim-lua/plenary.nvim" },
	config = true,
	-- config = function()
	-- 	local todo = require("todo-comments")
	-- 	todo.setup()
	-- end,
	-- },
}
