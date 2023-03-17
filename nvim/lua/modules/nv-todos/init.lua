-- local status, todo = pcall(require, "todo-comments")
-- if not status then
-- 	return
-- end

return {
	{
		"folke/todo-comments.nvim",
		dependencies = { "nvim-lua/plenary.nvim" },
		config = function()
            local todo = require("todo-comments")
			todo.setup()
		end,
	},
}
