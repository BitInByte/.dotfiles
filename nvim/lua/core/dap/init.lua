local dap = require("dap")
local dap_ui = require("dapui")

require("dap-vscode-js").setup({
	debugger_path = vim.fn.stdpath("data") .. "/lazy/vscode-js-debug",
	-- node_path = "node", -- Path of node executable. Defaults to $NODE_PATH, and then "node"
	-- debugger_path = "(runtimedir)/site/pack/packer/opt/vscode-js-debug", -- Path to vscode-js-debug installation.
	-- debugger_cmd = { "js-debug-adapter" }, -- Command to use to launch the debug server. Takes precedence over `node_path` and `debugger_path`.
	-- adapters = { "pwa-node", "pwa-chrome", "pwa-msedge", "node-terminal", "pwa-extensionHost" }, -- which adapters to register in nvim-dap
	adapters = { "pwa-chrome" }, -- which adapters to register in nvim-dap
	-- log_file_path = "(stdpath cache)/dap_vscode_js.log" -- Path for file logging
	-- log_file_level = false -- Logging level for output to file. Set to false to disable file logging.
	-- log_console_level = vim.log.levels.ERROR -- Logging level for output to console. Set to false to disable console output.
})

for _, language in ipairs({ "typescript", "javascript", "typescriptreact", "javascriptreact", "svelte", "vue" }) do
	-- require("dap").configurations[language] = {
	-- 	..., -- see below
	-- }
	dap.configurations[language] = {
		{
			type = "pwa-chrome",
			name = "Launch chrome on port 3000",
			request = "launch",
			url = "http://localhost:3000",
			-- sourceMaps = true,
			-- protocol = "inspector",
			-- port = 9222,
			-- webRoot = "${workspaceFolder}/src",
			-- skip files from vite's hmr
			-- skipFiles = { "**/node_modules/**/*", "**/@vite/*", "**/src/client/*", "**/src/*" },
		},
		{
			type = "pwa-chrome",
			name = "Launch chrome with no url (manually insert url)",
			request = "launch",
			-- url = "http://localhost:3000",
			-- sourceMaps = true,
			-- protocol = "inspector",
			-- port = 9222,
			-- webRoot = "${workspaceFolder}/src",
			-- skip files from vite's hmr
			-- skipFiles = { "**/node_modules/**/*", "**/@vite/*", "**/src/client/*", "**/src/*" },
		},
		-- attach to a node process that has been started with
		-- `--inspect` for longrunning tasks or `--inspect-brk` for short tasks
		-- npm script -> `node --inspect-brk ./node_modules/.bin/vite dev`
		-- {
		-- 	-- use nvim-dap-vscode-js's pwa-node debug adapter
		-- 	type = "pwa-node",
		-- 	-- attach to an already running node process with --inspect flag
		-- 	-- default port: 9222
		-- 	request = "attach",
		-- 	-- allows us to pick the process using a picker
		-- 	processId = require("dap.utils").pick_process,
		-- 	-- name of the debug action you have to select for this config
		-- 	name = "Attach debugger to existing `node --inspect` process",
		-- 	-- for compiled languages like TypeScript or Svelte.js
		-- 	sourceMaps = true,
		-- 	-- resolve source maps in nested locations while ignoring node_modules
		-- 	resolveSourceMapLocations = {
		-- 		"${workspaceFolder}/**",
		-- 		"!**/node_modules/**",
		-- 	},
		-- 	-- path to src in vite based projects (and most other projects as well)
		-- 	cwd = "${workspaceFolder}/src",
		-- 	-- we don't want to debug code inside node_modules, so skip it!
		-- 	skipFiles = { "${workspaceFolder}/node_modules/**/*.js" },
		-- },
		-- {
		-- 	type = "pwa-chrome",
		-- 	name = "Launch Chrome to debug client",
		-- 	request = "launch",
		-- 	url = "http://localhost:3000",
		-- 	sourceMaps = true,
		-- 	protocol = "inspector",
		-- 	port = 9222,
		-- 	webRoot = "${workspaceFolder}/src",
		-- 	-- skip files from vite's hmr
		-- 	skipFiles = { "**/node_modules/**/*", "**/@vite/*", "**/src/client/*", "**/src/*" },
		-- },
		-- -- only if language is javascript, offer this debug action
		-- language == "javascript"
		-- 		and {
		-- 			-- use nvim-dap-vscode-js's pwa-node debug adapter
		-- 			type = "pwa-node",
		-- 			-- launch a new process to attach the debugger to
		-- 			request = "launch",
		-- 			-- name of the debug action you have to select for this config
		-- 			name = "Launch file in new node process",
		-- 			-- launch current file
		-- 			program = "${file}",
		-- 			cwd = "${workspaceFolder}",
		-- 		}
		-- 	or nil,
	}
end

require("mason-nvim-dap").setup({
	automatic_installation = true,
	ensure_installed = { "firefox", "chrome" },
	-- automatic_setup = true,
	handlers = {
		function(config)
			-- all sources with no handler get passed here

			-- Keep original functionality
			require("mason-nvim-dap").default_setup(config)
		end,
		-- firefox = function(config)
		-- 	require("mason-nvim-dap").default_setup(config)
		-- end,
	},
})

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

dap.listeners.after.event_initialized["dapui_config"] = function()
	dap_ui.open()
end
dap.listeners.before.event_terminated["dapui_config"] = function()
	dap_ui.close()
end
dap.listeners.before.event_exited["dapui_config"] = function()
	dap_ui.close()
end

-- vim.fn.sign_define("DapBreakpoint", { text = "🔴", texthl = "", linehl = "", numhl = "" })
-- vim.fn.sign_define("DapBreakpoint", { text = "→", texthl = "Error", linehl = "", numhl = "" })
vim.fn.sign_define(
	"DapBreakpoint",
	{ text = "", texthl = "DiagnosticError", linehl = "DiagnosticError", numhl = "" }
)
-- vim.fn.sign_define("DapStopped", { text = "🟡", texthl = "", linehl = "", numhl = "" })
-- vim.fn.sign_define("DapStopped", { text = "→", texthl = "Success", linehl = "", numhl = "" })
vim.fn.sign_define("DapStopped", { text = "", texthl = "DiagnosticWarn", linehl = "DiagnosticWarn", numhl = "" })
vim.fn.sign_define(
	"DapBreakpointRejected",
	{ text = "", texthl = "DiagnosticInfo", linehl = "DiagnosticInfo", numhl = "" }
)
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
	"<cmd>lua require'dap'.step_out()<CR>",
	{ silent = true, desc = "Dap step out" }
)
vim.api.nvim_set_keymap(
	"n",
	"<leader>dh",
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
	"<leader>dt",
	"<cmd>lua require'dap'.terminate()<CR>",
	{ silent = true, desc = "Dap terminate" }
)
vim.api.nvim_set_keymap(
	"n",
	"<leader>dw",
	"<cmd>lua require'dapui'.toggle()<CR>",
	{ silent = true, desc = "Dap UI toggle" }
)
