local saga = require "lspsaga"

-- change the lsp symbol kind
-- local kind = require("lspsaga.lspkind")
-- kind[type_number][2] = icon -- see lua/lspsaga/lspkind.lua

-- use default config
-- saga.init_lsp_saga()

-- use custom config
saga.init_lsp_saga(
  {
    -- "single" | "double" | "rounded" | "bold" | "plus"
    border_style = "single",
    -- when cursor in saga window you config these to move
    move_in_saga = {prev = "<C-p>", next = "<C-n>"},
    -- Error, Warn, Info, Hint
    -- use emoji like
    -- { "🙀", "😿", "😾", "😺" }
    -- or
    -- { "😡", "😥", "😤", "😐" }
    -- and diagnostic_header can be a function type
    -- must return a string and when diagnostic_header
    -- is function type it will have a param `entry`
    -- entry is a table type has these filed
    -- { bufnr, code, col, end_col, end_lnum, lnum, message, severity, source }
    diagnostic_header = {" ", " ", " ", "ﴞ "},
    -- show diagnostic source
    show_diagnostic_source = true,
    -- add bracket or something with diagnostic source, just have 2 elements
    diagnostic_source_bracket = {},
    -- use emoji lightbulb in default
    code_action_icon = "💡",
    -- if true can press number to execute the codeaction in codeaction window
    code_action_num_shortcut = true,
    -- same as nvim-lightbulb but async
    code_action_lightbulb = {
      enable = true,
      sign = true,
      sign_priority = 20,
      virtual_text = true
    },
    -- separator in finder
    finder_separator = "  ",
    -- preview lines of lsp_finder and definition preview
    max_preview_lines = 10,
    finder_action_keys = {
      open = "o",
      vsplit = "s",
      split = "i",
      tabe = "t",
      quit = "q",
      scroll_down = "<C-f>",
      scroll_up = "<C-b>" -- quit can be a table
    },
    code_action_keys = {
      quit = "q",
      exec = "<CR>"
    },
    rename_action_quit = "<C-c>",
    definition_preview_icon = "  ",
    -- show symbols in winbar must nightly
    symbol_in_winbar = false,
    winbar_separator = ">",
    winbar_show_file = true,
    -- function type  return file string,
    -- by default saga use expand('%:t')
    -- you can custom file name include path or something
    -- winbar_file_format = function() your code here end,
    -- if you don't use nvim-lspconfig you must pass your server name and
    -- the related filetypes into this table
    -- like server_filetype_map = { metals = { "sbt", "scala" } }
    server_filetype_map = {}
  }
)
