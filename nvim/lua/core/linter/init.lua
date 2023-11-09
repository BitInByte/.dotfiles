local lint = require("lint")

lint.linters_by_ft = {
	-- javascript = { "eslint_d" },
	-- javascriptreact = { "eslint_d" },
	-- typescript = { "eslint_d" },
	-- typescriptreact = { "eslint_d" },
	-- svelte = { "eslint_d" },
}

-- local lint_augroup = vim.api.nvim_create_autocmd("lint", { clear = true })
-- local lint_augroup = vim.api.nvim_create_autocmd("lint", { clear = false })
-- local lint_augroup = vim.api.nvim_create_autocmd("lint", {})

vim.api.nvim_create_autocmd({ "BufEnter", "BufWritePost", "InsertLeave" }, {
	-- group = lint_augroup,
	callback = function()
		lint.try_lint()
	end,
})

vim.keymap.set("n", "<leader>bl", function()
	lint.try_lint()
end, { desc = "Buffer lint" })
