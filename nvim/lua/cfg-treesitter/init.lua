require'nvim-treesitter.configs'.setup {
  ensure_installed = { "java", "vue", "javascript", "typescript", "css", "lua", "graphql", "html", "tsx", "json", "python", "latex", "php", "bibtex", "scss", "dart" },
  highlight = {
    enable = true,
    -- disable = { "dart" }
  },
  indent = {
    enable = true
  }
}
