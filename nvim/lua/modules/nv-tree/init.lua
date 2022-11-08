-- examples for your init.lua

-- disable netrw at the very start of your init.lua (strongly advised)
vim.g.loaded_netrw = 1
vim.g.loaded_netrwPlugin = 1

-- set termguicolors to enable highlight groups
vim.opt.termguicolors = true

-- empty setup using defaults
local status, nvim_tree = pcall(require, "nvim-tree")
if not status then
	return
end

nvim_tree.setup({
	actions = {
		open_file = {
			quit_on_open = true,
		},
	},
})
