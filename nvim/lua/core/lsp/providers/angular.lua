local M = {}

--- Function to load the params needed for lsp
---@param args {} on this case will be on_attach, capabilities and flags
function M.load(args)
	require("lspconfig").angularls.setup({
		unpack(args),
		-- capabilities = args.capabilities,
		-- on_attach = args.on_attach,
		-- flags = args.flags,
	})
end

return M
