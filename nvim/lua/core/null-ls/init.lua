local status, null_ls = pcall(require, "null-ls")
if not status then
	return
end

local status_utils, utils = pcall(require, "null-ls.utils")
if not status_utils then
	return
end

local augroup = vim.api.nvim_create_augroup("LspFormatting", {})

local formatting = null_ls.builtins.formatting
local diagnostics = null_ls.builtins.diagnostics

null_ls.setup({
	sources = {
		formatting.stylua,
		-- diagnostics.eslint_d,
		-- diagnostics.eslint_d.with({
		-- 	filetypes = { "javascript", "javascriptreact", "typescript", "vue", "html", "css" },
		-- 	condition = function()
		-- 		return utils.root_pattern(
		-- 			"eslint.config.js",
		-- 			-- https://eslint.org/docs/user-guide/configuring/configuration-files#configuration-file-formats
		-- 			".eslintrc",
		-- 			".eslintrc.js",
		-- 			".eslintrc.cjs",
		-- 			".eslintrc.yaml",
		-- 			".eslintrc.yml",
		-- 			".eslintrc.json",
		-- 			"package.json"
		-- 		)(vim.api.nvim_buf_get_name(0)) ~= nil
		-- 		-- )
		-- 	end,
		-- }),
		formatting.prettierd,
		require("typescript.extensions.null-ls.code-actions"),
	},
	-- you can reuse a shared lspconfig on_attach callback here
	on_attach = function(client, bufnr)
		if client.supports_method("textDocument/formatting") then
			vim.api.nvim_clear_autocmds({ group = augroup, buffer = bufnr })
			vim.api.nvim_create_autocmd("BufWritePre", {
				group = augroup,
				buffer = bufnr,
				callback = function()
					-- on 0.8, you should use vim.lsp.buf.format({ bufnr = bufnr }) instead
					vim.lsp.buf.format({ bufnr = bufnr })
				end,
			})
		end
	end,
})
