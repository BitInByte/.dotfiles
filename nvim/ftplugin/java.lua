local status, jdtls = pcall(require, "jdtls")
if not status then
	return
end

local config = {
	cmd = { ".local/share/nvim/mason/bin/jdtls" },
	root_dir = vim.fs.dirname(vim.fs.find({ ".gradlew", ".git", "mvnw" }, { upward = true })[1]),
}
jdtls.start_or_attach(config)
