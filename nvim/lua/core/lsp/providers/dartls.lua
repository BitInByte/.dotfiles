local status, flutter_tools = pcall(require, "flutter-tools")
if not status then
	return
end

local M = {}

function M.load(args)
	-- lspconfig.dartls.setup({
	-- 	on_attach = args.on_attach,
	-- 	capabilities = args.capabilities,
	-- 	flags = args.flags,
	-- })
	flutter_tools.setup({}) -- use defaults
end

return M
