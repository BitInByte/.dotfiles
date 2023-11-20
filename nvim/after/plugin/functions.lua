local augroup = vim.api.nvim_create_augroup
local autocmd = vim.api.nvim_create_autocmd
local yank_group = augroup("HighlightYank", { clear = true })
autocmd("TextYankPost", {
	group = yank_group,
	-- pattern = '*',
	callback = function()
		vim.highlight.on_yank()
	end,
})

-- local folds_group = augroup("FoldPersistence", { clear = true })
-- autocmd("BufWinLeave", {
-- 	group = folds_group,
-- 	pattern = "*.*",
-- 	callback = function()
-- 		vim.cmd.mkview({ mods = { emsg_silent = true } })
-- 		-- vim.cmd.mkview()
-- 	end,
-- })
-- autocmd("BufWinEnter", {
-- 	group = folds_group,
-- 	pattern = "*.*",
-- 	callback = function()
-- 		vim.cmd.loadview({ mods = { emsg_silent = true } })
-- 		-- vim.cmd.loadview()
-- 	end,
-- })
