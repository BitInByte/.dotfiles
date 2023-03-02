local status, lspconfig = pcall(require, "lspconfig")
if not status then
	return
end

local M = {}

function M.load(args)
	lspconfig.sumneko_lua.setup({
		settings = {
			Lua = {
				runtime = {
					-- Tell the language server which version of Lua you're using (most likely LuaJIT in the case of Neovim)
					version = "LuaJIT",
				},
				diagnostics = {
					-- Get the language server to recognize the `vim` global
					globals = { "vim" },
				},
				workspace = {
					-- Make the server aware of Neovim runtime files
					library = vim.api.nvim_get_runtime_file("", true),
				},
				-- Do not send telemetry data containing a randomized but unique identifier
				telemetry = {
					enable = false,
				},
			},
		},
		on_attach = args.on_attach,
		flags = args.flags,
		capabilities = args.capabilities,
	})
end

return M
