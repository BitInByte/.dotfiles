-- local status, lspconfig = pcall(require, "lspconfig")
-- if not status then
-- 	return
-- end

local M = {}

function M.load(args)
	require("lspconfig").cssls.setup({
		capabilities = args.capabilities,
		-- on_attach = args.on_attach,
	})
end

return M
