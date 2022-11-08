local status, autopairs = pcall(require, "nvim-autopairs")
if not status then
	return
end

local status_a_cmp, autopairs_cmp = pcall(require, "nvim-autopairs.completion.cmp")
if not status_a_cmp then
	return
end

local status_cmp, cmp = pcall(require, "cmp")
if not status_cmp then
	return
end

autopairs.setup()
-- If you want insert `(` after select function or method item
cmp.event:on("confirm_done", autopairs_cmp.on_confirm_done())
