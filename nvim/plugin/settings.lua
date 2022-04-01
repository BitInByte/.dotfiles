vim.o.encoding = "UTF-8" -- Output encoding
--vim.o.path+='**'

vim.o.exrc = true -- When using vim ., it executes the vimrc there if exists
vim.o.title = true -- Set terminal title to current file name
vim.o.tabstop = 4 -- Ident using x spaces
vim.o.expandtab = true -- Converts tabs into spaces
vim.o.shiftwidth = 4 -- When shifting, ident using x spaces
vim.o.autoindent = true -- Copy indentation from the last line when starting a new line
vim.o.smartindent = true -- Copy indentation based on the syntax/style of code we are editing
vim.o.relativenumber = true -- Set relative numbers
vim.o.number = true -- Set current number overriding relative numbers
vim.o.smartcase = true -- Set smatcase for case sensitive in searchs
vim.o.ignorecase = true -- Set to work with smartcase
vim.o.undodir = vim.fn.stdpath("config") .. "/undodir" -- Set undo directory
vim.o.undofile = true -- Enable save of undos
vim.o.incsearch = true -- Highlight as we search
vim.o.scrolloff = 8 -- Scroll when is 8 rows above or bellow
vim.o.wrap = false -- Text keep going through the page
vim.o.autoread = true -- AutoReload file if it has been changed outside neovim
vim.o.hidden = true -- Let us create a new buffer without saving it. It asks to save when we leave the ViM
vim.o.writebackup = false -- Some servers have issues with backup files, see #649
vim.o.splitbelow = true -- Horizontal splits will automatically be below
--vim.o.splitright = true				-- Vertical splits will automatically be to the right
vim.o.laststatus = 2 -- Always display the status line
vim.o.cursorline = true -- Enable highlighting of the current line
vim.o.showtabline = 2 -- Always show tabs
-- vim.o.timeout = false               -- Doesn't allow neovim to wait for a second key
--vim.o.timeoutlen = 200              -- Remove some delay on vim waiting for leader sequence
vim.o.updatetime = 250 -- Add update time so that disgnostics on hover works
vim.o.swapfile = false -- Disable swap file getting ride of the dialog to choose if we want to recover the file
vim.o.inccommand = "nosplit" -- Highlight search and replace
vim.opt.foldmethod = "syntax" -- Set fold to indent
vim.opt.foldcolumn = "1" -- Add a column sign telling the folds that we have
vim.opt.foldenable = false -- Disable automatic fold on launch
vim.opt.clipboard = "unnamedplus" -- Allow yank to clipboard
vim.wo.spell = false -- Enable/Disable spell
vim.bo.spelllang = "en_us" -- Set spell dictionary
