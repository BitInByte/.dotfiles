local status, lspconfig = pcall(require, "lspconfig")
if not status then
	return
end

local M = {}

function M.load(args) end

return M
