function load(args)
  require "lspconfig".pyright.setup {
    python = {
      analysis = {
        diagnosticSeverityOverrides = {
          -- Disable type checking errors
          reportGeneralTypeIssues = "none"
        }
      },
      linting = {
        mypyEnabled = false
      }
    },
    capabilities = args.capabilities,
    on_attach = args.on_attach,
    flags = args.flags
  }
end

return {
  load = load
}
