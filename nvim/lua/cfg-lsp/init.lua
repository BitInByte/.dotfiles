local nvim_lsp = require("lspconfig")

local shared_commons = require("cfg-lsp.sharedcommons")

-- Use a loop to conveniently call 'setup' on multiple servers and
-- map buffer local keybindings when the language server attaches
local servers = {"pyright", "tsserver", "rls", "vuels", "sqlls"}
for _, lsp in ipairs(servers) do
  nvim_lsp[lsp].setup {
    on_attach = shared_commons.on_attach,
    flags = {
      debounce_text_changes = 150
    },
    capabilities = shared_commons.capabilities
  }
end

vim.lsp.handlers["textDocument/publishDiagnostics"] =
  vim.lsp.with(
  vim.lsp.diagnostic.on_publish_diagnostics,
  {
    -- Enable underline, use default values
    underline = true,
    -- Enable virtual text, override spacing to 4
    virtual_text = {
      spacing = 4
      -- prefix = '~',
    },
    -- Use a function to dynamically turn signs off
    -- and on, using buffer local variables
    signs = function(bufnr, client_id)
      local ok, result = pcall(vim.api.nvim_buf_get_var, bufnr, "show_signs")
      -- No buffer local variable set, so just enable by default
      if not ok then
        return true
      end

      return result
    end,
    -- Disable a feature
    update_in_insert = false
    --virtual_text = true
  }
)

-- Lua lsp
local lualsp = require("cfg-lsp.providers.lua")
lualsp.load(shared_commons.capabilities, shared_commons.on_attach)
-- require("cfg-lsp.providers.vuels")
-- require("cfg-lsp.providers.tsserver")
-- require("cfg-lsp.providers.vimls")
-- require("cfg-lsp.providers.latex")
-- require("cfg-lsp.providers.rust")
--require('cfg-lsp.jdtls')
require("cfg-lsp.providers.csharp")

-- local pid = vim.fn.getpid()
-- -- local omnisharp_bin = "/usr/local/opt/omnisharp-mono/bin/omnisharp"
-- local omnisharp_bin = "/usr/local/opt/omnisharp/libexec/run"
-- require "lspconfig".omnisharp.setup {
--   on_attach = on_attach,
--   capabilities = capabilities,
--   cmd = {omnisharp_bin, "--languageserver", "--hostPID", tostring(pid)}
-- }

--
-- Diagnostics Hover
-- vim.cmd [[autocmd CursorHold,CursorHoldI * lua  vim.lsp.diagnostic.show_line_diagnostics({focusable=false})]]
vim.cmd [[autocmd CursorHold,CursorHoldI * lua vim.diagnostic.open_float()]]

-- Format on save
vim.cmd [[
    autocmd BufWritePre *.java lua vim.lsp.buf.formatting_sync(nil, 1000)
    autocmd BufWritePre *.js lua vim.lsp.buf.formatting_sync(nil, 1000)
    autocmd BufWritePre *.ts lua vim.lsp.buf.formatting_sync(nil, 1000)
    autocmd BufWritePre *.tsx lua vim.lsp.buf.formatting_sync(nil, 1000)
    autocmd BufWritePre *.jsx lua vim.lsp.buf.formatting_sync(nil, 1000)
    autocmd BufWritePre *.rs lua vim.lsp.buf.formatting_sync(nil, 1000)
    autocmd BufWritePre *.py lua vim.lsp.buf.formatting_sync(nil, 1000)
    autocmd BufWritePre *.cs lua vim.lsp.buf.formatting_sync(nil, 1000)
]]

-- Enable codelens
vim.cmd [[
    autocmd BufEnter,CursorHold,InsertLeave <buffer> lua vim.lsp.codelens.refresh()
]]
