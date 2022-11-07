local null_ls = require("null-ls")
-- -- require("null-ls").setup(
-- --   {
-- --     sources = {
-- --       require("null-ls").builtins.formatting.stylua,
-- --       -- require("null-ls").builtins.diagnostics.eslint,
-- --       require("null-ls").builtins.diagnostics.eslint_d,
-- --       -- require("null-ls").builtins.completion.spell,
-- --       -- require("null-ls").builtins.formatting.prettierd
-- --       require("null-ls").builtins.formatting.prettier
-- --     }
-- --   }
-- -- )
-- require "mason-null-ls".setup_handlers {
--   function(source_name)
--     -- all sources with no handler get passed here
--   end,
--   stylua = function(source_name, methods)
--     null_ls.register(null_ls.builtins.formatting.stylua)
--   end,
--   eslint_d = function(source_name, methods)
--     null_ls.register(null_ls.builtins.diagnostics.eslint_d)
--   end,
--   prettierd = function(source_name, methods)
--     null_ls.register(null_ls.builtins.formatting.prettierd)
--   end
-- }
--
-- null_ls.setup()
local formatting = null_ls.builtins.formatting -- to setup formatters
local diagnostics = null_ls.builtins.diagnostics -- to setup linters
local augroup = vim.api.nvim_create_augroup("LspFormatting", {})
null_ls.setup({
	sources = {
		--  to disable file types use
		--  "formatting.prettier.with({disabled_filetypes: {}})" (see null-ls docs)
		 formatting.prettierd, -- js/ts formatter
		formatting.stylua, -- lua formatter
		diagnostics.eslint_d.with(
		  {
		    -- js/ts linter
		    -- only enable eslint if root has .eslintrc.js (not in youtube nvim video)
		    condition = function(utils)
		      return utils.root_has_file(".eslintrc.js") -- change file extension if you use something else
		    end
		  }
		)
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
					vim.lsp.buf.format({
						bufnr = bufnr,
						filter = function(format_client)
							return format_client.name == "null-ls"
						end,
					})
					-- vim.lsp.buf.formatting_sync()
					-- vim.lsp.buf.format({bufnr = bufnr})
				end,
			})
		end
	end,
})
