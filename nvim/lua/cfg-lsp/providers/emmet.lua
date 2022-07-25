-- local configs = require "lspconfig/configs"
-- local capabilities = vim.lsp.protocol.make_client_capabilities()

function load(args)
  -- args.capabilities.textDocument.completion.completionItem.snippetSupport = true
  require("lspconfig").emmet_ls.setup(
    {
      -- on_attach = on_attach,
      capabilities = args.capabilities,
      filetypes = {"html", "css", "typescriptreact", "javascriptreact", "php", "javascript"},
      flags = flags
    }
  )
end

return {
  load = load
}
