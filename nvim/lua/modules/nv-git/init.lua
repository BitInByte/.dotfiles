local status, gitsigns = pcall(require, "gitsigns")
if not status then
	return
end

local status_conflict, gitconflict = pcall(require, "git-conflict")
if not status_conflict then
	return
end

gitsigns.setup()
gitconflict.setup()
