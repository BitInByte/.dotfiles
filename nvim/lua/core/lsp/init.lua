local cmp_nvim_lsp = require("cmp_nvim_lsp")

local navic = require("nvim-navic")

local status, builtin = pcall(require, "telescope.builtin")
if not status then
	return
end

local utils_status, utils = pcall(require, "core.lsp.utils.format_util")
if not utils_status then
	return
end

local keymap = vim.keymap

-- Mappings.
-- See `:help vim.diagnostic.*` for documentation on any of the below functions
local mappingOpts = { noremap = true, silent = true }
keymap.set("n", "<space>e", vim.diagnostic.open_float, mappingOpts)
keymap.set("n", "[d", vim.diagnostic.goto_prev, mappingOpts)
keymap.set("n", "]d", vim.diagnostic.goto_next, mappingOpts)
keymap.set("n", "<space>q", vim.diagnostic.setloclist, mappingOpts)

-- Use LspAttach autocommand to only map the following keys
-- after the language server attaches to the current buffer
vim.api.nvim_create_autocmd("LspAttach", {
	group = vim.api.nvim_create_augroup("UserLspConfig", {}),
	callback = function(ev)
		local bufnr = ev.buf
		local client = vim.lsp.get_client_by_id(ev.data.client_id)
		local filetype = vim.api.nvim_buf_get_option(0, "filetype")

		if client.server_capabilities.documentSymbolProvider then
			navic.attach(client, bufnr)
		end

		-- Enable completion triggered by <c-x><c-o>
		vim.bo[ev.buf].omnifunc = "v:lua.vim.lsp.omnifunc"

		-- Buffer local mappings.
		-- See `:help vim.lsp.*` for documentation on any of the below functions
		local bufopts = { buffer = ev.buf }
		keymap.set("n", "gD", vim.lsp.buf.declaration, bufopts)
		-- keymap.set("n", "gd", vim.lsp.buf.definition, bufopts)
		keymap.set("n", "gd", builtin.lsp_definitions, bufopts)
		keymap.set("n", "K", vim.lsp.buf.hover, bufopts)
		keymap.set("n", "gi", vim.lsp.buf.implementation, bufopts)
		keymap.set("n", "<C-s>", vim.lsp.buf.signature_help, bufopts)
		keymap.set("n", "<space>wa", vim.lsp.buf.add_workspace_folder, bufopts)
		keymap.set("n", "<space>wr", vim.lsp.buf.remove_workspace_folder, bufopts)
		keymap.set("n", "<space>wl", function()
			print(vim.inspect(vim.lsp.buf.list_workspace_folders()))
		end, bufopts)
		keymap.set("n", "<space>D", vim.lsp.buf.type_definition, bufopts)
		keymap.set("n", "<space>rn", vim.lsp.buf.rename, bufopts)
		keymap.set("n", "<space>ca", vim.lsp.buf.code_action, bufopts)
		-- keymap.set("n", "gr", vim.lsp.buf.references, bufopts)
		keymap.set("n", "gr", builtin.lsp_references, bufopts)
		keymap.set("n", "<space>bf", function()
			-- vim.lsp.buf.format({ async = false })
			vim.lsp.buf.format({
				async = false,
				filter = utils.compute_filters(filetype),--[[ function(cli)
					return cli.name == "null-ls"
				end, ]]
			})
		end, bufopts)
		-- vim.keymap.set('n', 'gD', vim.lsp.buf.declaration, opts)
		-- vim.keymap.set('n', 'gd', vim.lsp.buf.definition, opts)
		-- vim.keymap.set('n', 'K', vim.lsp.buf.hover, opts)
		-- vim.keymap.set('n', 'gi', vim.lsp.buf.implementation, opts)
		-- vim.keymap.set('n', '<C-k>', vim.lsp.buf.signature_help, opts)
		-- vim.keymap.set('n', '<space>wa', vim.lsp.buf.add_workspace_folder, opts)
		-- vim.keymap.set('n', '<space>wr', vim.lsp.buf.remove_workspace_folder, opts)
		-- vim.keymap.set('n', '<space>wl', function()
		--   print(vim.inspect(vim.lsp.buf.list_workspace_folders()))
		-- end, opts)
		-- vim.keymap.set('n', '<space>D', vim.lsp.buf.type_definition, opts)
		-- vim.keymap.set('n', '<space>rn', vim.lsp.buf.rename, opts)
		-- vim.keymap.set({ 'n', 'v' }, '<space>ca', vim.lsp.buf.code_action, opts)
		-- vim.keymap.set('n', 'gr', vim.lsp.buf.references, opts)
		-- vim.keymap.set('n', '<space>f', function()
		--   vim.lsp.buf.format { async = true }
		-- end, opts)

		vim.cmd([[
            augroup lsp_document_highlight
                autocmd! * <buffer>
                " autocmd CursorHold <buffer> lua vim.lsp.buf.document_highlight()
                " autocmd CursorMoved <buffer> lua vim.lsp.buf.clear_references()
                  autocmd CursorHold  <buffer> lua vim.lsp.buf.document_highlight()
                  autocmd CursorHoldI <buffer> lua vim.lsp.buf.document_highlight()
                  autocmd CursorMoved <buffer> lua vim.lsp.buf.clear_references()
            augroup END
        ]])
	end,
})

local lsp_flags = {
	-- This is the default in Nvim 0.7+
	debounce_text_changes = 150,
}

local capabilities = cmp_nvim_lsp.default_capabilities()

local providers_path = "core.lsp.providers."
local lsps_table = {
	lua_lsp = require(providers_path .. "lua"),
	tsserver_lsp = require(providers_path .. "tsserver"),
	json_lsp = require(providers_path .. "json"),
	cssls_lsp = require(providers_path .. "cssls"),
	latex_lsp = require(providers_path .. "latex"),
	dartls_lsp = require(providers_path .. "dartls"),
	vue_lsp = require(providers_path .. "vue"),
	eslint_lsp = require(providers_path .. "eslint"),
	angular_lsp = require(providers_path .. "angular"),
	clang_lsp = require(providers_path .. "clang"),
	php_lsp = require(providers_path .. "php"),
	tailwind_lsp = require(providers_path .. "tailwind"),
	emmet_lsp = require(providers_path .. "emmet"),
	go_lsp = require(providers_path .. "go"),
}

for key, _ in next, lsps_table, nil do
	lsps_table[key].load({
		capabilities = capabilities,
		-- on_attach = on_attach,
		flags = lsp_flags,
		-- handlers = handlers,
	})
end

vim.cmd([[autocmd! ColorScheme * highlight NormalFloat guibg=NONE]])

local test = "test"
vim.diagnostic.config({
	underline = true,
	signs = true,
	-- virtual_text = false,
	severity_sort = true,
	float = {
		focusable = true,
		style = "minimal",
		border = "rounded",
		source = "always",
		-- header = "",
		-- prefix = "",
	},
})
