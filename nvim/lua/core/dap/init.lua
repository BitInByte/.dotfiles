-- local status, dap = pcall(require, "dap")
-- if not status then
-- 	return
-- end
--
-- local status_dap_ui, dap_ui = pcall(require, "dapui")
-- if not status_dap_ui then
-- 	return
-- end

-- local dap = require("dap")
local dap_ui = require("dapui")
-- -- local dap = require("dap")

dap_ui.setup({
	icons = { expanded = "▾", collapsed = "▸", current_frame = "▸" },
	mappings = {
		-- Use a table to apply multiple mappings
		expand = { "<CR>", "<2-LeftMouse>" },
		open = "o",
		remove = "d",
		edit = "e",
		repl = "r",
		toggle = "t",
	},
	-- Expand lines larger than the window
	-- Requires >= 0.7
	expand_lines = vim.fn.has("nvim-0.7") == 1,
	-- Layouts define sections of the screen to place windows.
	-- The position can be "left", "right", "top" or "bottom".
	-- The size specifies the height/width depending on position. It can be an Int
	-- or a Float. Integer specifies height/width directly (i.e. 20 lines/columns) while
	-- Float value specifies percentage (i.e. 0.3 - 30% of available lines/columns)
	-- Elements are the elements shown in the layout (in order).
	-- Layouts are opened in order so that earlier layouts take priority in window sizing.
	layouts = {
		{
			elements = {
				-- Elements can be strings or table with id and size keys.
				{ id = "scopes", size = 0.25 },
				"breakpoints",
				"stacks",
				"watches",
			},
			size = 40, -- 40 columns
			position = "left",
		},
		{
			elements = {
				"repl",
				"console",
			},
			size = 0.25, -- 25% of total lines
			position = "bottom",
		},
	},
	controls = {
		-- Requires Neovim nightly (or 0.8 when released)
		enabled = true,
		-- Display controls in this element
		element = "repl",
		icons = {
			pause = "",
			play = "",
			step_into = "",
			step_over = "",
			step_out = "",
			step_back = "",
			run_last = "↻",
			terminate = "□",
		},
	},
	floating = {
		max_height = nil, -- These can be integers or a float between 0 and 1.
		max_width = nil, -- Floats will be treated as percentage of your screen.
		border = "single", -- Border style. Can be "single", "double" or "rounded"
		mappings = {
			close = { "q", "<Esc>" },
		},
	},
	windows = { indent = 1 },
	render = {
		max_type_length = nil, -- Can be integer or nil.
		max_value_lines = 100, -- Can be integer or nil.
	},
})
require("nvim-dap-virtual-text").setup()
-- require("mason-nvim-dap").setup_handlers({})

-- dap.adapters.firefox = {
-- 	type = "executable",
-- 	command = "node",
-- 	-- args = {os.getenv('HOME') .. '/path/to/vscode-firefox-debug/dist/adapter.bundle.js'},
-- }
--
-- dap.configurations.typescript = {
-- 	{
-- 		name = "Debug with Firefox",
-- 		type = "firefox",
-- 		request = "launch",
-- 		reAttach = true,
-- 		url = "http://localhost:3000",
-- 		webRoot = "${workspaceFolder}",
-- 		firefoxExecutable = "/usr/bin/firefox",
-- 	},
-- }

-- require("mason-nvim-dap").setup({
-- 	automatic_installation = true,
-- 	handlers = {
-- 		function(config)
-- 			-- all sources with no handler get passed here
--
-- 			-- Keep original functionality
-- 			require("mason-nvim-dap").default_setup(config)
-- 		end,
-- 	},
-- })

-- vim.fn.sign_define("DapBreakpoint", { text = "🔴", texthl = "", linehl = "", numhl = "" })
-- vim.fn.sign_define("DapBreakpoint", { text = "→", texthl = "Error", linehl = "", numhl = "" })
vim.fn.sign_define("DapBreakpoint", { text = "", texthl = "DiagnosticError", linehl = "", numhl = "" })
-- vim.fn.sign_define("DapStopped", { text = "🟡", texthl = "", linehl = "", numhl = "" })
-- vim.fn.sign_define("DapStopped", { text = "→", texthl = "Success", linehl = "", numhl = "" })
vim.fn.sign_define("DapStopped", { text = "", texthl = "DiagnosticWarn", linehl = "", numhl = "" })
vim.fn.sign_define("DapBreakpointRejected", { text = "", texthl = "DagnosticInfo", linehl = "", numhl = "" })
-- vim.fn.sign_define("DapBreakpointRejected", { text = "🔵", texthl = "", linehl = "", numhl = "" })
-- vim.fn.sign_define("DapBreakpoint", { text = "→", texthl = "Error", linehl = "", numhl = "" })
-- vim.fn.sign_define("DapStopped", { text = "→", texthl = "Success", linehl = "", numhl = "" })

-- Debugger
vim.api.nvim_set_keymap(
	"n",
	"<leader>db",
	"<cmd>lua require'dap'.toggle_breakpoint()<CR>",
	{ silent = true, desc = "Dap toggle breakpoint" }
)
vim.api.nvim_set_keymap(
	"n",
	"<leader>ds",
	"<cmd>lua require'dap'.continue()<CR>",
	{ silent = true, desc = "Dap continue" }
)
vim.api.nvim_set_keymap(
	"n",
	"<leader>dd",
	"<cmd>lua require('dap.ui.widgets').hover()<CR>",
	{ silent = true, desc = "Dap UI hover" }
)
vim.api.nvim_set_keymap(
	"n",
	"<leader>do",
	"<cmd>lua require'dap'.step_over()<CR>",
	{ silent = true, desc = "Dap step over" }
)
vim.api.nvim_set_keymap(
	"n",
	"<leader>di",
	"<cmd>lua require'dap'.step_into()<CR>",
	{ silent = true, desc = "Dap step into" }
)
vim.api.nvim_set_keymap(
	"n",
	"<leader>dw",
	"<cmd>lua require'dapui'.toggle()<CR>",
	{ silent = true, desc = "Dap UI toggle" }
)
