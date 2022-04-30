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
