function load(args)
  require "lspconfig".cssmodules_ls.setup {
    capabilities = args.capabilities,
    on_attach = args.on_attach,
    flags = args.flags
  }
end

return {
  load = load
}
