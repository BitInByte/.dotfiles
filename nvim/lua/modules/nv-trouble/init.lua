return {
	-- {
	"folke/trouble.nvim",
	event = { "BufReadPre", "BufNewFile" },
	dependencies = { "nvim-tree/nvim-web-devicons" },
	keys = {
		{
			"<leader>xx",
			"<cmd>TroubleToggle<cr>",
			silent = true,
			noremap = true,
			desc = "Trouble toggle",
		},
		{
			"<leader>xw",
			"<cmd>TroubleToggle workspace_diagnostics<cr>",
			silent = true,
			noremap = true,
			desc = "Trouble workspace diagnostic",
		},
		{
			"<leader>xd",
			"<cmd>TroubleToggle document_diagnostics<cr>",
			silent = true,
			noremap = true,
			desc = "Trouble document diagnostics",
		},
		{
			"<leader>xl",
			"<cmd>TroubleToggle loclist<cr>",
			silent = true,
			noremap = true,
			desc = "Trouble loclist",
		},
		{
			"<leader>xq",
			"<cmd>TroubleToggle quickfix<cr>",
			silent = true,
			noremap = true,
			desc = "Trouble quickfix",
		},
		{
			"gR",
			"<cmd>TroubleToggle lsp_references<cr>",
			silent = true,
			noremap = true,
			desc = "Trouble lsp references",
		},
	},
	-- config = true,
	config = function()
		require("trouble").setup({
			-- your configuration comes here
			-- or leave it empty to use the default settings
			-- refer to the configuration section below
		})
		vim.cmd("autocmd! TermOpen term://* lua set_terminal_keymaps()")
	end,
	-- },
}
