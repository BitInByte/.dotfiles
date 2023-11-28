return {
	"rmagatti/auto-session",
	config = function()
		local auto_session = require("auto-session")
		auto_session.setup({
			log_level = "error",
			-- auto_session_suppress_dirs = { "~/", "~/Projects", "~/Downloads", "/" },
			auto_restore_enabled = false,
			auto_session_suppress_dirs = { "~/", "~/Dev/", "~/Downloads", "~/Documents", "~/Desktop/" },
			-- ⚠️ This will only work if Telescope.nvim is installed
			-- The following are already the default values, no need to provide them if these are already the settings you want.
			session_lens = {
				-- If load_on_setup is set to false, one needs to eventually call `require("auto-session").setup_session_lens()` if they want to use session-lens.
				buftypes_to_ignore = {}, -- list of buffer types what should not be deleted from current session
				load_on_setup = true,
				theme_conf = { border = true },
				previewer = false,
			},
		})

		-- local keymap = vim.keymap

		-- keymap.set("n", "<leader>sr", "<cmd>SessionRestore<CR>", { desc = "Restore session for cwd" }) -- restore last workspace session for current directory
		-- keymap.set("n", "<leader>ss", "<cmd>SessionSave<CR>", { desc = "Save session for auto session root dir" }) -- save workspace session for current working directory
	end,
	keys = {
		{ "<leader>sr", "<cmd>SessionRestore<CR>", desc = "Restore session for cwd" },
		{ "<leader>ss", "<cmd>SessionSave<CR>", desc = "Save session for auto session root dir" },
	},
}
