return {
	-- {
	"akinsho/toggleterm.nvim",
	event = { "BufReadPre", "BufNewFile" },
	version = "*",
	keys = {
		{
			"<leader>tv",
			"<cmd>ToggleTerm<CR>",
			silent = true,
			desc = "ToggleTerm",
		},
		{
			"<leader>tf",
			"<cmd>ToggleTerm direction=float<CR>",
			silent = true,
			desc = "ToggleTerm float",
		},
	},
	-- opts = {},
	-- config = true,
	config = function()
		local toggleterm = require("toggleterm")
		toggleterm.setup()
		function _G.set_terminal_keymaps()
			local opts = { buffer = 0 }
			vim.keymap.set("t", "<esc>", [[<C-\><C-n>]], opts)
			vim.keymap.set("t", "jk", [[<C-\><C-n>]], opts)
			vim.keymap.set("t", "<C-h>", [[<Cmd>wincmd h<CR>]], opts)
			vim.keymap.set("t", "<C-j>", [[<Cmd>wincmd j<CR>]], opts)
			vim.keymap.set("t", "<C-k>", [[<Cmd>wincmd k<CR>]], opts)
			vim.keymap.set("t", "<C-l>", [[<Cmd>wincmd l<CR>]], opts)
		end
	end,
	-- },
}
