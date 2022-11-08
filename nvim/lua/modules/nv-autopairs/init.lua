local status, autopairs = pcall(require, "nvim-autopairs.completion.cmp")
if not status then
	return
end

local status_cmp, cmp = pcall(require, "cmp")
if not status_cmp then
	return
end

-- If you want insert `(` after select function or method item
cmp.event:on("confirm_done", autopairs.on_confirm_done())
