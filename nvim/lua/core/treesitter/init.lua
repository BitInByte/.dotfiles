-- local status, treesitter = pcall(require, "nvim-treesitter.configs")
-- if not status then
-- 	return
-- end

require("nvim-treesitter.configs").setup({
	-- A list of parser names, or "all"
	ensure_installed = { "lua", "vim", "sql" },
	-- Install parsers synchronously (only applied to `ensure_installed`)
	sync_install = false,
	-- Automatically install missing parsers when entering buffer
	-- Recommendation: set to false if you don't have `tree-sitter` CLI installed locally
	auto_install = true,
	-- List of parsers to ignore installing (for "all")
	-- ignore_install = { "javascript" },

	---- If you need to change the installation directory of the parsers (see -> Advanced Setup)
	-- parser_install_dir = "/some/path/to/store/parsers", -- Remember to run vim.opt.runtimepath:append("/some/path/to/store/parsers")!

	highlight = {
		-- `false` will disable the whole extension
		enable = true,
		-- NOTE: these are the names of the parsers and not the filetype. (for example if you want to
		-- disable highlighting for the `tex` filetype, you need to include `latex` in this list as this is
		-- the name of the parser)
		-- list of language that will be disabled
		--disable = { "c", "rust" },
		-- Or use a function for more flexibility, e.g. to disable slow treesitter highlight for large files
		--disable = function(lang, buf)
		--    local max_filesize = 100 * 1024 -- 100 KB
		--    local ok, stats = pcall(vim.loop.fs_stat, vim.api.nvim_buf_get_name(buf))
		--    if ok and stats and stats.size > max_filesize then
		--        return true
		--    end
		--end,

		-- Setting this to true will run `:h syntax` and tree-sitter at the same time.
		-- Set this to `true` if you depend on 'syntax' being enabled (like for indentation).
		-- Using this option may slow down your editor, and you may see some duplicate highlights.
		-- Instead of true it can also be a list of languages
		additional_vim_regex_highlighting = false,
	},
	autotag = {
		enable = true,
		enable_close_on_slash = false,
	},
	tree_docs = { enable = true, spec_config = { jsdoc = {} } },
	-- context_commentstring = {
	-- 	enable = true,
	-- 	enable_autocmd = false,
	-- },
	incremental_selection = {
		enable = true,
		keymaps = {
			init_selection = "gnn", -- set to `false` to disable one of the mappings
			node_incremental = "grn",
			scope_incremental = "grc",
			node_decremental = "grm",
		},
	},
	indent = {
		enable = true,
	},
	textobjects = {
		select = {
			enable = true,

			-- Automatically jump forward to textobj, similar to targets.vim
			lookahead = true,

			keymaps = {
				-- You can use the capture groups defined in textobjects.scm
				["a="] = { query = "@assignment.outer", desc = "Select outer part of an assignment" },
				["i="] = { query = "@assignment.inner", desc = "Select inner part of an assignment" },
				["l="] = { query = "@assignment.lhs", desc = "Select left hand side of an assignment" },
				["r="] = { query = "@assignment.rhs", desc = "Select right hand side of an assignment" },

				-- works for javascript/typescript files (custom capture I created in after/queries/ecma/textobjects.scm)
				["a:"] = { query = "@property.outer", desc = "Select outer part of an object property" },
				["i:"] = { query = "@property.inner", desc = "Select inner part of an object property" },
				["l:"] = { query = "@property.lhs", desc = "Select left part of an object property" },
				["r:"] = { query = "@property.rhs", desc = "Select right part of an object property" },

				["aa"] = { query = "@parameter.outer", desc = "Select outer part of a parameter/argument" },
				["ia"] = { query = "@parameter.inner", desc = "Select inner part of a parameter/argument" },

				["ai"] = { query = "@conditional.outer", desc = "Select outer part of a conditional" },
				["ii"] = { query = "@conditional.inner", desc = "Select inner part of a conditional" },

				["al"] = { query = "@loop.outer", desc = "Select outer part of a loop" },
				["il"] = { query = "@loop.inner", desc = "Select inner part of a loop" },

				["af"] = { query = "@call.outer", desc = "Select outer part of a function call" },
				["if"] = { query = "@call.inner", desc = "Select inner part of a function call" },

				["am"] = { query = "@function.outer", desc = "Select outer part of a method/function definition" },
				["im"] = { query = "@function.inner", desc = "Select inner part of a method/function definition" },

				["ac"] = { query = "@class.outer", desc = "Select outer part of a class" },
				["ic"] = { query = "@class.inner", desc = "Select inner part of a class" },
			},
		},
		swap = {
			enable = true,
			swap_next = {
				["<leader>na"] = "@parameter.inner", -- swap parameters/argument with next
				["<leader>n:"] = "@property.outer", -- swap object property with next
				["<leader>nm"] = "@function.outer", -- swap function with next
			},
			swap_previous = {
				["<leader>pa"] = "@parameter.inner", -- swap parameters/argument with prev
				["<leader>p:"] = "@property.outer", -- swap object property with prev
				["<leader>pm"] = "@function.outer", -- swap function with previous
			},
		},
		move = {
			enable = true,
			set_jumps = true, -- whether to set jumps in the jumplist
			goto_next_start = {
				["]f"] = { query = "@call.outer", desc = "Next function call start" },
				["]m"] = { query = "@function.outer", desc = "Next method/function def start" },
				["]c"] = { query = "@class.outer", desc = "Next class start" },
				["]i"] = { query = "@conditional.outer", desc = "Next conditional start" },
				["]l"] = { query = "@loop.outer", desc = "Next loop start" },

				-- You can pass a query group to use query from `queries/<lang>/<query_group>.scm file in your runtime path.
				-- Below example nvim-treesitter's `locals.scm` and `folds.scm`. They also provide highlights.scm and indent.scm.
				["]s"] = { query = "@scope", query_group = "locals", desc = "Next scope" },
				["]z"] = { query = "@fold", query_group = "folds", desc = "Next fold" },
			},
			goto_next_end = {
				["]F"] = { query = "@call.outer", desc = "Next function call end" },
				["]M"] = { query = "@function.outer", desc = "Next method/function def end" },
				["]C"] = { query = "@class.outer", desc = "Next class end" },
				["]I"] = { query = "@conditional.outer", desc = "Next conditional end" },
				["]L"] = { query = "@loop.outer", desc = "Next loop end" },
			},
			goto_previous_start = {
				["[f"] = { query = "@call.outer", desc = "Prev function call start" },
				["[m"] = { query = "@function.outer", desc = "Prev method/function def start" },
				["[c"] = { query = "@class.outer", desc = "Prev class start" },
				["[i"] = { query = "@conditional.outer", desc = "Prev conditional start" },
				["[l"] = { query = "@loop.outer", desc = "Prev loop start" },
			},
			goto_previous_end = {
				["[F"] = { query = "@call.outer", desc = "Prev function call end" },
				["[M"] = { query = "@function.outer", desc = "Prev method/function def end" },
				["[C"] = { query = "@class.outer", desc = "Prev class end" },
				["[I"] = { query = "@conditional.outer", desc = "Prev conditional end" },
				["[L"] = { query = "@loop.outer", desc = "Prev loop end" },
			},
		},
	},
})

require("treesitter-context").setup({
	enable = true, -- Enable this plugin (Can be enabled/disabled later via commands)
	-- max_lines = 0, -- How many lines the window should span. Values <= 0 mean no limit.
	max_lines = 4, -- How many lines the window should span. Values <= 0 mean no limit.
	min_window_height = 0, -- Minimum editor window height to enable context. Values <= 0 mean no limit.
	line_numbers = true,
	multiline_threshold = 20, -- Maximum number of lines to collapse for a single context line
	-- trim_scope = "outer", -- Which context lines to discard if `max_lines` is exceeded. Choices: 'inner', 'outer'
	trim_scope = "inner", -- Which context lines to discard if `max_lines` is exceeded. Choices: 'inner', 'outer'
	mode = "cursor", -- Line used to calculate context. Choices: 'cursor', 'topline'
	-- Separator between context and content. Should be a single character string, like '-'.
	-- When separator is set, the context will only show up when there are at least 2 lines above cursorline.
	separator = nil,
	zindex = 20, -- The Z-index of the context window
	on_attach = nil, -- (fun(buf: integer): boolean) return false to disable attaching
})
vim.keymap.set("n", "[c", function()
	require("treesitter-context").go_to_context()
end, { silent = true, desc = "Treesitter jump to context (updwards)" })

local ts_repeat_move = require("nvim-treesitter.textobjects.repeatable_move")

-- vim way: ; goes to the direction you were moving.
vim.keymap.set({ "n", "x", "o" }, ";", ts_repeat_move.repeat_last_move)
vim.keymap.set({ "n", "x", "o" }, ",", ts_repeat_move.repeat_last_move_opposite)

-- Optionally, make builtin f, F, t, T also repeatable with ; and ,
vim.keymap.set({ "n", "x", "o" }, "f", ts_repeat_move.builtin_f)
vim.keymap.set({ "n", "x", "o" }, "F", ts_repeat_move.builtin_F)
vim.keymap.set({ "n", "x", "o" }, "t", ts_repeat_move.builtin_t)
vim.keymap.set({ "n", "x", "o" }, "T", ts_repeat_move.builtin_T)
