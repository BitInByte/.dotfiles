function load(args)
  require "lspconfig".texlab.setup {
    capabilities = args.capabilities,
    on_attach = args.on_attach,
    flags = args.on_attach
  }
end

return {
  load = load
}
