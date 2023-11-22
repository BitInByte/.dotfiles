return {
	{
		"tpope/vim-fugitive",
		event = { "BufReadPre", "BufNewFile" },
	},
	{ "tpope/vim-surround", event = { "BufReadPre", "BufNewFile" } },
	-- Fix indentation (tabs) based on buffer document or project in
	-- case is new file
	{ "tpope/vim-sleuth", event = { "BufReadPre", "BufNewFile" } },
}
