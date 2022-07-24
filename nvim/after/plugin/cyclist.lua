vim.api.nvim_exec(
  [[
    " Add a new named configuration
    call cyclist#add_listchar_option_set('limited', {
            \ 'eol': '↲',
            \ 'tab': '» ',
            \ 'trail': '·',
            \ 'extends': '<',
            \ 'precedes': '>',    
            \ 'conceal': '┊',
            \ 'nbsp': '␣',
            \ })

    " Cycle to the next configuration
    nmap <leader>cn <Plug>CyclistNext
    nmap <leader>cp <Plug>CyclistPrev

    " Set a specific configuration
    call cyclist#activate_listchars('limited')
    ]],
  false
)
