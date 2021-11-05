local config = {
  -- The command that starts the language server
  cmd = {
    '/Library/Java/JavaVirtualMachines/jdk-11.0.12.jdk/Contents/Home/',
    '-Dosgi.bundles.defaultStartLevel=4',
    -- ADD REMAINING OPTIONS FROM https://github.com/eclipse/eclipse.jdt.ls#running-from-the-command-line !
  },

  -- This is the default if not provided, you can remove it. Or adjust as needed.
  -- One dedicated LSP server & client will be started per unique root_dir
  root_dir = require('jdtls.setup').find_root({'.git', 'mvnw', 'gradlew'})
}
require('jdtls').start_or_attach(config)

