-- local status, autopairs = pcall(require, "nvim-autopairs")
-- if not status then
-- 	return
-- end
--
-- local status_a_cmp, autopairs_cmp = pcall(require, "nvim-autopairs.completion.cmp")
-- if not status_a_cmp then
-- 	return
-- end
--
-- local status_cmp, cmp = pcall(require, "cmp")
-- if not status_cmp then
-- 	return
-- end

return {
	"windwp/nvim-ts-autotag",
	{
		"windwp/nvim-autopairs",
		config = function()
			require("nvim-autopairs").setup()
			-- If you want insert `(` after select function or method item
			require("cmp").event:on("confirm_done", require("nvim-autopairs.completion.cmp").on_confirm_done())
		end,
	},
}
