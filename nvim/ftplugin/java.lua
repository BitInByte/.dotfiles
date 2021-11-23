-- local config = {
--   -- The command that starts the language server
--   cmd = {
--     --vim.fn.expand('./start.sh'),
--     --'/Library/Java/JavaVirtualMachines/jdk-11.0.12.jdk/Contents/Home/',
--     --'/Users/foxy/.config/nvim/lua/cfg-lsp/jdtls/start.sh',
--     '/Users/foxy/.config/nvim/ftplugin/start.sh',
--     -- '/Library/Java/JavaVirtualMachines/jdk-11.0.12.jdk/Contents/Home/bin/java -Declipse.application=org.eclipse',
--     '-Dosgi.bundles.defaultStartLevel=4',
--     -- ADD REMAINING OPTIONS FROM https://github.com/eclipse/eclipse.jdt.ls#running-from-the-command-line !
--   },
--     
-- 
--   -- This is the default if not provided, you can remove it. Or adjust as needed.
--   -- One dedicated LSP server & client will be started per unique root_dir
--   root_dir = require('jdtls.setup').find_root({'.git', 'mvnw', 'gradlew'})
-- }
-- require('jdtls').start_or_attach(config)

local capabilities = vim.lsp.protocol.make_client_capabilities()
capabilities = require('cmp_nvim_lsp').update_capabilities(capabilities)
local workspace_dir = vim.fn.fnamemodify(vim.fn.getcwd(), ':p:h:t')
local config = {
  cmd = {
	'java',
        '-Declipse.application=org.eclipse.jdt.ls.core.id1',
        '-Dosgi.bundles.defaultStartLevel=4',
        '-Declipse.product=org.eclipse.jdt.ls.core.product',
        '-Dlog.level=ALL',
        '-noverify',
        '-Xmx1G',
        '-jar','/Library/Java/jdt-language-server-1.5.0-202110191539/plugins/org.eclipse.equinox.launcher_1.6.400.v20210924-0641.jar',
        '-configuration', '/Library/Java/jdt-language-server-1.5.0-202110191539/config_mac/',
        '-data', vim.fn.expand('~/.cache/jdtls-workspace/') .. workspace_dir,
        '--add-modules=ALL-SYSTEM',
        '--add-opens java.base/java.util=ALL-UNNAMED',
        '--add-opens java.base/java.lang=ALL-UNNAMED'
  },
  root_dir = require('jdtls.setup').find_root({'.git', 'mvnw', 'gradlew'}),
  capabilities = capabilities,
}
require('jdtls').start_or_attach(config)
require "lsp_signature".on_attach()  -- Note: add in lsp client on-attach

local opts = { noremap=true, silent=true }
vim.api.nvim_set_keymap('n', 'gD', '<cmd>lua vim.lsp.buf.declaration()<CR>', opts)
vim.api.nvim_set_keymap('n', 'gd', '<cmd>lua vim.lsp.buf.definition()<CR>', opts)
vim.api.nvim_set_keymap('n', 'K', '<cmd>lua vim.lsp.buf.hover()<CR>', opts)
vim.api.nvim_set_keymap('n', 'gi', '<cmd>lua vim.lsp.buf.implementation()<CR>', opts)
vim.api.nvim_set_keymap('n', '<C-k>', '<cmd>lua vim.lsp.buf.signature_help()<CR>', opts)
vim.api.nvim_set_keymap('n', '<leader>wa', '<cmd>lua vim.lsp.buf.add_workspace_folder()<CR>', opts)
vim.api.nvim_set_keymap('n', '<leader>wr', '<cmd>lua vim.lsp.buf.remove_workspace_folder()<CR>', opts)
vim.api.nvim_set_keymap('n', '<leader>wl', '<cmd>lua print(vim.inspect(vim.lsp.buf.list_workspace_folders()))<CR>', opts)
vim.api.nvim_set_keymap('n', '<leader>D', '<cmd>lua vim.lsp.buf.type_definition()<CR>', opts)
vim.api.nvim_set_keymap('n', '<leader>rn', '<cmd>lua vim.lsp.buf.rename()<CR>', opts)
vim.api.nvim_set_keymap('n', 'gr', '<cmd>lua vim.lsp.buf.references()<CR>', opts)
vim.api.nvim_set_keymap('n', '<leader>e', '<cmd>lua vim.lsp.diagnostic.show_line_diagnostics()<CR>', opts)
vim.api.nvim_set_keymap('n', '[d', '<cmd>lua vim.lsp.diagnostic.goto_prev()<CR>', opts)
vim.api.nvim_set_keymap('n', ']d', '<cmd>lua vim.lsp.diagnostic.goto_next()<CR>', opts)
vim.api.nvim_set_keymap('n', '<leader>q', '<cmd>lua vim.lsp.diagnostic.set_loclist()<CR>', opts)
vim.api.nvim_set_keymap('n', '<leader>f', '<cmd>lua vim.lsp.buf.formatting()<CR>', opts)
vim.api.nvim_set_keymap('n', '<leader>lg', '<cmd>lua vim.lsp.buf.formatting_sync(nil, 1000)<CR>', opts)

vim.api.nvim_set_keymap('n','<leader>lA', '<cmd>lua require(\'jdtls\').code_action()<CR>', { silent = true })
-- vim.api.nvim_set_keymap('n','<leader>lA', '<esc><Cmd>lua require(\'jdtls\').code_action(true)<CR>', { silent = true })
