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
  }
}
