return {
	-- {
	"SmiteshP/nvim-navic",
	dependencies = { "neovim/nvim-lspconfig" },
	-- event = { "BufReadPre", "BufNewFile" },
	lazy = true,
	config = function()
		local navic = require("nvim-navic")
		navic.setup({
			highlight = true,
			lsp = {
				auto_attach = true,
				preference = nil,
			},
			icons = {
				File = " ",
				Module = " ",
				Namespace = " ",
				Package = " ",
				Class = " ",
				Method = " ",
				Property = " ",
				Field = " ",
				Constructor = " ",
				Enum = " ",
				Interface = " ",
				Function = " ",
				Variable = " ",
				Constant = " ",
				String = " ",
				Number = " ",
				Boolean = " ",
				Array = " ",
				Object = " ",
				Key = " ",
				Null = " ",
				EnumMember = " ",
				Struct = " ",
				Event = " ",
				Operator = " ",
				TypeParameter = " ",
			},
		})
		vim.o.winbar = "%{%v:lua.require'nvim-navic'.get_location()%}"
	end,
	--
	-- },
}
