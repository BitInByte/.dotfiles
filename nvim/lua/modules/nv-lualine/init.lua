-- local gps = require("nvim-gps")
-- Bubbles config for lualine
-- Author: lokesh-krishna
-- MIT license, see LICENSE for more details.

-- stylua: ignore
local colors = {
  blue = "#80a0ff",
  cyan = "#79dac8",
  black = "#080808",
  white = "#c6c6c6",
  red = "#ff5189",
  violet = "#d183e8",
  grey = "#303030"
}

--[[ local bubbles_theme = {
  normal = {
    a = { fg = colors.black, bg = colors.violet },
    b = { fg = colors.white, bg = colors.grey },
    c = { fg = colors.black, bg = colors.black },
  },

  insert = { a = { fg = colors.black, bg = colors.blue } },
  visual = { a = { fg = colors.black, bg = colors.cyan } },
  replace = { a = { fg = colors.black, bg = colors.red } },

  inactive = {
    a = { fg = colors.white, bg = colors.black },
    b = { fg = colors.white, bg = colors.black },
    c = { fg = colors.black, bg = colors.black },
  },
} ]]
-- GPS Stuff
-- local function gpsLocation()
--   return '  ' .. gps.get_location() .. ' '
-- end
-- local function isGpsAvailable()
--     return gps.is_available()
-- end

local function lspClients()
  local msg = "No Active Lsp"
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

require("lualine").setup {
  options = {
    -- theme = bubbles_theme,
    -- theme = 'tokyonight',
    theme = "auto",
    component_separators = "|",
    section_separators = {left = "", right = ""}
  },
  -- We only have 6 sections
  sections = {
    -- In each section we can add as much components
    -- as we want
    lualine_a = {
      {"mode", separator = {left = ""}, right_padding = 2}
    },
    lualine_b = {"filename", "branch", {"diagnostics", sources = {"nvim_diagnostic"}}},
    -- lualine_c = {  {gpsLocation, cond = isGpsAvailable}},
    lualine_x = {{lspClients, icon = " LSP:"}},
    lualine_y = {"fileformat", "filetype", "progress"},
    lualine_z = {
      {"location", separator = {right = ""}, left_padding = 2}
    }
  },
  inactive_sections = {
    lualine_a = {"filename"},
    lualine_b = {},
    lualine_c = {},
    lualine_x = {},
    lualine_y = {},
    lualine_z = {"location"}
  },
  tabline = {},
  extensions = {}
}
