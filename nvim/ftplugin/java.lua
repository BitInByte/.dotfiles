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
  root_dir = require('jdtls.setup').find_root({'.git', 'mvnw', 'gradlew'})
}
require('jdtls').start_or_attach(config)


vim.api.nvim_set_keymap('n','<leader>lA', '<cmd>lua require(\'jdtls\').code_action()<CR>', { silent = true })
vim.api.nvim_set_keymap('n','<leader>lA', '<esc><Cmd>lua require(\'jdtls\').code_action(true)<CR>', { silent = true })
