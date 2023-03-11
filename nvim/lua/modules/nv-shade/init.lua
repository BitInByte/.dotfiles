local status, shade = pcall(require, "shade")
if not status then
	return
end

shade.setup({
	overlay_opacity = 20,
	opacity_step = 1,
	keys = {
		brightness_up = "<C-Up>",
		brightness_down = "<C-Down>",
		toggle = "<Leader>s",
	},
})
