vim.o.spell = true -- Enables spell just for latex files
vim.o.wrap = true -- Text keep going through the page

vim.api.nvim_create_autocmd("BufWritePost", {
	-- pattern = "*.tex",
	group = vim.api.nvim_create_augroup("Build Tex", { clear = true }),
	callback = function()
		vim.cmd([[TexlabBuild]])
	end,
})
