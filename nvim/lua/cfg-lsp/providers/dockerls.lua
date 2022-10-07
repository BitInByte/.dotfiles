function load(args)
  require "lspconfig".dockerls.setup {
    capabilities = args.capabilities,
    on_attach = args.on_attach,
    flags = args.flags
  }
end

return {
  load = load
}
