-- local status, null_ls = pcall(require, "null-ls")
-- if not status then
-- 	return
-- end
--
-- local status_utils, utils = pcall(require, "null-ls.utils")
-- if not status_utils then
-- 	return
-- end
local null_ls = require("null-ls")
-- local utils = require("null-ls.utils")
local utils = require("core.lsp.utils.format_util")

-- local augroup = vim.api.nvim_create_augroup("LspFormatting", {})

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
		-- formatting.prettierd,
		formatting.phpcsfixer,
		formatting.blade_formatter,
		formatting.prettier,
		-- formatting.gofumpt,
		-- require("typescript.extensions.null-ls.code-actions"),
	},
	-- you can reuse a shared lspconfig on_attach callback here
	-- on_attach = function(client, bufnr)
	-- 	if client.supports_method("textDocument/formatting") then
	-- 		vim.api.nvim_clear_autocmds({ group = augroup, buffer = bufnr })
	-- 		vim.api.nvim_create_autocmd("BufWritePre", {
	-- 			group = augroup,
	-- 			buffer = bufnr,
	-- 			callback = function()
	-- 				local filetype = vim.api.nvim_buf_get_option(0, "filetype")
	-- 				-- vim.notify("Formating with null ls")
	-- 				-- on 0.8, you should use vim.lsp.buf.format({ bufnr = bufnr }) instead
	-- 				-- vim.lsp.buf.formatting_sync()
	-- 				-- vim.lsp.buf.format({ bufnr = bufnr })
	-- 				vim.lsp.buf.format({
	-- 					async = false,
	-- 					filter = utils.compute_filters(filetype),--[[ function(cli)
	-- 						return cli.name == "null-ls"
	-- 					end, ]]
	-- 				})
	-- 				-- print("File formated with prettier")
	-- 			end,
	-- 			-- desc = "[lsp] format on save",
	-- 		})
	-- 	end
	-- end,
})
