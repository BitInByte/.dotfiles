-- silent - command will not be echoed in the command line
-- noremap - non recursive map
-- <CR> - Hit's Enter
--Template
--vim.api.nvim_set_keymap('','', {})

-- Open vimrc
vim.api.nvim_set_keymap(
	"n",
	"<leader>.",
	":e ~/.config/nvim/init.lua<CR>",
	{ silent = true, desc = "Edit init config" }
)
vim.api.nvim_set_keymap(
	"n",
	"<leader>,",
	":so ~/.config/nvim/init.lua<CR>",
	{ silent = true, desc = "Source init config" }
)

-- Check unsaved changes
vim.api.nvim_set_keymap("n", "<leader>w", ":w !diff % -<CR>", { silent = true, desc = "Check unsaved changes" })

-- Clean it
-- vim.api.nvim_set_keymap("n", "<C-l>", ":<C-u>nohlsearch<CR><C-l>", { silent = true })

-- Splitting Remaps
-- vim.api.nvim_set_keymap("n", "<leader>tt", ":sp<CR>", { silent = true })
-- vim.api.nvim_set_keymap("n", "<leader>tT", ":vsp<CR>", { silent = true })
-- Panes Resizing
vim.api.nvim_set_keymap(
	"n",
	"<leader>>",
	":vertical resize -10<CR>",
	{ silent = true, desc = "Vertical pane resize -10" }
)
vim.api.nvim_set_keymap(
	"n",
	"<leader><",
	":vertical resize +10<CR>",
	{ silent = true, desc = "Vertical pane resize +10" }
)

-- Move Lines
vim.api.nvim_set_keymap("n", "<C-j>", ":m .+1<CR>==", { silent = true, noremap = true })
vim.api.nvim_set_keymap("n", "<C-k>", ":m .-2<CR>==", { silent = true, noremap = true })
vim.api.nvim_set_keymap("i", "<C-j> <Esc>", ":m .+1<CR>==gi", { silent = true, noremap = true })
vim.api.nvim_set_keymap("i", "<C-k> <Esc>", ":m .-2<CR>==gi", { silent = true, noremap = true })
vim.api.nvim_set_keymap("v", "<C-j>", ":m '>+1<CR>gv=gv", { silent = true, noremap = true })
vim.api.nvim_set_keymap("v", "<C-k>", ":m '<-2<CR>gv=gv", { silent = true, noremap = true })

-- Debugger
vim.api.nvim_set_keymap(
	"n",
	"<leader>db",
	"<cmd>lua require'dap'.toggle_breakpoint()<CR>",
	{ silent = true, desc = "Dap toggle breakpoint" }
)
vim.api.nvim_set_keymap(
	"n",
	"<leader>ds",
	"<cmd>lua require'dap'.continue()<CR>",
	{ silent = true, desc = "Dap continue" }
)
vim.api.nvim_set_keymap(
	"n",
	"<leader>dd",
	"<cmd>lua require('dap.ui.widgets').hover()<CR>",
	{ silent = true, desc = "Dap UI hover" }
)
vim.api.nvim_set_keymap(
	"n",
	"<leader>do",
	"<cmd>lua require'dap'.step_over()<CR>",
	{ silent = true, desc = "Dap step over" }
)
vim.api.nvim_set_keymap(
	"n",
	"<leader>di",
	"<cmd>lua require'dap'.step_into()<CR>",
	{ silent = true, desc = "Dap step into" }
)
vim.api.nvim_set_keymap(
	"n",
	"<leader>dw",
	"<cmd>lua require'dapui'.toggle()<CR>",
	{ silent = true, desc = "Dap UI toggle" }
)

-- Buffer Move
-- vim.api.nvim_set_keymap("n", "<C-h>", ":bprev<CR>", { silent = true })
-- vim.api.nvim_set_keymap("n", "<C-l>", ":bnext<CR>", { silent = true })
vim.api.nvim_set_keymap("n", "[b", ":bprev<CR>", { silent = true })
vim.api.nvim_set_keymap("n", "<S-Tab>", ":bprev<CR>", { silent = true })
vim.api.nvim_set_keymap("n", "]b", ":bnext<CR>", { silent = true })
vim.api.nvim_set_keymap("n", "<Tab>", ":bnext<CR>", { silent = true })
vim.api.nvim_set_keymap("n", "[B", ":bfirst<CR>", { silent = true })
vim.api.nvim_set_keymap("n", "]B", ":blast<CR>", { silent = true })
vim.api.nvim_set_keymap("n", "<leader>bd", ":bd<CR>", { silent = true, desc = "Buffer delete" })
-- vim.api.nvim_set_keymap("n", "<leader>be", ":ls<CR>", { silent = true })
vim.api.nvim_set_keymap("n", "<leader>be", ":ls :b<CR>", { silent = true, desc = "Buffer list" })
-- vim.api.nvim_set_keymap("n", "<C-n>", ":tabnext<CR>", { silent = true })
-- vim.api.nvim_set_keymap("n", "<C-p>", ":tabprevious<CR>", { silent = true })

-- Yank to clipboard
-- vim.api.nvim_set_keymap("v", "<leader>y", "+y", { silent = true })
-- vim.api.nvim_set_keymap("n", "<leader>y", "+yg_", { silent = true })
-- vim.api.nvim_set_keymap("n", "<leader>y", "+y", { silent = true })
-- vim.api.nvim_set_keymap("n", "<leader>yy", "+yy", { silent = true })

-- Paste from clipboad
-- vim.api.nvim_set_keymap("n", "<leader>p", "+p", { silent = true })
-- vim.api.nvim_set_keymap("n", "<leader>P", "+P", { silent = true })
-- vim.api.nvim_set_keymap("v", "<leader>p", "+p", { silent = true })
-- vim.api.nvim_set_keymap("v", "<leader>P", "+P", { silent = true })

-- disable ex mode
vim.api.nvim_set_keymap("", "Q", "<Nop>", { silent = true })

-- vim.api.nvim_set_keymap("n", "<leader>g", ":Neogit<CR>", { silent = true, desc = "Neogit" })

-- vim.api.nvim_set_keymap("n", "<leader>at", "<cmd>Angtoggle toggle<CR>", { silent = true })
-- vim.api.nvim_set_keymap("n", "<leader>as", "<cmd>Angtoggle test_toggle<CR>", { silent = true })

-- Settings toggle
vim.api.nvim_set_keymap(
	"n",
	"<leader>sn",
	":set norelativenumber!<CR>",
	{ silent = true, desc = "Toggle norelativenumber" }
)

-- Tree maps
vim.api.nvim_set_keymap("n", "<C-t>", ":Neotree float<CR>", { silent = true, desc = "Toggle Neotree" })
-- vim.api.nvim_set_keymap("n", "<C-t>", ":NvimTreeToggle<CR>", { silent = true })
-- vim.keymap.set("n", "<leader>mn", require("nvim-tree.api").marks.navigate.next)
-- vim.keymap.set("n", "<leader>mp", require("nvim-tree.api").marks.navigate.prev)
-- vim.keymap.set("n", "<leader>ms", require("nvim-tree.api").marks.navigate.select)

-- Terminal
vim.api.nvim_set_keymap("n", "<leader>tv", ":ToggleTerm<CR>", { silent = true, desc = "ToggleTerm" })
vim.api.nvim_set_keymap(
	"n",
	"<leader>tf",
	":ToggleTerm direction=float<CR>",
	{ silent = true, desc = "ToggleTerm float" }
)
function _G.set_terminal_keymaps()
	local opts = { buffer = 0 }
	vim.keymap.set("t", "<esc>", [[<C-\><C-n>]], opts)
	vim.keymap.set("t", "jk", [[<C-\><C-n>]], opts)
	vim.keymap.set("t", "<C-h>", [[<Cmd>wincmd h<CR>]], opts)
	vim.keymap.set("t", "<C-j>", [[<Cmd>wincmd j<CR>]], opts)
	vim.keymap.set("t", "<C-k>", [[<Cmd>wincmd k<CR>]], opts)
	vim.keymap.set("t", "<C-l>", [[<Cmd>wincmd l<CR>]], opts)
end

-- Trouble
vim.keymap.set("n", "<leader>xx", "<cmd>TroubleToggle<cr>", { silent = true, noremap = true, desc = "Trouble toggle" })
vim.keymap.set(
	"n",
	"<leader>xw",
	"<cmd>TroubleToggle workspace_diagnostics<cr>",
	{ silent = true, noremap = true, desc = "Trouble workspace diagnostic" }
)
vim.keymap.set(
	"n",
	"<leader>xd",
	"<cmd>TroubleToggle document_diagnostics<cr>",
	{ silent = true, noremap = true, desc = "Trouble document diagnostics" }
)
vim.keymap.set(
	"n",
	"<leader>xl",
	"<cmd>TroubleToggle loclist<cr>",
	{ silent = true, noremap = true, desc = "Trouble loclist" }
)
vim.keymap.set(
	"n",
	"<leader>xq",
	"<cmd>TroubleToggle quickfix<cr>",
	{ silent = true, noremap = true, desc = "Trouble quickfix" }
)
vim.keymap.set(
	"n",
	"gR",
	"<cmd>TroubleToggle lsp_references<cr>",
	{ silent = true, noremap = true, desc = "Trouble lsp references" }
)

-- if you only want these mappings for toggle term use term://*toggleterm#* instead
vim.cmd("autocmd! TermOpen term://* lua set_terminal_keymaps()")

-- vim.api.nvim_set_keymap("n", "<silent>ff", "<cmd>lua vim.lsp.buf.formatting()<CR>", { silent = true })

local MiniMap = require("mini.map")
vim.keymap.set("n", "<leader>mc", MiniMap.close, { desc = "MiniMap close" })
vim.keymap.set("n", "<leader>mf", MiniMap.toggle_focus, { desc = "MiniMap focus" })
vim.keymap.set("n", "<leader>mo", MiniMap.open, { desc = "MiniMap open" })
-- vim.keymap.set("n", "<leader>mr", MiniMap.refresh)
-- vim.keymap.set("n", "<leader>ms", MiniMap.toggle_side)
vim.keymap.set("n", "<leader>mt", MiniMap.toggle, { desc = "MiniMap toggle" })

-- Hop (Motions)
-- place this in one of your configuration file(s)
local hop = require("hop")
local directions = require("hop.hint").HintDirection
vim.keymap.set("", "<leader>hf", function()
	-- hop.hint_char1({ direction = directions.AFTER_CURSOR, current_line_only = false })
	hop.hint_char1()
end, { remap = true, desc = "Hop hint char" })
-- vim.keymap.set("", "<leader>hF", function()
-- 	-- hop.hint_char1({ direction = directions.BEFORE_CURSOR, current_line_only = true })
-- 	hop.hint_char1()
-- end, { remap = true })
vim.keymap.set("", "<leader>ht", function()
	-- hop.hint_char1({ direction = directions.AFTER_CURSOR, current_line_only = true, hint_offset = -1 })
	hop.hint_char1({ hint_offset = -1 })
end, { remap = true, desc = "Hop hint char with offset" })
-- vim.keymap.set("", "<leader>hT", function()
-- 	-- hop.hint_char1({ direction = directions.BEFORE_CURSOR, current_line_only = true, hint_offset = 1 })
-- 	hop.hint_char1({ hint_offset = 1 })
-- end, { remap = true })
vim.keymap.set("", "<leader>hs", function()
	hop.hint_anywhere()
end, { remap = true, desc = "Hop hint anywhere" })
