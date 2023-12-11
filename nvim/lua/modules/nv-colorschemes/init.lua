return {
	-- { "bluz71/vim-nightfly-colors", lazy = true },
	{ "bluz71/vim-nightfly-colors", name = "nightfly", enabled = false, lazy = true, priority = 1000 },
	{
		"catppuccin/nvim",
		name = "catppuccin",
		-- Lazy will only call this colorscheme when we set up this
		-- theme as colorscheme on vim
		lazy = true,
		opts = {
			integrations = {
				mason = true,
				noice = true,
				navic = {
					enabled = true,
					-- custom_bg = "NONE", -- "lualine" will set background to mantle
				},
				notify = true,
				-- treesitter_context = true,
				lsp_trouble = true,
				which_key = true,
				fidget = true,
				hop = true,
			},
		},
	},
	{ "Mofiqul/dracula.nvim", enabled = false, lazy = true },
}
