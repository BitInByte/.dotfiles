return {
	"phaazon/hop.nvim",
	event = { "BufReadPre", "BufNewFile" },
	-- branch = 'v2', -- optional but strongly recommended
	config = function()
		local hop = require("hop")
		-- you can configure Hop the way you like here; see :h hop-config
		hop.setup({ keys = "etovxqpdygfblzhckisuran" })
		-- Hop (Motions)
		-- place this in one of your configuration file(s)
		local directions = require("hop.hint").HintDirection
		vim.keymap.set("", "<leader>hhf", function()
			-- hop.hint_char1({ direction = directions.AFTER_CURSOR, current_line_only = false })
			hop.hint_char1()
		end, { remap = true, desc = "Hop hint char" })
		-- vim.keymap.set("", "<leader>hF", function()
		-- 	-- hop.hint_char1({ direction = directions.BEFORE_CURSOR, current_line_only = true })
		-- 	hop.hint_char1()
		-- end, { remap = true })
		vim.keymap.set("", "<leader>hht", function()
			-- hop.hint_char1({ direction = directions.AFTER_CURSOR, current_line_only = true, hint_offset = -1 })
			hop.hint_char1({ hint_offset = -1 })
		end, { remap = true, desc = "Hop hint char with offset" })
		-- vim.keymap.set("", "<leader>hT", function()
		-- 	-- hop.hint_char1({ direction = directions.BEFORE_CURSOR, current_line_only = true, hint_offset = 1 })
		-- 	hop.hint_char1({ hint_offset = 1 })
		-- end, { remap = true })
		vim.keymap.set("", "<leader>hhs", function()
			hop.hint_anywhere()
		end, { remap = true, desc = "Hop hint anywhere" })
	end,
}
