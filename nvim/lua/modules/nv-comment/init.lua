vim.cmd([[
" echo 'Hello world'
]])

return {

	-- {
	"numToStr/Comment.nvim",
	dependencies = { "JoosepAlviste/nvim-ts-context-commentstring" },
	event = { "BufReadPre", "BufNewFile" },
	config = function()
		require("Comment").setup({
			sticky = false,
			-- toggler = {
			-- 	line = "<leader>//",
			-- 	block = "<leader>\\\\",
			-- },
			-- opleader = {
			-- 	line = "<leader>/",
			-- 	block = "<leader>\\",
			-- },
			pre_hook = require("ts_context_commentstring.integrations.comment_nvim").create_pre_hook(),
		})
	end,
	-- },
}
