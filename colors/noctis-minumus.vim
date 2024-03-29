" Colorscheme generated by https://github.com/arcticlimer/djanho
highlight clear

function s:highlight(group, bg, fg, style)
  let gui = a:style == '' ? '' : 'gui=' . a:style
  let fg = a:fg == '' ? '' : 'guifg=' . a:fg
  let bg = a:bg == '' ? '' : 'guibg=' . a:bg
  exec 'hi ' . a:group . ' ' . bg . ' ' . fg  . ' ' . gui
endfunction

let s:Color1 = '#c5cdd3'
let s:Color0 = '#5e7887'
let s:Color4 = '#a88c00'
let s:Color6 = '#7068b1'
let s:Color14 = '#2a3f4d'
let s:Color10 = '#496d83'
let s:Color7 = '#3f848d'
let s:Color17 = '#96a8b6'
let s:Color9 = '#b16a4e'
let s:Color5 = '#72c09f'
let s:Color8 = '#5998c0'
let s:Color3 = '#d3b692'
let s:Color13 = '#3a3738'
let s:Color11 = '#1b2932'
let s:Color16 = '#202e37'
let s:Color15 = '#5d6e79'
let s:Color12 = '#273e41'
let s:Color2 = '#c88da2'

call s:highlight('Comment', '', s:Color0, '')
call s:highlight('TSCharacter', '', s:Color1, '')
call s:highlight('Keyword', '', s:Color2, '')
call s:highlight('Conditional', '', s:Color2, '')
call s:highlight('Repeat', '', s:Color2, '')
call s:highlight('Identifier', '', s:Color3, '')
call s:highlight('Constant', '', s:Color4, '')
call s:highlight('String', '', s:Color5, '')
call s:highlight('Number', '', s:Color6, '')
call s:highlight('Function', '', s:Color7, '')
call s:highlight('Type', '', s:Color8, '')
call s:highlight('Error', '', s:Color9, '')
call s:highlight('Comment', '', '', 'italic')
call s:highlight('Keyword', '', '', 'bold')
call s:highlight('Operator', '', '', 'bold')
call s:highlight('Conditional', '', '', 'bold')
call s:highlight('Repeat', '', '', 'bold')
call s:highlight('StatusLine', s:Color10, s:Color11, '')
call s:highlight('WildMenu', s:Color11, s:Color1, '')
call s:highlight('Pmenu', s:Color11, s:Color1, '')
call s:highlight('PmenuSel', s:Color1, s:Color11, '')
call s:highlight('PmenuThumb', s:Color11, s:Color1, '')
call s:highlight('DiffAdd', s:Color12, '', '')
call s:highlight('DiffDelete', s:Color13, '', '')
call s:highlight('Normal', s:Color11, s:Color1, '')
call s:highlight('Visual', s:Color14, '', '')
call s:highlight('CursorLine', s:Color14, '', '')
call s:highlight('ColorColumn', s:Color14, '', '')
call s:highlight('SignColumn', s:Color11, '', '')
call s:highlight('LineNr', '', s:Color15, '')
call s:highlight('TabLine', s:Color16, s:Color17, '')
call s:highlight('TabLineSel', s:Color8, s:Color11, '')
call s:highlight('TabLineFill', s:Color16, s:Color17, '')
call s:highlight('TSPunctDelimiter', '', s:Color1, '')

highlight! link TSParameter Constant
highlight! link TelescopeNormal Normal
highlight! link TSTagDelimiter Type
highlight! link Whitespace Comment
highlight! link TSComment Comment
highlight! link TSOperator Operator
highlight! link Operator Keyword
highlight! link TSConditional Conditional
highlight! link TSNumber Number
highlight! link Macro Function
highlight! link TSLabel Type
highlight! link TSNamespace TSType
highlight! link TSString String
highlight! link TSFuncMacro Macro
highlight! link TSTag MyTag
highlight! link TSConstBuiltin TSVariableBuiltin
highlight! link TSFunction Function
highlight! link TSPunctSpecial TSPunctDelimiter
highlight! link Repeat Conditional
highlight! link TSParameterReference TSParameter
highlight! link NonText Comment
highlight! link TSKeyword Keyword
highlight! link Folded Comment
highlight! link CursorLineNr Identifier
highlight! link TSRepeat Repeat
highlight! link TSField Constant
highlight! link TSPunctBracket MyTag
highlight! link TSType Type
highlight! link TSFloat Number
highlight! link Conditional Operator
highlight! link TSConstant Constant
highlight! link TSProperty TSField
