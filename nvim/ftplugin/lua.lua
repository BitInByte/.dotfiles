require("formatter").setup(
  {
    filetype = {
      lua = {
        -- luafmt
        function()
          return {
            exe = "luafmt",
            args = {"--indent-count", 2, "--stdin"},
            stdin = true
          }
        end
      }
    }
  }
)
vim.api.nvim_set_keymap("n", "<leader>lg", "<cmd>Format<CR>", {silent = true, noremap = true})

vim.api.nvim_exec([[
augroup FormatAutogroup
  autocmd!
  autocmd BufWritePost *.lua FormatWrite
augroup END
]], true)
