return {

	-- {
	"nvim-lualine/lualine.nvim",
	dependencies = { { "nvim-tree/nvim-web-devicons", lazy = true } },
	config = function()
        -- stylua: ignore
        -- local colors = {
        --     blue = "#80a0ff",
        --     cyan = "#79dac8",
        --     black = "#080808",
        --     white = "#c6c6c6",
        --     red = "#ff5189",
        --     violet = "#d183e8",
        --     grey = "#303030"
        -- }

        local function lspClients()
            -- local msg = "No Active Lsp"
            local msg = ""
            local buf_ft = vim.api.nvim_buf_get_option(0, "filetype")
            local clients = vim.lsp.get_active_clients()
            if next(clients) == nil then
                return msg
            end
            for _, client in ipairs(clients) do
                local filetypes = client.config.filetypes
                if filetypes and vim.fn.index(filetypes, buf_ft) ~= -1 then
                    return client.name
                end
            end
            return msg
        end

		require("lualine").setup({
			options = {
				-- theme = bubbles_theme,
				-- theme = 'tokyonight',
				-- theme = "catppuccin",
				theme = "auto",
				-- component_separators = "|",
				component_separators = { left = "", right = "" },
				-- section_separators = { left = "", right = "" },
				section_separators = { left = "", right = "" },
				always_divide_middle = false,
				globalstatus = false,
			},
			-- We only have 6 sections
			sections = {
				-- In each section we can add as much components
				-- as we want
				lualine_a = {
					-- { "mode", separator = { left = "" }, right_padding = 2, icon = "" },
					{
						"mode", --[[ separator = { left = "" }, ]]
						right_padding = 2,
						icon = "",
					},
				},
				-- lualine_b = { "filename", { "branch", icon = "" }, { "diagnostics", sources = { "nvim_diagnostic" } } },
				lualine_b = {
					-- {
					-- 	"filename",
					-- 	symbols = {
					-- 		-- modified = "[+]", -- Text to show when the file is modified.
					-- 		-- readonly = "[-]", -- Text to show when the file is non-modifiable or readonly.
					-- 		unnamed = "Empty Buffer", -- Text to show for unnamed buffers.
					-- 		newfile = "New File", -- Text to show for newly created file before first write
					-- 	},
					-- },
					{ "branch", icon = "" },
					-- "diff",
					{ "diagnostics", sources = { "nvim_diagnostic" } },
				},
				lualine_c = {
					-- {
					--     function()
					--         return "%="
					--     end,
					-- },
					{
						require("noice").api.status.message.get_hl,
						cond = require("noice").api.status.message.has,
					},
					{
						require("noice").api.status.command.get,
						cond = require("noice").api.status.command.has,
						color = { fg = "#ff9e64" },
					},
					-- {
					-- 	require("noice").api.status.mode.get,
					-- 	cond = require("noice").api.status.mode.has,
					-- 	color = { fg = "#ff9e64" },
					-- },
					{
						require("noice").api.status.search.get,
						cond = require("noice").api.status.search.has,
						color = { fg = "#ff9e64" },
					},
				},
				-- lualine_c = {  {gpsLocation, cond = isGpsAvailable}},
				-- lualine_x = { { lspClients, icon = " LSP:" } },
				-- lualine_x = { { lspClients, icon = "ﴞ" } },
				-- lualine_y = { { lspClients, icon = "ﴞ" }, "fileformat", "filetype", "progress" },
				lualine_x = {
					-- "mason",
					{
						require("lazy.status").updates,
						cond = require("lazy.status").has_updates,
						color = { fg = "#ff9e64" },
					},
				},
				-- lualine_y = { { lspClients, icon = "喇" }, "tabs", "filetype", "progress" },
				lualine_y = { { lspClients, icon = "" }, "filetype", "progress", "searchcount" },
				lualine_z = {
					{
						"location", --[[ separator = { right = "" }, ]]
						left_padding = 2,
					},
				},
			},
			-- When cursor is not on active on
			-- the pane, it shows this sections
			-- instead on inactive panes
			inactive_sections = {
				lualine_a = {
					-- {
					"filename",
					-- symbols = {
					-- 	modified = "[+]", -- Text to show when the file is modified.
					-- 	readonly = "[-]", -- Text to show when the file is non-modifiable or readonly.
					-- 	unnamed = "[Empty Buffer]", -- Text to show for unnamed buffers.
					-- 	newfile = "[New]", -- Text to show for newly created file before first write
					-- },
					-- },
				},
				lualine_b = {},
				lualine_c = {},
				lualine_x = {},
				lualine_y = {},
				lualine_z = { "location" },
			},
			tabline = {
				-- lualine_a = { "buffers", { "diagnostics", sources = { "nvim_diagnostic" } } },
				lualine_a = {
					{
						"buffers",
						mode = 2,
						hide_filename_extension = true,
						filetype_names = {
							TelescopePrompt = "Telescope",
							dashboard = "Dashboard",
							-- packer = "Packer",
							lazy = "Lazy",
							fzf = "FZF",
							alpha = "Alpha",
							unnamed = "[Empty Buffer]", -- Text to show for unnamed buffers.
							newfile = "[New]", -- Text to show for newly created file before first write
						}, -- Shows specific buffer name for that filetype ( { `filetype` = `buffer_name`, ... } )
					},
				},
				lualine_b = {},
				lualine_c = {},
				lualine_x = {},
				lualine_y = {},
				lualine_z = { "tabs" },
			},
			extensions = {
				"nvim-tree",
				"neo-tree",
				"nvim-dap-ui",
				"symbols-outline",
				"trouble",
				"fugitive",
				"quickfix",
				"toggleterm",
			},
		})

		vim.opt.laststatus = 3 -- Status bar always on bottom (shared)
	end,
	-- init = function()
	-- 	vim.opt.laststatus = 3 -- Status bar always on bottom (shared)
	-- 	vim.opt.termguicolors = true
	-- end,
	-- },
}
