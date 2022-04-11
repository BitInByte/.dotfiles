require "lspconfig".texlab.setup {
  texlab = {
    auxDirectory = ".",
    bibtexFormatter = "texlab",
    build = {
      args = {"-pdf", "-interaction=nonstopmode", "-synctex=1", "%f"},
      executable = "latexmk",
      forwardSearchAfter = true,
      onSave = true
    },
    chktex = {
      onEdit = false,
      onOpenAndSave = false
    },
    diagnosticsDelay = 300,
    formatterLineLength = 80,
    forwardSearch = {
      executable = "zathura",
      args = {
        "--synctex-forward",
        "%l:1:%f",
        "%p"
      }
    },
    latexFormatter = "latexindent",
    latexindent = {
      modifyLineBreaks = false
    }
  }
}

vim.cmd [[
    autocmd BufWritePost *.tex :TexlabBuild
]]

vim.cmd [[
    function! ZathuraOpenPdf()
        let fullPath = finddir('.git/..', expand('%:p:h').';')
        echo fullPath
        let pdfFile = substitute(fullPath, ".tex", ".pdf", "")
    endfunction

    nnoremap <A-p> :call ZathuraOpenPdf()<CR>
]]
