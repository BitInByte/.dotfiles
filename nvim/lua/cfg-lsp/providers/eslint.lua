local api = vim.api

function load(args)
  require "lspconfig".eslint.setup {}
end

api.nvim_create_autocmd(
  "BufWritePre",
  {
    pattern = {
      "*.tsx",
      "*.ts",
      "*.jsx",
      "*.js"
    },
    command = "EslintFixAll"
  }
)

return {
  load = load
}
