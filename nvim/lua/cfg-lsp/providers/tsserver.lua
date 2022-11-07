function load(args)
	-- require("lspconfig").tsserver.setup({
	-- 	includeCompletionsForImportStatements = true,
	-- 	includeCompletionsForModuleExports = true,
	-- 	capabilities = args.capabilities,
	-- 	on_attach = args.on_attach,
	-- 	flags = args.flags,
	-- })
	require("typescript").setup({
		server = {
			-- pass options to lspconfig's setup method
			on_attach = args.on_attach,
			capabilities = args.capabilities,
			flags = args.flags,
		},
	})
end

return {
	load = load,
}
