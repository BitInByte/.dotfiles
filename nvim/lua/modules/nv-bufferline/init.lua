local status, bufferline = pcall(require, "bufferline")
if not status then
	return
end

vim.opt.termguicolors = true
bufferline.setup({
	options = {
		close_icon = "",
		diagnostics = "nvim_lsp",
		diagnostics_indicator = function(count, level, diagnostics_dict, context)
			local icon = level:match("error") and " " or " "
			return " " .. icon .. count
		end,

		show_close_icon = false,
		show_buffer_close_icons = false,
	},
})
