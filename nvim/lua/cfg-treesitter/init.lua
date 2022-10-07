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
    enable = true,
    additional_vim_regex_highlighting = {"php"}
    -- disable = { "dart" }
  },
  indent = {
    enable = true
  }
}

vim.cmd([[
  set nofoldenable
  set foldmethod=expr
  set foldexpr=nvim_treesitter#foldexpr()
]])
