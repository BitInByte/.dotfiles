-- Highlight on yank
-- vim.api.nvim_exec(
--   [[
--   augroup YankHighlight
--     autocmd!
--     autocmd TextYankPost * silent! lua vim.highlight.on_yank()
--   augroup end
-- ]],
--   false
-- )
local augroup = vim.api.nvim_create_augroup
local autocmd = vim.api.nvim_create_autocmd
local yank_group = augroup("HighlightYank", {clear = true})

autocmd(
  "TextYankPost",
  {
    group = yank_group,
    -- pattern = '*',
    callback = function()
      vim.highlight.on_yank()
    end
  }
)
