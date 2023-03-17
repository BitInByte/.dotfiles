-- empty setup using defaults
return {

	{
		"nvim-tree/nvim-tree.lua",
		dependencies = { "nvim-tree/nvim-web-devicons" },
		version = "nightly",
		config = function()
			-- disable netrw at the very start of your init.lua (strongly advised)
			vim.g.loaded_netrw = 1
			vim.g.loaded_netrwPlugin = 1

			-- set termguicolors to enable highlight groups
			vim.opt.termguicolors = true

			require("nvim-tree").setup({
				actions = {
					open_file = {
						quit_on_open = true,
					},
				},
			})
		end,
	},
}
