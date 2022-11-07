require "nvim-treesitter.configs".setup {
 -- Install parsers synchronously (only applied to `ensure_installed`)
  sync_install = false,

  -- Automatically install missing parsers when entering buffer
  -- Recommendation: set to false if you don't have `tree-sitter` CLI installed locally
  auto_install = true,
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
     -- additional_vim_regex_highlighting = false,
    -- disable = { "dart" }
   },
  indent = {
    enable = true
  }
  -- rainbow = {
  --         enable = false
  --     }
}

 -- vim.cmd([[
 --   set nofoldenable
 --   set foldmethod=expr
 --   set foldexpr=nvim_treesitter#foldexpr()
 -- ]])
