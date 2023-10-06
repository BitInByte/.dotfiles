-- local status, jdtls = pcall(require, "jdtls")
-- if not status then
-- 	return
-- end

local config = {
	cmd = { vim.fn.expand("~/.local/share/nvim/mason/bin/jdtls") },
	-- cmd = { "~/Downloads/jdt-language-server-1.9.0-202203031534/bin/jdtls" },
	root_dir = vim.fs.dirname(vim.fs.find({ ".gradlew", ".git", "mvnw" }, { upward = true })[1]),
}
-- jdtls.start_or_attach(config)
require("jdtls").start_or_attach(config)
