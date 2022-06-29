function load(args)
  require "lspconfig".svelte.setup {
    capabilities = args.capabilities,
    on_attach = args.on_attach,
    flags = args.flags
  }
end

return {
  load = load
}
