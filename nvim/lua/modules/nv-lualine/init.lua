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
				theme = "auto",
				component_separators = "|",
				section_separators = { left = "", right = "" },
				always_divide_middle = false,
				globalstatus = false,
			},
			-- We only have 6 sections
			sections = {
				-- In each section we can add as much components
				-- as we want
				lualine_a = {
					{ "mode", separator = { left = "" }, right_padding = 2, icon = "" },
				},
				-- lualine_b = { "filename", { "branch", icon = "" }, { "diagnostics", sources = { "nvim_diagnostic" } } },
				lualine_b = {
					"filename",
					{ "branch", icon = "" },
					-- "diff",
					{ "diagnostics", sources = { "nvim_diagnostic" } },
				},
				lualine_c = {},
				-- lualine_c = {  {gpsLocation, cond = isGpsAvailable}},
				-- lualine_x = { { lspClients, icon = " LSP:" } },
				-- lualine_x = { { lspClients, icon = "ﴞ" } },
				-- lualine_y = { { lspClients, icon = "ﴞ" }, "fileformat", "filetype", "progress" },
				lualine_x = {},
				-- lualine_y = { { lspClients, icon = "喇" }, "tabs", "filetype", "progress" },
				lualine_y = { { lspClients, icon = "" }, "filetype", "progress", "searchcount" },
				lualine_z = {
					{ "location", separator = { right = "" }, left_padding = 2 },
				},
			},
			inactive_sections = {
				lualine_a = { "filename" },
				lualine_b = {},
				lualine_c = {},
				lualine_x = {},
				lualine_y = {},
				lualine_z = { "location" },
			},
			tabline = {
				-- lualine_a = { "buffers", { "diagnostics", sources = { "nvim_diagnostic" } } },
				lualine_a = { "buffers" },
				lualine_b = {},
				lualine_c = {},
				lualine_x = {},
				lualine_y = {},
				lualine_z = { "tabs" },
			},
			extensions = {
				"nvim-tree",
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
