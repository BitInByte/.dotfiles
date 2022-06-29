local home = os.getenv "HOME"
local omnisharp_bin = home .. "/Repositories/language-servers/omnisharp/run"
local pid = vim.fn.getpid()

function load(args)
  require("lspconfig").omnisharp.setup {
    cmd = {
      omnisharp_bin,
      "--languageserver",
      "--hostPID",
      tostring(pid)
    },
    -- on_attach = shared_commons.on_attach,
    on_attach = function(_, bufnr)
      vim.api.nvim_buf_set_option(bufnr, "omnifunc", "v:lua.vim.lsp.omnifunc")
    end,
    capabilities = args.capabilities,
    flags = args.flags
  }
end

return {
  load = load
}
