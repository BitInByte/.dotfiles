local shared_commons = require("cfg-lsp.sharedcommons")

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
  on_attach = shared_commons.on_attach,
  capabilities = shared_commons.capabilities
}
