require "nvim-treesitter.configs".setup {
  ensure_installed = {
    "java",
    "vue",
    "javascript",
    "typescript",
    "css",
    "lua",
    "graphql",
    "html",
    "tsx",
    "json",
    "python",
    "latex",
    "php",
    "bibtex",
    "scss",
    "dart",
    "c_sharp",
    "swift",
    "svelte"
  },
  highlight = {
    enable = true
    -- disable = { "dart" }
  },
  indent = {
    enable = true
  }
}
