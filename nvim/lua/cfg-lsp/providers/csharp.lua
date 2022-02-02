-- require "lspconfig".csharp_ls.setup {}
-- local pid = vim.fn.getpid()
-- On linux/darwin if using a release build, otherwise under scripts/OmniSharp(.Core)(.cmd)
-- local omnisharp_bin = "/path/to/omnisharp-repo/run
-- local omnisharp_bin = "/usr/local/opt/omnisharp/libexec/run"
-- local omnisharp_bin = "~/Downloads/omni/run"
-- local omnisharp_bin = "/usr/local/opt/omnisharp-mono/bin/omnisharp"
-- on Windows
-- local omnisharp_bin = "/path/to/omnisharp/OmniSharp.exe"
-- local capabilities = vim.lsp.protocol.make_client_capabilities()
-- capabilities = require("cmp_nvim_lsp").update_capabilities(capabilities)
-- require "lspconfig".omnisharp.setup {
--   cmd = {omnisharp_bin, "--languageserver", "--hostPID", tostring(pid)},
--   capabilities = capabilities
-- }
-- require "lspconfig".omnisharp.setup {}
-- local lsp_status = require "plugins.lsp-status"

local on_attach = function(client, bufnr)
  require "lsp_signature".on_attach() -- Note: add in lsp client on-attach

  local function buf_set_keymap(...)
    vim.api.nvim_buf_set_keymap(bufnr, ...)
  end
  local function buf_set_option(...)
    vim.api.nvim_buf_set_option(bufnr, ...)
  end

  -- Enable completion triggered by <c-x><c-o>
  buf_set_option("omnifunc", "v:lua.vim.lsp.omnifunc")

  -- Mappings.
  local opts = {noremap = true, silent = true}

  -- See `:help vim.lsp.*` for documentation on any of the below functions
  buf_set_keymap("n", "gD", "<cmd>lua vim.lsp.buf.declaration()<CR>", opts)
  buf_set_keymap("n", "gd", "<cmd>lua vim.lsp.buf.definition()<CR>", opts)
  buf_set_keymap("n", "K", "<cmd>lua vim.lsp.buf.hover()<CR>", opts)
  buf_set_keymap("n", "gi", "<cmd>lua vim.lsp.buf.implementation()<CR>", opts)
  buf_set_keymap("n", "<C-k>", "<cmd>lua vim.lsp.buf.signature_help()<CR>", opts)
  buf_set_keymap("n", "<leader>wa", "<cmd>lua vim.lsp.buf.add_workspace_folder()<CR>", opts)
  buf_set_keymap("n", "<leader>wr", "<cmd>lua vim.lsp.buf.remove_workspace_folder()<CR>", opts)
  buf_set_keymap("n", "<leader>wl", "<cmd>lua print(vim.inspect(vim.lsp.buf.list_workspace_folders()))<CR>", opts)
  buf_set_keymap("n", "<leader>D", "<cmd>lua vim.lsp.buf.type_definition()<CR>", opts)
  buf_set_keymap("n", "<leader>rn", "<cmd>lua vim.lsp.buf.rename()<CR>", opts)
  buf_set_keymap("n", "<leader>lA", "<cmd>lua vim.lsp.buf.code_action()<CR>", opts)
  buf_set_keymap("n", "gr", "<cmd>lua vim.lsp.buf.references()<CR>", opts)
  -- buf_set_keymap("n", "<leader>e", "<cmd>lua  vim.lsp.diagnostic.show_line_diagnostics()<CR>", opts)
  buf_set_keymap("n", "<leader>e", "<cmd>lua vim.diagnostic.open_float()<CR>", opts)
  buf_set_keymap("n", "[d", "<cmd>lua vim.lsp.diagnostic.goto_prev()<CR>", opts)
  buf_set_keymap("n", "]d", "<cmd>lua vim.lsp.diagnostic.goto_next()<CR>", opts)
  buf_set_keymap("n", "<leader>q", "<cmd>lua vim.lsp.diagnostic.set_loclist()<CR>", opts)
  buf_set_keymap("n", "<leader>f", "<cmd>lua vim.lsp.buf.formatting()<CR>", opts)
  buf_set_keymap("n", "<leader>lg", "<cmd>lua vim.lsp.buf.formatting_sync(nil, 1000)<CR>", opts)
end

local home = os.getenv "HOME"
local omnisharp_bin = home .. "/Repositories/language-servers/omnisharp/run"
local pid = vim.fn.getpid()

require("lspconfig").omnisharp.setup {
  cmd = {
    omnisharp_bin,
    "--languageserver",
    "--hostPID",
    tostring(pid)
  },
  --on_attach = lsp_status.on_attach
  on_attach = on_attach
}
