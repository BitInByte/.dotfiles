-- silent - command will not be echoed in the command line
-- noremap - non recursive map
-- <CR> - Hit's Enter
--Template
--vim.api.nvim_set_keymap('','', {})

-- Open vimrc
vim.api.nvim_set_keymap("n", "<leader>.", ":e ~/.config/nvim/init.lua<CR>", {silent = true})
vim.api.nvim_set_keymap("n", "<leader>,", ":so ~/.config/nvim/init.lua<CR>", {silent = true})

-- Splitting Remaps
vim.api.nvim_set_keymap("n", "<leader>tt", ":sp<CR>", {silent = true})
vim.api.nvim_set_keymap("n", "<leader>tT", ":vsp<CR>", {silent = true})

-- Move Lines
vim.api.nvim_set_keymap("n", "<C-j>", ":m .+1<CR>==", {silent = true, noremap = true})
vim.api.nvim_set_keymap("n", "<C-k>", ":m .-2<CR>==", {silent = true, noremap = true})
vim.api.nvim_set_keymap("i", "<C-j> <Esc>", ":m .+1<CR>==gi", {silent = true, noremap = true})
vim.api.nvim_set_keymap("i", "<C-k> <Esc>", ":m .-2<CR>==gi", {silent = true, noremap = true})
vim.api.nvim_set_keymap("v", "<C-j>", ":m '>+1<CR>gv=gv", {silent = true, noremap = true})
vim.api.nvim_set_keymap("v", "<C-k>", ":m '<-2<CR>gv=gv", {silent = true, noremap = true})

-- Telescope
vim.api.nvim_set_keymap("n", "<leader>ff", "<cmd>Telescope find_files<CR>", {silent = true})
vim.api.nvim_set_keymap("n", "<leader>f/", "<cmd>Telescope live_grep<CR>", {silent = true})
vim.api.nvim_set_keymap("n", "<leader>fv", "<cmd>Telescope buffers<CR>", {silent = true})
vim.api.nvim_set_keymap("n", "<leader>fh", "<cmd>Telescope help_tags<CR>", {silent = true})
vim.api.nvim_set_keymap("n", "<leader>fe", "<cmd>Telescope file_browser<CR>", {silent = true})
vim.api.nvim_set_keymap("n", "<leader>fc", "<cmd>Telescope colorscheme<CR>", {silent = true})
vim.api.nvim_set_keymap("n", "<leader>fs", "<cmd>Telescope spell_suggest<CR>", {silent = true})
vim.api.nvim_set_keymap("n", "<leader>fk", "<cmd>Telescope keymaps<CR>", {silent = true})
vim.api.nvim_set_keymap("n", "<leader>ft", "<cmd>Telescope treesitter<CR>", {silent = true})
vim.api.nvim_set_keymap("n", "<leader>fr", "<cmd>Telescope resume<CR>", {silent = true})
vim.api.nvim_set_keymap("n", "<leader>fgs", "<cmd>Telescope git_status<CR>", {silent = true})
vim.api.nvim_set_keymap("n", "<leader>fgc", "<cmd>Telescope git_commits<CR>", {silent = true})
vim.api.nvim_set_keymap("n", "<leader>fgb", "<cmd>Telescope git_branches<CR>", {silent = true})
vim.api.nvim_set_keymap("n", "<leader>flc", "<cmd>Telescope lsp_code_actions<CR>", {silent = true})
vim.api.nvim_set_keymap("n", "<leader>fli", "<cmd>Telescope lsp_implementations<CR>", {silent = true})
vim.api.nvim_set_keymap("n", "<leader>flr", "<cmd>Telescope lsp_references<CR>", {silent = true})
vim.api.nvim_set_keymap("n", "<leader>ft", "<cmd>TodoTelescope<CR>", {silent = true})

-- lspsaga
-- lsp finder to find the cursor word definition and reference
vim.keymap.set("n", "sh", require("lspsaga.finder").lsp_finder, {silent = true, noremap = true})
-- or use command LspSagaFinder
vim.keymap.set("n", "sh", "<cmd>Lspsaga lsp_finder<CR>", {silent = true, noremap = true})
local action = require("lspsaga.codeaction")

-- code action
vim.keymap.set("n", "<leader>sa", action.code_action, {silent = true, noremap = true})
vim.keymap.set(
  "v",
  "<leader>sa",
  function()
    vim.fn.feedkeys(vim.api.nvim_replace_termcodes("<C-U>", true, false, true))
    action.range_code_action()
  end,
  {silent = true, noremap = true}
)
-- or use command
-- vim.keymap.set("n", "<leader>ca", "<cmd>Lspsaga code_action<CR>", { silent = true,noremap = true })
-- vim.keymap.set("v", "<leader>ca", "<cmd><C-U>Lspsaga range_code_action<CR>", { silent = true,noremap = true })
-- show hover doc
vim.keymap.set("n", "sk", require("lspsaga.hover").render_hover_doc, {silent = true})
-- or use command
-- vim.keymap.set("n", "K", "<cmd>Lspsaga hover_doc<CR>", { silent = true })

local action = require("lspsaga.action")
-- scroll down hover doc or scroll in definition preview
vim.keymap.set(
  "n",
  "<C-f>",
  function()
    action.smart_scroll_with_saga(1)
  end,
  {silent = true}
)
-- scroll up hover doc
vim.keymap.set(
  "n",
  "<C-b>",
  function()
    action.smart_scroll_with_saga(-1)
  end,
  {silent = true}
)
-- show signature help
vim.keymap.set("n", "ss", require("lspsaga.signaturehelp").signature_help, {silent = true, noremap = true})
-- or command
-- vim.keymap.set("n", "gs", "<Cmd>Lspsaga signature_help<CR>", { silent = true,noremap = true })
-- rename
vim.keymap.set("n", "sr", require("lspsaga.rename").lsp_rename, {silent = true, noremap = true})
-- or command
-- vim.keymap.set("n", "gr", "<cmd>Lspsaga rename<CR>", { silent = true,noremap = true })
-- close rename win use <C-c> in insert mode or `q` in normal mode or `:q`
-- preview definition
vim.keymap.set("n", "sd", require("lspsaga.definition").preview_definition, {silent = true, noremap = true})
-- or use command
-- vim.keymap.set("n", "sd", "<cmd>Lspsaga preview_definition<CR>", { silent = true })
-- vim.keymap.set("n", "<leader>cd", require("lspsaga.diagnostic").show_line_diagnostics, { silent = true,noremap = true })
-- vim.keymap.set("n", "<leader>cd", "<cmd>Lspsaga show_line_diagnostics<CR>", { silent = true,noremap= true })

-- jump diagnostic
vim.keymap.set("n", "[e", require("lspsaga.diagnostic").goto_prev, {silent = true, noremap = true})
vim.keymap.set("n", "]e", require("lspsaga.diagnostic").goto_next, {silent = true, noremap = true})
-- or use command
-- vim.keymap.set("n", "[e", "<cmd>Lspsaga diagnostic_jump_next<CR>", { silent = true, noremap = true })
-- vim.keymap.set("n", "]e", "<cmd>Lspsaga diagnostic_jump_prev<CR>", { silent = true, noremap = true })
-- float terminal also you can pass the cli command in open_float_terminal function
local term = require("lspsaga.floaterm")

-- float terminal also you can pass the cli command in open_float_terminal function
vim.keymap.set(
  "n",
  "<A-d>",
  function()
    term.open_float_terminal("custom_cli_command")
  end,
  {silent = true, noremap = true}
)
vim.keymap.set(
  "t",
  "<A-d>",
  function()
    vim.fn.feedkeys(vim.api.nvim_replace_termcodes("<C-\\><C-n>", true, false, true))
    term.close_float_terminal()
  end,
  {silent = true}
)

-- or use command
-- vim.keymap.set("n", "<A-d>", "<cmd>Lspsaga open_floaterm custom_cli_command<CR>", { silent = true,noremap = true })
-- vim.keymap.set("t", "<A-d>", "<C-\\><C-n><cmd>Lspsaga close_floaterm<CR>", { silent = true,noremap =true })

-- Buffer Move
vim.api.nvim_set_keymap("n", "<C-h>", ":bprev<CR>", {silent = true})
vim.api.nvim_set_keymap("n", "<C-l>", ":bnext<CR>", {silent = true})
vim.api.nvim_set_keymap("n", "<leader>bd", ":bd<CR>", {silent = true})
vim.api.nvim_set_keymap("n", "<leader>be", ":ls<CR>", {silent = true})

-- Yank to clipboard
vim.api.nvim_set_keymap("v", "<leader>y", "+y", {silent = true})
vim.api.nvim_set_keymap("n", "<leader>y", "+yg_", {silent = true})
vim.api.nvim_set_keymap("n", "<leader>y", "+y", {silent = true})
vim.api.nvim_set_keymap("n", "<leader>yy", "+yy", {silent = true})

-- Paste from clipboad
vim.api.nvim_set_keymap("n", "<leader>p", "+p", {silent = true})
vim.api.nvim_set_keymap("n", "<leader>P", "+P", {silent = true})
vim.api.nvim_set_keymap("v", "<leader>p", "+p", {silent = true})
vim.api.nvim_set_keymap("v", "<leader>P", "+P", {silent = true})

-- disable ex mode
vim.api.nvim_set_keymap("", "Q", "<Nop>", {silent = true})

vim.api.nvim_set_keymap("n", "<leader>g", ":Neogit<CR>", {silent = true})

vim.api.nvim_set_keymap("n", "<leader>at", "<cmd>Angtoggle toggle<CR>", {silent = true})
vim.api.nvim_set_keymap("n", "<leader>as", "<cmd>Angtoggle test_toggle<CR>", {silent = true})
