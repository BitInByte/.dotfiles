local status, colorized = pcall(require, "colorized")
if not status then
	return
end

colorized.setup()
