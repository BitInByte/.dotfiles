return {
	"mbbill/undotree",
	event = { "BufReadPre", "BufNewFile" },
	keys = {
		{ "<leader>ut", "<cmd>UndotreeToggle<cr>", desc = "UndoTree toggle" },
	},
}
