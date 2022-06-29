function load(args)
  require "lspconfig".tsserver.setup {
    includeCompletionsForImportStatements = true,
    includeCompletionsForModuleExports = true,
    capabilities = args.capabilities,
    on_attach = args.on_attach,
    flags = args.flags
  }
end

return {
  load = load
}
