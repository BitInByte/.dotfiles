local status, comment = pcall(require, "Comment")
if not status then
	return
end

comment.setup({
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
