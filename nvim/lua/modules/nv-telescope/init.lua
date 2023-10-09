return {
	-- {
	"nvim-telescope/telescope.nvim",
	dependencies = { "nvim-lua/plenary.nvim", "nvim-telescope/telescope-ui-select.nvim" },
	config = function()
		local telescope = require("telescope")
		local builtin = require("telescope.builtin")
		-- This is your opts table
		-- require("telescope").setup({
		telescope.setup({
			extensions = {
				["ui-select"] = {
					require("telescope.themes").get_dropdown({
						-- even more opts
					}),

					-- pseudo code / specification for writing custom displays, like the one
					-- for "codeactions"
					-- specific_opts = {
					--   [kind] = {
					--     make_indexed = function(items) -> indexed_items, width,
					--     make_displayer = function(widths) -> displayer
					--     make_display = function(displayer) -> function(e)
					--     make_ordinal = function(e) -> string
					--   },
					--   -- for example to disable the custom builtin "codeactions" display
					--      do the following
					--   codeactions = false,
					-- }
				},
			},
		})
		-- To get ui-select loaded and working with telescope, you need to call
		-- load_extension, somewhere after setup function:
		-- require("telescope").load_extension("ui-select")
		telescope.load_extension("ui-select")
		-- require("telescope").load_extension("harpoon")
		telescope.load_extension("harpoon")

		vim.keymap.set("n", "<leader>ff", builtin.find_files, { desc = "Telescope find files" })
		vim.keymap.set("n", "<leader>fg", builtin.live_grep, { desc = "Telescope live grep" })
		vim.keymap.set("n", "<leader>fb", builtin.buffers, { desc = "Telescope buffers" })
		vim.keymap.set("n", "<leader>ft", builtin.help_tags, { desc = "Telescope help tags" })
		vim.keymap.set("n", "<leader>fc", builtin.command_history, { desc = "Telescope command history" })
		vim.keymap.set("n", "<leader>fd", builtin.diagnostics, { desc = "Telescope diagnostics" })
		vim.keymap.set("n", "<leader>fm", builtin.marks, { desc = "Telescope marks" })
		vim.keymap.set("n", "<leader>fs", builtin.lsp_document_symbols, { desc = "Telescope lsp document symbols" })
		vim.keymap.set("n", '<leader>f"', builtin.registers, { desc = "Telescope lsp registers" })
		vim.keymap.set("n", "<leader>fh", "<cmd>Telescope harpoon marks<cr>", { desc = "Telescope harpoon marks" })
		-- Set mapping for searching a session.
		-- ⚠️ This will only work if Telescope.nvim is  installed
		vim.keymap.set(
			"n",
			"<leader>fa",
			require("auto-session.session-lens").search_session,
			{ desc = "Telescope harpoon marks", noremap = true }
		)
	end,
	-- version = "0.1.0",
	-- or                            , branch = '0.1.x',
	-- },
}
