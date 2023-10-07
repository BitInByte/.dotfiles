return {
	-- {
	-- 	"windwp/nvim-ts-autotag",
	-- 	event = "InsertEnter",
	-- },
	-- "windwp/nvim-ts-autotag",
	-- {
	"windwp/nvim-autopairs",
	-- dependencies = {
	-- 	"windwp/nvim-ts-autotag",
	-- },
	event = "InsertEnter",
	opts = {}, -- this is equalent to setup({}) function
	-- "windwp/nvim-autopairs",
	-- config = function()
	-- 	require("nvim-autopairs").setup()
	-- 	-- If you want insert `(` after select function or method item
	-- 	require("cmp").event:on("confirm_done", require("nvim-autopairs.completion.cmp").on_confirm_done())
	-- end,
	-- },
}
