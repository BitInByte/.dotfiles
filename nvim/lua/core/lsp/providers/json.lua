-- local status, lspconfig = pcall(require, "lspconfig")
-- if not status then
-- 	return
-- end

local M = {}

function M.load(args)
	require("lspconfig").jsonls.setup({
		capabilities = args.capabilities,
	})
end

return M
