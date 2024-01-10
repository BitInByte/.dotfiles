return {
	{
		"echasnovski/mini.indentscope",
		version = false,
		event = { "BufReadPre", "BufNewFile" },
		config = true,
		-- config = function()
		-- 	require("mini.indentscope").setup()
		-- end,
	},
	{
		"echasnovski/mini.map",
		version = false,
		lazy = false, -- Trigger config function to start mini map on vim start
		keys = {
			{
				"<leader>mc",
				function()
					require("mini.map").close()
				end,
				desc = "MiniMap close",
			},
			{
				"<leader>mf",
				function()
					require("mini.map").toggle_focus()
				end,
				desc = "MiniMap focus",
			},
			{
				"<leader>mo",
				function()
					require("mini.map").open()
				end,
				desc = "MiniMap open",
			},
			{
				"<leader>mt",
				function()
					require("mini.map").toggle()
				end,
				desc = "MiniMap toggle",
			},
		},
		config = function()
			local minimap = require("mini.map")
			local autocmd = vim.api.nvim_create_autocmd
			minimap.setup(
				-- No need to copy this inside `setup()`. Will be used automatically.
				{
					-- Highlight integrations (none by default)
					integrations = {
						minimap.gen_integration.diagnostic(),
						minimap.gen_integration.builtin_search(),
						minimap.gen_integration.gitsigns(),
					},
					-- Symbols used to display data
					symbols = {
						-- Encode symbols. See `:h MiniMap.config` for specification and
						-- `:h MiniMap.gen_encode_symbols` for pre-built ones.
						-- Default: solid blocks with 3x2 resolution.
						encode = nil,
						-- Scrollbar parts for view and line. Use empty string to disable any.
						scroll_line = "█",
						scroll_view = "┃",
					},
					-- Window options
					window = {
						-- Whether window is focusable in normal way (with `wincmd` or mouse)
						focusable = false,
						-- Side to stick ('left' or 'right')
						side = "right",
						-- Whether to show count of multiple integration highlights
						show_integration_count = true,
						-- Total width
						width = 8,
						-- Value of 'winblend' option
						winblend = 25,
					},
				}
			)

			-- Automatically open minimap when vim starts
			autocmd("VimEnter", {
				pattern = "*",
				callback = function()
					vim.schedule(function()
						minimap.open()
					end)
				end,
			})
			local MiniMap = require("mini.map")
			-- vim.keymap.set("n", "<leader>mc", MiniMap.close, { desc = "MiniMap close" })
			-- vim.keymap.set("n", "<leader>mf", MiniMap.toggle_focus, { desc = "MiniMap focus" })
			-- vim.keymap.set("n", "<leader>mo", MiniMap.open, { desc = "MiniMap open" })
			-- vim.keymap.set("n", "<leader>mr", MiniMap.refresh)
			-- vim.keymap.set("n", "<leader>ms", MiniMap.toggle_side)
			-- vim.keymap.set("n", "<leader>mt", MiniMap.toggle, { desc = "MiniMap toggle" })
		end,
	},
	{
		"echasnovski/mini.cursorword",
		version = "*",
		event = { "BufReadPre", "BufNewFile" },
		config = true,
		-- config = function()
		-- 	require("mini.cursorword").setup()
		-- end,
	},
	-- Deprecating mini.files since having neotree and oil.nvim as
	-- file explorers and file managers
	-- {
	-- 	"echasnovski/mini.files",
	-- 	version = "*",
	-- 	event = { "BufReadPre", "BufNewFile" },
	-- 	config = true,
	-- 	-- config = function()
	-- 	-- 	require("mini.files").setup()
	-- 	-- end,
	-- },
}
