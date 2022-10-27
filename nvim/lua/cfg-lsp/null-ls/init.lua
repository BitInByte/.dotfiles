local null_ls = require "null-ls"
-- require("null-ls").setup(
--   {
--     sources = {
--       require("null-ls").builtins.formatting.stylua,
--       -- require("null-ls").builtins.diagnostics.eslint,
--       require("null-ls").builtins.diagnostics.eslint_d,
--       -- require("null-ls").builtins.completion.spell,
--       -- require("null-ls").builtins.formatting.prettierd
--       require("null-ls").builtins.formatting.prettier
--     }
--   }
-- )
require "mason-null-ls".setup_handlers {
  function(source_name)
    -- all sources with no handler get passed here
  end,
  stylua = function(source_name, methods)
    null_ls.register(null_ls.builtins.formatting.stylua)
  end,
  eslint_d = function(source_name, methods)
    null_ls.register(null_ls.builtins.diagnostics.eslint_d)
  end,
  prettierd = function(source_name, methods)
    null_ls.register(null_ls.builtins.formatting.prettierd)
  end
}

null_ls.setup()
