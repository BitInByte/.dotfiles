-- local status, minimap = pcall(require, "mini.map")
-- if not status then
-- 	return
-- end

return {

	{
		"echasnovski/mini.map",
		version = false,
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
		end,
	},
}
