" Vim color file
" Author: BitInByte
" Colorscheme Name: foxy
" Inspired by https://dartpad.dev

"+--------+
"+ Resets +
"+--------+
set background=dark
highlight clear

if exists("syntax_on")
syntax reset
endif

"+------------------+
"+ Colorscheme Name +
"+------------------+
let g:colors_name = "foxy"

"+--------------+
"+ Color Pallet +
"+--------------+
" let s:text = "#c0c2c5"
let s:text = {"gui": "#c0c2c5", "cterm": "7"}
" let s:number = "#627978"
let s:number = {"gui": "#627978", "cterm": "8"}
" let s:bg = "#0f1823"
let s:bg = {"gui": "#0f1823", "cterm": "17"}
let s:bgLight = {"gui": "#203954", "cterm": "32"}
let s:green = {"gui": "#51C686", "cterm": "78"}
let s:orange = {"gui": "#EE8666", "cterm": "208"}
let s:blue = {"gui": "#16ADCA", "cterm": "38"}
let s:pink = {"gui": "#E55074", "cterm": "197"}
let s:yellow = {"gui": "#E0BE36", "cterm": "220"}
let s:red = {"gui": "#BA1200", "cterm": "160"}
let s:grey = {"gui": "#403e41", "cterm": "238"}
let s:light = {"gui": "#9198b4", "cterm": "246"}

"+-----------------+
"+ Attr Definition +
"+-----------------+
let s:bold = "bold,"
let s:italic = "italic,"
let s:underline = "underline,"

"+-----------------+
"+ Helper Function +
"+-----------------+
" function! s:highlight(group, guifg, guibg, ctermfg, ctermbg, attr, guisp)
function! s:highlight(group, guifg, guibg, ctermfg, ctermbg, attr)
" function! s:highlight(group, guifg, guibg, attr)
  if a:guifg != ""
    exec "hi " . a:group . " guifg=" . a:guifg
  endif
  if a:guibg != ""
    exec "hi " . a:group . " guibg=" . a:guibg
  endif
  if a:ctermfg != ""
    exec "hi " . a:group . " ctermfg=" . a:ctermfg
  endif
  if a:ctermbg != ""
    exec "hi " . a:group . " ctermbg=" . a:ctermbg
  endif
  if a:attr != ""
    exec "hi " . a:group . " gui=" . a:attr . " cterm=" . substitute(a:attr, "undercurl", s:underline, "")
  endif
  " if a:guisp != ""
    " exec "hi " . a:group . " guisp=" . a:guisp
  " endif
endfunction


"+---------------+
"+ UI Components +
"+---------------+
"+--- Attributes ---+
call s:highlight("Bold", "NONE", "NONE", "NONE", "NONE", s:bold)
call s:highlight("Italic", "NONE", "NONE", "NONE", "NONE", s:italic)
call s:highlight("Underline", "NONE", "NONE", "NONE", "NONE", s:underline)

" Editor
call s:highlight("Error", s:red.gui, "NONE", s:red.cterm, "NONE",  "NONE")
" highlight Error guifg=#BA1200 guibg=#0f1823 gui=NONE
call s:highlight("LineNr", s:light.gui, "NONE", s:light.cterm, "NONE", "NONE")
" highlight LineNr guifg=#9198b4 guibg=#0f1823 gui=NONE
call s:highlight("MatchParen", s:orange.gui, "NONE", s:orange.cterm, "NONE", "NONE")
" highlight MatchParen guifg=#F7977A guibg=NONE gui=NONE
call s:highlight("Normal", s:text.gui, s:bg.gui, s:text.cterm, s:bg.cterm,  "NONE")
" highlight Normal guifg=#c0c2c5 guibg=#0f1823 gui=NONE
call s:highlight("Pmenu", s:text.gui, s:bgLight.gui, s:text.cterm, s:bgLight.cterm, "NONE")
" highlight Pmenu guifg=#c0c2c5 guibg=#0f1823 gui=NONE
call s:highlight("PmenuSel", s:orange.gui, s:grey.gui, s:orange.cterm, s:grey.cterm, "NONE")
" highlight PmenuSel guifg=#F7977A guibg=#403e41 gui=NONE
call s:highlight("SpecialKey", s:light.gui, "NONE", s:light.cterm, "NONE", "NONE")
" highlight SpecialKey guifg=#9198b4 guibg=#0f1823 gui=NONE


" Telescope
call s:highlight("Visual", s:bg.gui, s:text.gui, s:bg.cterm, s:text.cterm, "NONE")
" highlight Visual guifg=#0f1823 guibg=#c0c2c5 gui=NONE


" Gutter Tab
call s:highlight("ColorColumn", "NONE", s:bgLight.gui, "NONE", s:bgLight.cterm, "NONE")
" highlight ColorColumn guifg=NONE guibg=#203954 gui=NONE
call s:highlight("CursorLineNr", s:yellow.gui, s:bg.gui, s:yellow.cterm, s:bg.cterm, "NONE")
" highlight CursorLineNr guifg=#E0BE36 guibg=#0f1823 gui=NONE
call s:highlight("Folded", s:bg.gui, s:text.gui, s:bg.cterm, s:text.cterm, "NONE")
" highlight Folded guifg=#0f1823 guibg=#c0c2c5 gui=NONE
call s:highlight("SignColumn", s:text.gui, s:bg.gui, s:text.cterm, s:bg.cterm, "NONE")
" highlight SignColumn guifg=#c0c2c5 guibg=#0f1823 gui=NONE

" Navigation / NerdTree
call s:highlight("Directory", s:blue.gui, "NONE", s:blue.cterm, "NONE", "NONE")
" highlight Directory guifg=#16ADCA guibg=NONE gui=NONE

" Prompt/Status
call s:highlight("EndOfBuffer", s:light.gui, s:bg.gui, s:light.cterm, s:bg.cterm, "NONE")
" highlight EndOfBuffer guifg=#9198b4 guibg=#0f1823 gui=NONE
call s:highlight("ErrorMsg", s:red.gui, "NONE", s:red.cterm, "NONE", "NONE")
call s:highlight("StatusLine", s:light.gui, s:bg.gui, s:light.cterm, s:bg.cterm, "NONE")
" highlight StatusLine guifg=#9198b4 guibg=#0f1823 gui=NONE
call s:highlight("StatusLineNC", s:light.gui, s:bg.gui, s:light.cterm, s:bg.cterm, "NONE")
" highlight StatusLineNC guifg=#9198b4 guibg=#0f1823 gui=NONE
call s:highlight("WarningMsg", s:yellow.gui, s:bg.gui, s:yellow.cterm, s:bg.cterm, "NONE")

" Search
call s:highlight("Search", "NONE", "NONE", "NONE", "NONE", s:underline)
call s:highlight("IncSearch", s:grey.gui, s:yellow.gui, s:grey.cterm, s:yellow.cterm, s:underline)
" highlight Search guifg=NONE guibg=NONE gui=underline


" +--- Tabs ---+
" call s:highlight("TabLine", s:nord4_gui, s:nord1_gui, "NONE", s:nord1_term, "NONE", "")
" call s:hi("TabLineFill", s:nord4_gui, s:nord1_gui, "NONE", s:nord1_term, "NONE", "")
" call s:hi("TabLineSel", s:nord8_gui, s:nord3_gui, s:nord8_term, s:nord3_term, "NONE", "")

" +--- Window ---+
" call s:highlight("Title", s:nord4_gui, "", "NONE", "", "NONE", "")
call s:highlight("VertSplit", "NONE", s:bgLight.gui, "NONE", s:bgLight.cterm, "NONE")
" highlight VertSplit guifg=NONE guibg=#203954 gui=NONE


"+----------------------+
"+ Language Base Groups +
"+----------------------+
call s:highlight("Boolean", s:orange.gui, "NONE", s:orange.cterm, "NONE", "NONE")
" highlight Boolean guifg=#EE8666 guibg=#0f1823 gui=NONE
call s:highlight("Comment", s:light.gui, "NONE", s:light.cterm, "NONE", "NONE")
" highlight Comment guifg=#9198b4 guibg=#0f1823 gui=NONE
call s:highlight("Delimiter", s:text.gui, "NONE", s:text.cterm, "NONE", "NONE")
" highlight Delimiter guifg=#c0c2c5 guibg=#0f1823 gui=NONE
call s:highlight("Function", s:blue.gui, "NONE", s:blue.cterm, "NONE", "NONE")
" highlight Function guifg=#16ADCA guibg=#0f1823 gui=NONE
call s:highlight("Identifier", s:blue.gui, "NONE", s:blue.cterm, "NONE", s:italic)
" highlight Identifier guifg=#16ADCA guibg=#0f1823 gui=italic cterm=italic
call s:highlight("Keyword", s:green.gui, "NONE", s:green.cterm, "NONE", "NONE")
" highlight Keyword guifg=#51C686 guibg=#0f1823 gui=NONE
call s:highlight("Number", s:number.gui, "NONE", s:number.cterm, "NONE", "NONE")
" highlight Number guifg=#627978 guibg=#0f1823 gui=NONE
call s:highlight("Operator", s:green.gui, "NONE", s:green.cterm, "NONE", "NONE")
" highlight Operator guifg=#51C686 guibg=#0f1823 gui=NONE
call s:highlight("PreProc", s:green.gui, "NONE", s:green.cterm, "NONE", "NONE")
" highlight PreProc guifg=#51C686 guibg=#0f1823 gui=NONE
call s:highlight("Special", s:orange.gui, "NONE",s:orange.cterm, "NONE", "NONE")
" highlight Special guifg=#EE8666 guibg=#0f1823 gui=NONE
call s:highlight("SpecialChar", s:orange.gui, "NONE", s:orange.cterm, "NONE", "NONE")
" highlight SpecialChar guifg=#EE8666 guibg=#0f1823 gui=NONE
call s:highlight("Statement", s:green.gui, "NONE", s:green.cterm, "NONE", "NONE")
" highlight Statement guifg=#51C686 guibg=#0f1823 gui=NONE
call s:highlight("String", s:pink.gui, "NONE", s:pink.cterm, "NONE", "NONE")
" highlight String guifg=#E55074 guibg=#0f1823 gui=NONE
call s:highlight("Structure", s:orange.gui, "NONE", s:orange.cterm, "NONE", "NONE")
" highlight Structure guifg=#EE8666 guibg=#0f1823 gui=NONE
call s:highlight("Todo", s:yellow.gui, "NONE", s:yellow.cterm, "NONE", "NONE")
" highlight Todo guifg=#E0BE36 guibg=#0f1823 gui=NONE
call s:highlight("Type", s:orange.gui, "NONE", s:orange.cterm, "NONE", "NONE")
" highlight Type guifg=#EE8666 guibg=#0f1823 gui=NONE
call s:highlight("Typedef", s:orange.gui, "NONE", s:orange.cterm, "NONE", "NONE")
" highlight Typedef guifg=#EE8666 guibg=#0f1823 gui=NONE

" HTML
hi! link htmlBold Bold
hi! link htmlEndTag htmlTag
hi! link htmlItalic Italic
hi! link htmlUnderline Underline
hi! link htmlTSConstant htmlTSTag


" Markdown
call s:highlight("markdownH1", s:orange.gui, "NONE", s:orange.cterm, "NONE", "NONE")
call s:highlight("markdownH1Delimiter", s:green.gui, "NONE", s:green.cterm, "NONE", "NONE")
call s:highlight("markdownBoldDelimiter", s:grey.gui, "NONE", s:grey.cterm, "NONE", "NONE")
hi! link markdownBold Bold
hi! link markdownItalic Italic
hi! link markdownUnderline Underline
hi! link markdownH2 markdownH1
hi! link markdownH2Delimiter markdownH1Delimiter
hi! link markdownH2 markdownH1
hi! link markdownH2Delimiter markdownH1Delimiter
hi! link markdownH4 markdownH1
hi! link markdownH4Delimiter markdownH1Delimiter
hi! link markdownH5 markdownH1
hi! link markdownH5Delimiter markdownH1Delimiter
hi! link markdownH6 markdownH1
hi! link markdownH6Delimiter markdownH1Delimiter

" Dart
call s:highlight("dartTSConstBuiltin", s:blue.gui, "NONE", s:blue.cterm, "NONE", "NONE")


" TreeSitter Colors
call s:highlight("htmlTSTitle", s:text.gui, "NONE", s:text.cterm, "NONE", "NONE")
hi! link vueTSTitle htmlTSTitle
call s:highlight("typescriptTSNamespace", s:text.gui, "NONE", s:text.cterm, "NONE", "NONE")
call s:highlight("Conceal", "NONE", "NONE", "NONE", "NONE", s:underline)
" hi! link cssTSString cssTSNumber

" call s:highlight("typescriptTSOperator", s:text, "NONE", "NONE")


hi! link LspDiagnosticsDefaultError Error
hi! link LspDiagnosticsDefaultWarning WarningMsg
