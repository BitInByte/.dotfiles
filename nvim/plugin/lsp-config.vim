" Auto-format *.rs (rust) files prior to saving them
autocmd BufWritePre *.java lua vim.lsp.buf.formatting_sync(nil, 1000)
" autocmd BufWritePre *.vue lua vim.lsp.buf.formatting_sync(nil, 1000)
" autocmd BufWritePre *.js lua vim.lsp.buf.formatting_sync(nil, 1000)
" autocmd BufWritePre *.ts lua vim.lsp.buf.formatting_sync(nil, 1000)
" autocmd BufWritePre *.tsx lua vim.lsp.buf.formatting_sync(nil, 1000)
autocmd BufWritePre *.vim lua vim.lsp.buf.formatting_sync(nil, 1000)
autocmd BufWritePre *.lua lua vim.lsp.buf.formatting_sync(nil, 1000)
autocmd BufWritePre *.sh lua vim.lsp.buf.formatting_sync(nil, 1000)
