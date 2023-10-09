return {
	-- {
	"lewis6991/gitsigns.nvim",
	event = { "BufReadPre", "BufNewFile" },
	-- version = 'release' -- To use the latest release (do not use this if you build Neovim nightly or dev builds!)
	config = function()
		local gitsigns = require("gitsigns")
		gitsigns.setup({
			current_line_blame = true, -- Toggle with `:Gitsigns toggle_current_line_blame`
			signcolumn = true,
			on_attach = function(bufnr)
				local gs = package.loaded.gitsigns

				local function map(mode, l, r, opts)
					opts = opts or {}
					opts.buffer = bufnr
					vim.keymap.set(mode, l, r, opts)
				end

				-- Navigation
				map("n", "]c", function()
					if vim.wo.diff then
						return "]c"
					end
					vim.schedule(function()
						gs.next_hunk()
					end)
					return "<Ignore>"
				end, { expr = true })

				map("n", "[c", function()
					if vim.wo.diff then
						return "[c"
					end
					vim.schedule(function()
						gs.prev_hunk()
					end)
					return "<Ignore>"
				end, { expr = true })

				-- Actions
				-- map("n", "<leader>hs", gs.stage_hunk)
				-- map("n", "<leader>hr", gs.reset_hunk)
				-- map("v", "<leader>hs", function()
				-- 	gs.stage_hunk({ vim.fn.line("."), vim.fn.line("v") })
				-- end)
				-- map("v", "<leader>gr", function()
				-- 	gs.reset_hunk({ vim.fn.line("."), vim.fn.line("v") })
				-- end)
				-- map("n", "<leader>gS", gs.stage_buffer)
				-- map("n", "<leader>gu", gs.undo_stage_hunk)
				-- map("n", "<leader>gR", gs.reset_buffer)
				map("n", "<leader>gp", gs.preview_hunk)
				map("n", "<leader>gb", function()
					gs.blame_line({ full = true })
				end, { desc = "Gitsigns show blame line" })
				map("n", "<leader>gt", gs.toggle_current_line_blame, { desc = "Gitsigns toggle current line blame" })
				map("n", "<leader>gd", gs.diffthis)
				-- map("n", "<leader>gD", function()
				-- 	gs.diffthis("~")
				-- end)
				-- map("n", "<leader>td", gs.toggle_deleted)
				--
				-- -- Text object
				-- map({ "o", "x" }, "ih", ":<C-U>Gitsigns select_hunk<CR>")
			end,
		})
		-- gitconflict.setup()
	end,
	-- },
}
