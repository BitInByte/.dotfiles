" Swap from the ts file to html file or reversed
function! SwapFile()
    let l:file_name = expand('%:t:r')
    let l:extension = expand('%:e')

    let l:cmdStr =':e %:p:h/' . l:file_name . '.html'
    if(l:extension == 'html')
        let l:cmdStr =':e %:p:h/' . l:file_name . '.ts'
    endif

    " echo cmdStr

    execute l:cmdStr
endfunction

nnoremap <space>as :call SwapFile()<CR>

function! ChangeTS()
    let l:file_name = expand('%:t:r')
    " let l:cmdStr =':e %:p:h/' . file_name . '.ts'
    let l:cmdStr ='%:p:h/' . file_name . '.ts'
    " execute cmdStr
    call CheckNewFile(l:cmdStr, 0)
endfunction
nnoremap <space>at :call ChangeTS()<CR>

function! ChangeHTML()
    let l:file_name = expand('%:t:r')
    " let cmdStr =':e %:p:h/' . file_name . '.html'
    let l:cmdStr = '%:p:h/' . file_name . '.html'

    call CheckNewFile(l:cmdStr, 0)
    " if empty(glob('%:p:h/' . file_name . '.html'))
        " let l:answer = Confirm('No file found! Do you want to create it? y/n')
        " if l:answer == 1
            " echo "create file"
            " execute cmdStr
        " else
            " echo "not creating file"
            " return
        " endif
    " else
        " execute cmdStr
    " endif
    " execute file_name
endfunction
nnoremap <space>ah :call ChangeHTML()<CR>

function! ChangeCSS()
    let l:file_name = expand('%:t:r')
    " echo file_name
    " let cmdStr
    " if !empty(expand(glob('%:p:h/' . file_name . '.css')))
    if !empty(glob('%:p:h/' . l:file_name . '.css'))
    " if filereadable(expand( file_name . '.css'))
        let l:cmdStr =':e %:p:h/' . l:file_name . '.css'
        " echo 'Have File'
    elseif !empty(glob('%:p:h/' . l:file_name . '.scss'))
        let l:cmdStr =':e %:p:h/' . l:file_name . '.scss'
    elseif !empty(glob('%:p:h/' . l:file_name . '.sass'))
        let l:cmdStr =':e %:p:h/' . l:file_name . '.sass'
    elseif !empty(glob('%:p:h/' . l:file_name . '.less'))
        let l:cmdStr =':e %:p:h/' . l:file_name . '.less'
    else
        call CheckNewFile(':e %:p:h/' . l:file_name, 1)
        return
    endif
    " let cmdStr =':e %:p:h/' . file_name . '.css'
    execute l:cmdStr
endfunction
nnoremap <space>ac :call ChangeCSS()<CR>

function! CheckNewFile(cmdStr, isCss)
    if empty(glob(a:cmdStr))
        if a:isCss == 1
            let l:answer = Confirm('No file found! Do you want to create it? (c)ss/(s)css/s(a)ss/l(e)ss/n')
            echo l:answer
            if l:answer ==? 'css'
                echo 'css'
                let l:file = ':e' . a:cmdStr . '.css'
                execute l:file
            elseif l:answer ==? 'scss'
                echo 'scss'
                let l:file = ':e' . a:cmdStr . '.scss'
                execute l:file
            elseif l:answer ==? 'less'
                echo 'less'
                let l:file = ':e' . a:cmdStr . '.less'
                execute l:file
            elseif l:answer ==? 'sass'
                echo 'sass'
                let l:file = ':e' . a:cmdStr . '.sass'
                execute l:file
            " elseif l:answer == 0
            else
                echo "not creating file"
                return
            endif
            " execute l:file
        else
            let l:answer = Confirm('No file found! Do you want to create it? y/n')
            if l:answer == 'yes'
                echo "create file"
                let l:file = ':e ' . a:cmdStr
                execute l:file
            else
                echo "not creating file"
                return
            endif
        endif
    else
        let l:file = ':e ' . a:cmdStr
        execute l:file
    endif
endfunction


function! Confirm(msg)
    echo a:msg . ' '

    let l:answer = nr2char(getchar())

    if l:answer ==? 'y'
        return 'yes'
    elseif l:answer ==? 'n'
        return 'no'
    elseif l:answer ==? 'c'
        return 'css'
    elseif l:answer ==? 'a'
        return 'sass'
    elseif l:answer ==? 's'
        return 'scss'
    elseif l:answer ==? 'e'
        return 'less'
    else
        echo 'Please enter a valid answer...'
        return Confirm(a:msg)
    endif
endfunction
nnoremap <space>aj :call Confirm('Do you want to continue? y/n')<CR>
