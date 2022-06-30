
"""
" Name: Untitled.vim
"""

set background=dark
hi clear

if exists('syntax on')
    syntax reset
endif

let g:colors_name='Untitled'
set t_Co=256


" bash

hi shEcho               guisp=NONE guifg=#ffffff guibg=#1c1c1c ctermfg=231  ctermbg=234  gui=NONE cterm=NONE
hi shEchoQuote          guisp=NONE guifg=#ffffff guibg=#1c1c1c ctermfg=231  ctermbg=234  gui=NONE cterm=NONE
hi shEmbeddedEcho       guisp=NONE guifg=#ffffff guibg=#1c1c1c ctermfg=231  ctermbg=234  gui=NONE cterm=NONE
hi shStatement          guisp=NONE guifg=#ffffff guibg=#1c1c1c ctermfg=231  ctermbg=234  gui=NONE cterm=NONE
hi shAlias              guisp=NONE guifg=#ffffff guibg=#1c1c1c ctermfg=231  ctermbg=234  gui=NONE cterm=NONE
hi shTouch              guisp=NONE guifg=#ffffff guibg=#1c1c1c ctermfg=231  ctermbg=234  gui=NONE cterm=NONE
hi shTouchCmd           guisp=NONE guifg=#ffffff guibg=#1c1c1c ctermfg=231  ctermbg=234  gui=NONE cterm=NONE
hi shDoError            guisp=NONE guifg=#ffffff guibg=#1c1c1c ctermfg=231  ctermbg=234  gui=NONE cterm=NONE
hi shIfError            guisp=NONE guifg=#ffffff guibg=#1c1c1c ctermfg=231  ctermbg=234  gui=NONE cterm=NONE
hi shInError            guisp=NONE guifg=#ffffff guibg=#1c1c1c ctermfg=231  ctermbg=234  gui=NONE cterm=NONE
hi shCaseError          guisp=NONE guifg=#ffffff guibg=#1c1c1c ctermfg=231  ctermbg=234  gui=NONE cterm=NONE
hi shEsacError          guisp=NONE guifg=#ffffff guibg=#1c1c1c ctermfg=231  ctermbg=234  gui=NONE cterm=NONE
hi shCurlyError         guisp=NONE guifg=#ffffff guibg=#1c1c1c ctermfg=231  ctermbg=234  gui=NONE cterm=NONE
hi shParenError         guisp=NONE guifg=#ffffff guibg=#1c1c1c ctermfg=231  ctermbg=234  gui=NONE cterm=NONE
hi shOK                 guisp=NONE guifg=#ffffff guibg=#1c1c1c ctermfg=231  ctermbg=234  gui=NONE cterm=NONE
hi shDTestError         guisp=NONE guifg=#ffffff guibg=#1c1c1c ctermfg=231  ctermbg=234  gui=NONE cterm=NONE
hi shTestError          guisp=NONE guifg=#ffffff guibg=#1c1c1c ctermfg=231  ctermbg=234  gui=NONE cterm=NONE
hi shOption             guisp=NONE guifg=#ffffff guibg=#1c1c1c ctermfg=231  ctermbg=234  gui=NONE cterm=NONE
hi shRedir              guisp=NONE guifg=#ffffff guibg=#1c1c1c ctermfg=231  ctermbg=234  gui=NONE cterm=NONE
hi shOperator           guisp=NONE guifg=#ffffff guibg=#1c1c1c ctermfg=231  ctermbg=234  gui=NONE cterm=NONE
hi shPattern            guisp=NONE guifg=#ffffff guibg=#1c1c1c ctermfg=231  ctermbg=234  gui=NONE cterm=NONE
hi shExpr               guisp=NONE guifg=#ffffff guibg=#1c1c1c ctermfg=231  ctermbg=234  gui=NONE cterm=NONE
hi shSubSh              guisp=NONE guifg=#ffffff guibg=#1c1c1c ctermfg=231  ctermbg=234  gui=NONE cterm=NONE
hi shTest               guisp=NONE guifg=#ffffff guibg=#1c1c1c ctermfg=231  ctermbg=234  gui=NONE cterm=NONE
hi shNoQuote            guisp=NONE guifg=#ffffff guibg=#1c1c1c ctermfg=231  ctermbg=234  gui=NONE cterm=NONE
hi shAstQuote           guisp=NONE guifg=#ffffff guibg=#1c1c1c ctermfg=231  ctermbg=234  gui=NONE cterm=NONE
hi shTestOpr            guisp=NONE guifg=#ffffff guibg=#1c1c1c ctermfg=231  ctermbg=234  gui=NONE cterm=NONE
hi shTestPattern        guisp=NONE guifg=#ffffff guibg=#1c1c1c ctermfg=231  ctermbg=234  gui=NONE cterm=NONE
hi shTestDoubleQuote    guisp=NONE guifg=#ffffff guibg=#1c1c1c ctermfg=231  ctermbg=234  gui=NONE cterm=NONE
hi shTestSingleQuote    guisp=NONE guifg=#ffffff guibg=#1c1c1c ctermfg=231  ctermbg=234  gui=NONE cterm=NONE
hi shDblBrace           guisp=NONE guifg=#ffffff guibg=#1c1c1c ctermfg=231  ctermbg=234  gui=NONE cterm=NONE
hi shDblParen           guisp=NONE guifg=#ffffff guibg=#1c1c1c ctermfg=231  ctermbg=234  gui=NONE cterm=NONE
hi shCharClass          guisp=NONE guifg=#ffffff guibg=#1c1c1c ctermfg=231  ctermbg=234  gui=NONE cterm=NONE
hi shDo                 guisp=NONE guifg=#ffffff guibg=#1c1c1c ctermfg=231  ctermbg=234  gui=NONE cterm=NONE
hi shIf                 guisp=NONE guifg=#ffffff guibg=#1c1c1c ctermfg=231  ctermbg=234  gui=NONE cterm=NONE
hi shFor                guisp=NONE guifg=#ffffff guibg=#1c1c1c ctermfg=231  ctermbg=234  gui=NONE cterm=NONE
hi shForPP              guisp=NONE guifg=#ffffff guibg=#1c1c1c ctermfg=231  ctermbg=234  gui=NONE cterm=NONE
hi shRepeat             guisp=NONE guifg=#ffffff guibg=#1c1c1c ctermfg=231  ctermbg=234  gui=NONE cterm=NONE
hi shCaseEsac           guisp=NONE guifg=#ffffff guibg=#1c1c1c ctermfg=231  ctermbg=234  gui=NONE cterm=NONE
hi shCurlyIn            guisp=NONE guifg=#ffffff guibg=#1c1c1c ctermfg=231  ctermbg=234  gui=NONE cterm=NONE
hi shComma              guisp=NONE guifg=#ffffff guibg=#1c1c1c ctermfg=231  ctermbg=234  gui=NONE cterm=NONE
hi shCaseBar            guisp=NONE guifg=#ffffff guibg=#1c1c1c ctermfg=231  ctermbg=234  gui=NONE cterm=NONE
hi shCaseStart          guisp=NONE guifg=#ffffff guibg=#1c1c1c ctermfg=231  ctermbg=234  gui=NONE cterm=NONE
hi shCaseLabel          guisp=NONE guifg=#ffffff guibg=#1c1c1c ctermfg=231  ctermbg=234  gui=NONE cterm=NONE
hi shCase               guisp=NONE guifg=#ffffff guibg=#1c1c1c ctermfg=231  ctermbg=234  gui=NONE cterm=NONE
hi shCaseExSingleQuote  guisp=NONE guifg=#ffffff guibg=#1c1c1c ctermfg=231  ctermbg=234  gui=NONE cterm=NONE
hi shCaseSingleQuote    guisp=NONE guifg=#ffffff guibg=#1c1c1c ctermfg=231  ctermbg=234  gui=NONE cterm=NONE
hi shCaseDoubleQuote    guisp=NONE guifg=#ffffff guibg=#1c1c1c ctermfg=231  ctermbg=234  gui=NONE cterm=NONE
hi shCaseCommandSub     guisp=NONE guifg=#ffffff guibg=#1c1c1c ctermfg=231  ctermbg=234  gui=NONE cterm=NONE
hi shCaseRange          guisp=NONE guifg=#ffffff guibg=#1c1c1c ctermfg=231  ctermbg=234  gui=NONE cterm=NONE
hi shWrapLineOperator   guisp=NONE guifg=#ffffff guibg=#1c1c1c ctermfg=231  ctermbg=234  gui=NONE cterm=NONE
hi shCommandSubBQ       guisp=NONE guifg=#ffffff guibg=#1c1c1c ctermfg=231  ctermbg=234  gui=NONE cterm=NONE
hi shEscape             guisp=NONE guifg=#ffffff guibg=#1c1c1c ctermfg=231  ctermbg=234  gui=NONE cterm=NONE
hi shCommandSub         guisp=NONE guifg=#ffffff guibg=#1c1c1c ctermfg=231  ctermbg=234  gui=NONE cterm=NONE
hi shArithmetic         guisp=NONE guifg=#ffffff guibg=#1c1c1c ctermfg=231  ctermbg=234  gui=NONE cterm=NONE
hi shSkipInitWS         guisp=NONE guifg=#ffffff guibg=#1c1c1c ctermfg=231  ctermbg=234  gui=NONE cterm=NONE
hi shCmdParenRegion     guisp=NONE guifg=#ffffff guibg=#1c1c1c ctermfg=231  ctermbg=234  gui=NONE cterm=NONE
hi shSource             guisp=NONE guifg=#ffffff guibg=#1c1c1c ctermfg=231  ctermbg=234  gui=NONE cterm=NONE
hi shColon              guisp=NONE guifg=#ffffff guibg=#1c1c1c ctermfg=231  ctermbg=234  gui=NONE cterm=NONE
hi shNumber             guisp=NONE guifg=#ffffff guibg=#1c1c1c ctermfg=231  ctermbg=234  gui=NONE cterm=NONE
hi shCtrlSeq            guisp=NONE guifg=#ffffff guibg=#1c1c1c ctermfg=231  ctermbg=234  gui=NONE cterm=NONE
hi shSpecial            guisp=NONE guifg=#ffffff guibg=#1c1c1c ctermfg=231  ctermbg=234  gui=NONE cterm=NONE
hi shExSingleQuote      guisp=NONE guifg=#ffffff guibg=#1c1c1c ctermfg=231  ctermbg=234  gui=NONE cterm=NONE
hi shExDoubleQuote      guisp=NONE guifg=#ffffff guibg=#1c1c1c ctermfg=231  ctermbg=234  gui=NONE cterm=NONE
hi shSingleQuote        guisp=NONE guifg=#ffffff guibg=#1c1c1c ctermfg=231  ctermbg=234  gui=NONE cterm=NONE
hi shDoubleQuote        guisp=NONE guifg=#ffffff guibg=#1c1c1c ctermfg=231  ctermbg=234  gui=NONE cterm=NONE
hi shStringSpecial      guisp=NONE guifg=#ffffff guibg=#1c1c1c ctermfg=231  ctermbg=234  gui=NONE cterm=NONE
hi shSpecialSQ          guisp=NONE guifg=#ffffff guibg=#1c1c1c ctermfg=231  ctermbg=234  gui=NONE cterm=NONE
hi shSpecialDQ          guisp=NONE guifg=#ffffff guibg=#1c1c1c ctermfg=231  ctermbg=234  gui=NONE cterm=NONE
hi shSpecialStart       guisp=NONE guifg=#ffffff guibg=#1c1c1c ctermfg=231  ctermbg=234  gui=NONE cterm=NONE
hi shSpecialNoZS        guisp=NONE guifg=#ffffff guibg=#1c1c1c ctermfg=231  ctermbg=234  gui=NONE cterm=NONE
hi shSpecialNxt         guisp=NONE guifg=#ffffff guibg=#1c1c1c ctermfg=231  ctermbg=234  gui=NONE cterm=NONE
hi shBkslshSnglQuote    guisp=NONE guifg=#ffffff guibg=#1c1c1c ctermfg=231  ctermbg=234  gui=NONE cterm=NONE
hi shBkslshDblQuote     guisp=NONE guifg=#ffffff guibg=#1c1c1c ctermfg=231  ctermbg=234  gui=NONE cterm=NONE
hi shTodo               guisp=NONE guifg=#ffffff guibg=#1c1c1c ctermfg=231  ctermbg=234  gui=NONE cterm=NONE
hi shComment            guisp=NONE guifg=#ffffff guibg=#1c1c1c ctermfg=231  ctermbg=234  gui=NONE cterm=NONE
hi shQuickComment       guisp=NONE guifg=#ffffff guibg=#1c1c1c ctermfg=231  ctermbg=234  gui=NONE cterm=NONE
hi shBQComment          guisp=NONE guifg=#ffffff guibg=#1c1c1c ctermfg=231  ctermbg=234  gui=NONE cterm=NONE
hi shHereDoc            guisp=NONE guifg=#d7d7af guibg=#1c1c1c ctermfg=187  ctermbg=234  gui=NONE cterm=NONE
hi shHereString         guisp=NONE guifg=#87875f guibg=NONE    ctermfg=101  ctermbg=NONE gui=NONE cterm=NONE
hi shSetOption          guisp=NONE guifg=#00ffff guibg=#1c1c1c ctermfg=51   ctermbg=234  gui=NONE cterm=NONE
hi shVariable           guisp=NONE guifg=#ffffff guibg=#1c1c1c ctermfg=231  ctermbg=234  gui=NONE cterm=NONE
hi shVarAssign          guisp=NONE guifg=#ffffff guibg=#1c1c1c ctermfg=231  ctermbg=234  gui=NONE cterm=NONE
hi shVar                guisp=NONE guifg=#ffffff guibg=#1c1c1c ctermfg=231  ctermbg=234  gui=NONE cterm=NONE
hi shAtExpr             guisp=NONE guifg=#ffffff guibg=#1c1c1c ctermfg=231  ctermbg=234  gui=NONE cterm=NONE
hi shSet                guisp=NONE guifg=#ffffff guibg=#1c1c1c ctermfg=231  ctermbg=234  gui=NONE cterm=NONE
hi shSetList            guisp=NONE guifg=#ffffff guibg=#1c1c1c ctermfg=231  ctermbg=234  gui=NONE cterm=NONE
hi shFunctionOne        guisp=NONE guifg=#ffffff guibg=#1c1c1c ctermfg=231  ctermbg=234  gui=NONE cterm=NONE
hi shFunctionTwo        guisp=NONE guifg=#ffffff guibg=#1c1c1c ctermfg=231  ctermbg=234  gui=NONE cterm=NONE
hi shFunctionThree      guisp=NONE guifg=#ffffff guibg=#1c1c1c ctermfg=231  ctermbg=234  gui=NONE cterm=NONE
hi shFunctionFour       guisp=NONE guifg=#ffffff guibg=#1c1c1c ctermfg=231  ctermbg=234  gui=NONE cterm=NONE
hi shDerefWordError     guisp=NONE guifg=#ffffff guibg=#1c1c1c ctermfg=231  ctermbg=234  gui=NONE cterm=NONE
hi shDerefSimple        guisp=NONE guifg=#ffffff guibg=#1c1c1c ctermfg=231  ctermbg=234  gui=NONE cterm=NONE
hi shDeref              guisp=NONE guifg=#ffffff guibg=#1c1c1c ctermfg=231  ctermbg=234  gui=NONE cterm=NONE
hi shDerefVar           guisp=NONE guifg=NONE    guibg=NONE    ctermfg=NONE ctermbg=NONE gui=NONE cterm=NONE
hi shDerefSpecial       guisp=NONE guifg=#ffffff guibg=#1c1c1c ctermfg=231  ctermbg=234  gui=NONE cterm=NONE
hi shDerefVarArray      guisp=NONE guifg=#ffffff guibg=#1c1c1c ctermfg=231  ctermbg=234  gui=NONE cterm=NONE
hi shDerefOpError       guisp=NONE guifg=#ffffff guibg=#1c1c1c ctermfg=231  ctermbg=234  gui=NONE cterm=NONE
hi shDerefOp            guisp=NONE guifg=#ffffff guibg=#1c1c1c ctermfg=231  ctermbg=234  gui=NONE cterm=NONE
hi shDerefPattern       guisp=NONE guifg=#ffffff guibg=#1c1c1c ctermfg=231  ctermbg=234  gui=NONE cterm=NONE
hi shDerefEscape        guisp=NONE guifg=#ffffff guibg=#1c1c1c ctermfg=231  ctermbg=234  gui=NONE cterm=NONE
hi shDerefString        guisp=NONE guifg=#ffffff guibg=#1c1c1c ctermfg=231  ctermbg=234  gui=NONE cterm=NONE
hi shDerefOffset        guisp=NONE guifg=#ffffff guibg=#1c1c1c ctermfg=231  ctermbg=234  gui=NONE cterm=NONE
hi shDerefLen           guisp=NONE guifg=#ffffff guibg=#1c1c1c ctermfg=231  ctermbg=234  gui=NONE cterm=NONE
hi shDerefPPS           guisp=NONE guifg=#ffffff guibg=#1c1c1c ctermfg=231  ctermbg=234  gui=NONE cterm=NONE
hi shDerefPPSleft       guisp=NONE guifg=#ffffff guibg=#1c1c1c ctermfg=231  ctermbg=234  gui=NONE cterm=NONE
hi shDerefPPSright      guisp=NONE guifg=#ffffff guibg=#1c1c1c ctermfg=231  ctermbg=234  gui=NONE cterm=NONE
hi shDerefPSR           guisp=NONE guifg=#ffffff guibg=#1c1c1c ctermfg=231  ctermbg=234  gui=NONE cterm=NONE
hi shDerefPSRleft       guisp=NONE guifg=#ffffff guibg=#1c1c1c ctermfg=231  ctermbg=234  gui=NONE cterm=NONE
hi shDerefPSRright      guisp=NONE guifg=#ffffff guibg=#1c1c1c ctermfg=231  ctermbg=234  gui=NONE cterm=NONE
hi shParen              guisp=NONE guifg=#ffffff guibg=#1c1c1c ctermfg=231  ctermbg=234  gui=NONE cterm=NONE
hi shArithRegion        guisp=NONE guifg=#ffffff guibg=#1c1c1c ctermfg=231  ctermbg=234  gui=NONE cterm=NONE
hi shBeginHere          guisp=NONE guifg=#ffffff guibg=#1c1c1c ctermfg=231  ctermbg=234  gui=NONE cterm=NONE
hi shCaseIn             guisp=NONE guifg=#ffffff guibg=#1c1c1c ctermfg=231  ctermbg=234  gui=NONE cterm=NONE
hi shQuote              guisp=NONE guifg=#ffffff guibg=#1c1c1c ctermfg=231  ctermbg=234  gui=NONE cterm=NONE
hi shCmdSubRegion       guisp=NONE guifg=#ffffff guibg=#1c1c1c ctermfg=231  ctermbg=234  gui=NONE cterm=NONE
hi shDerefPOL           guisp=NONE guifg=#ffffff guibg=#1c1c1c ctermfg=231  ctermbg=234  gui=NONE cterm=NONE
hi shDerefDelim         guisp=NONE guifg=#ffffff guibg=#1c1c1c ctermfg=231  ctermbg=234  gui=NONE cterm=NONE
hi shEchoDelim          guisp=NONE guifg=#ffffff guibg=#1c1c1c ctermfg=231  ctermbg=234  gui=NONE cterm=NONE
hi shFunction           guisp=NONE guifg=#ffffff guibg=#1c1c1c ctermfg=231  ctermbg=234  gui=NONE cterm=NONE
hi shHerePayload        guisp=NONE guifg=#ffffff guibg=#1c1c1c ctermfg=231  ctermbg=234  gui=NONE cterm=NONE
hi shLoop               guisp=NONE guifg=#5f87d7 guibg=#1c1c1c ctermfg=68   ctermbg=234  gui=NONE cterm=NONE
hi shPosnParm           guisp=NONE guifg=#ffffff guibg=#1c1c1c ctermfg=231  ctermbg=234  gui=NONE cterm=NONE
hi shRange              guisp=NONE guifg=#ffffff guibg=#1c1c1c ctermfg=231  ctermbg=234  gui=NONE cterm=NONE
hi shSetListDelim       guisp=NONE guifg=#ffffff guibg=#1c1c1c ctermfg=231  ctermbg=234  gui=NONE cterm=NONE
hi shSubShRegion        guisp=NONE guifg=#ffffff guibg=#1c1c1c ctermfg=231  ctermbg=234  gui=NONE cterm=NONE
hi bashAdminStatement   guisp=NONE guifg=#ffffff guibg=#1c1c1c ctermfg=231  ctermbg=234  gui=NONE cterm=NONE
hi bashSpecialVariables guisp=NONE guifg=#ffffff guibg=#1c1c1c ctermfg=231  ctermbg=234  gui=NONE cterm=NONE
hi bashStatement        guisp=NONE guifg=#ffffff guibg=#1c1c1c ctermfg=231  ctermbg=234  gui=NONE cterm=NONE
hi kshSpecialVariables  guisp=NONE guifg=#ffffff guibg=#1c1c1c ctermfg=231  ctermbg=234  gui=NONE cterm=NONE
hi kshStatement         guisp=NONE guifg=#ffffff guibg=#1c1c1c ctermfg=231  ctermbg=234  gui=NONE cterm=NONE
hi shCondError          guisp=NONE guifg=#ffffff guibg=#1c1c1c ctermfg=231  ctermbg=234  gui=NONE cterm=NONE
hi shSnglCase           guisp=NONE guifg=#ffffff guibg=#1c1c1c ctermfg=231  ctermbg=234  gui=NONE cterm=NONE
hi shConditional        guisp=NONE guifg=#ffffff guibg=#1c1c1c ctermfg=231  ctermbg=234  gui=NONE cterm=NONE
hi shExprRegion         guisp=NONE guifg=#ffffff guibg=#1c1c1c ctermfg=231  ctermbg=234  gui=NONE cterm=NONE
hi shFunctionKey        guisp=NONE guifg=#ffffff guibg=#1c1c1c ctermfg=231  ctermbg=234  gui=NONE cterm=NONE
hi shFunctionName       guisp=NONE guifg=#ffffff guibg=#1c1c1c ctermfg=231  ctermbg=234  gui=NONE cterm=NONE
hi shShellVariables     guisp=NONE guifg=#ffffff guibg=#1c1c1c ctermfg=231  ctermbg=234  gui=NONE cterm=NONE
hi shString             guisp=NONE guifg=#ffffff guibg=#1c1c1c ctermfg=231  ctermbg=234  gui=NONE cterm=NONE
hi shHereDoc01          guisp=NONE guifg=NONE    guibg=NONE    ctermfg=NONE ctermbg=NONE gui=NONE cterm=NONE
hi shHereDoc02          guisp=NONE guifg=#ffffff guibg=#1c1c1c ctermfg=231  ctermbg=234  gui=NONE cterm=NONE
hi shHereDoc03          guisp=NONE guifg=#ffffff guibg=#1c1c1c ctermfg=231  ctermbg=234  gui=NONE cterm=NONE
hi shHereDoc04          guisp=NONE guifg=#ffffff guibg=#1c1c1c ctermfg=231  ctermbg=234  gui=NONE cterm=NONE
hi shHereDoc05          guisp=NONE guifg=#ffffff guibg=#1c1c1c ctermfg=231  ctermbg=234  gui=NONE cterm=NONE
hi shHereDoc06          guisp=NONE guifg=#ffffff guibg=#1c1c1c ctermfg=231  ctermbg=234  gui=NONE cterm=NONE
hi shHereDoc07          guisp=NONE guifg=#ffffff guibg=#1c1c1c ctermfg=231  ctermbg=234  gui=NONE cterm=NONE
hi shHereDoc08          guisp=NONE guifg=#ffffff guibg=#1c1c1c ctermfg=231  ctermbg=234  gui=NONE cterm=NONE
hi shHereDoc09          guisp=NONE guifg=#ffffff guibg=#1c1c1c ctermfg=231  ctermbg=234  gui=NONE cterm=NONE
hi shHereDoc10          guisp=NONE guifg=#ffffff guibg=#1c1c1c ctermfg=231  ctermbg=234  gui=NONE cterm=NONE
hi shHereDoc11          guisp=NONE guifg=#ffffff guibg=#1c1c1c ctermfg=231  ctermbg=234  gui=NONE cterm=NONE
hi shHereDoc12          guisp=NONE guifg=#ffffff guibg=#1c1c1c ctermfg=231  ctermbg=234  gui=NONE cterm=NONE
hi shHereDoc13          guisp=NONE guifg=#ffffff guibg=#1c1c1c ctermfg=231  ctermbg=234  gui=NONE cterm=NONE
hi shHereDoc14          guisp=NONE guifg=#ffffff guibg=#1c1c1c ctermfg=231  ctermbg=234  gui=NONE cterm=NONE
hi shHereDoc15          guisp=NONE guifg=#ffffff guibg=#1c1c1c ctermfg=231  ctermbg=234  gui=NONE cterm=NONE
hi shHereDoc16          guisp=NONE guifg=#ffffff guibg=#1c1c1c ctermfg=231  ctermbg=234  gui=NONE cterm=NONE

" misc

hi ColorColumn      guisp=NONE guifg=#ffffff guibg=#1c1c1c ctermfg=231 ctermbg=234 gui=NONE cterm=NONE
hi Conceal          guisp=NONE guifg=#ffffff guibg=#1c1c1c ctermfg=231 ctermbg=234 gui=NONE cterm=NONE
hi Cursor           guisp=NONE guifg=#ffffff guibg=#1c1c1c ctermfg=231 ctermbg=234 gui=NONE cterm=NONE
hi lCursor          guisp=NONE guifg=#ffffff guibg=#1c1c1c ctermfg=231 ctermbg=234 gui=NONE cterm=NONE
hi CursorIM         guisp=NONE guifg=#ffffff guibg=#1c1c1c ctermfg=231 ctermbg=234 gui=NONE cterm=NONE
hi CursorColumn     guisp=NONE guifg=#ffffff guibg=#1c1c1c ctermfg=231 ctermbg=234 gui=NONE cterm=NONE
hi CursorLine       guisp=NONE guifg=#ffffff guibg=#1c1c1c ctermfg=231 ctermbg=234 gui=NONE cterm=NONE
hi Directory        guisp=NONE guifg=#ffffff guibg=#1c1c1c ctermfg=231 ctermbg=234 gui=NONE cterm=NONE
hi DiffAdd          guisp=NONE guifg=#ffffff guibg=#1c1c1c ctermfg=231 ctermbg=234 gui=NONE cterm=NONE
hi DiffChange       guisp=NONE guifg=#ffffff guibg=#1c1c1c ctermfg=231 ctermbg=234 gui=NONE cterm=NONE
hi DiffDelete       guisp=NONE guifg=#ffffff guibg=#1c1c1c ctermfg=231 ctermbg=234 gui=NONE cterm=NONE
hi DiffText         guisp=NONE guifg=#ffffff guibg=#1c1c1c ctermfg=231 ctermbg=234 gui=NONE cterm=NONE
hi EndOfBuffer      guisp=NONE guifg=#ffffff guibg=#1c1c1c ctermfg=231 ctermbg=234 gui=NONE cterm=NONE
hi ErrorMsg         guisp=NONE guifg=#ffffff guibg=#1c1c1c ctermfg=231 ctermbg=234 gui=NONE cterm=NONE
hi VertSplit        guisp=NONE guifg=#ffffff guibg=#1c1c1c ctermfg=231 ctermbg=234 gui=NONE cterm=NONE
hi Folded           guisp=NONE guifg=#ffffff guibg=#1c1c1c ctermfg=231 ctermbg=234 gui=NONE cterm=NONE
hi FoldColumn       guisp=NONE guifg=#ffffff guibg=#1c1c1c ctermfg=231 ctermbg=234 gui=NONE cterm=NONE
hi SignColumn       guisp=NONE guifg=#ffffff guibg=#1c1c1c ctermfg=231 ctermbg=234 gui=NONE cterm=NONE
hi IncSearch        guisp=NONE guifg=#ffffff guibg=#1c1c1c ctermfg=231 ctermbg=234 gui=NONE cterm=NONE
hi LineNr           guisp=NONE guifg=#6c6c6c guibg=#1c1c1c ctermfg=242 ctermbg=234 gui=NONE cterm=NONE
hi LineNrAbove      guisp=NONE guifg=#ffffff guibg=#1c1c1c ctermfg=231 ctermbg=234 gui=NONE cterm=NONE
hi LineNrBelow      guisp=NONE guifg=#ffffff guibg=#1c1c1c ctermfg=231 ctermbg=234 gui=NONE cterm=NONE
hi CursorLineNr     guisp=NONE guifg=#ffffff guibg=#1c1c1c ctermfg=231 ctermbg=234 gui=NONE cterm=NONE
hi MatchParen       guisp=NONE guifg=#ffffff guibg=#1c1c1c ctermfg=231 ctermbg=234 gui=NONE cterm=NONE
hi ModeMsg          guisp=NONE guifg=#ffffff guibg=#1c1c1c ctermfg=231 ctermbg=234 gui=NONE cterm=NONE
hi MoreMsg          guisp=NONE guifg=#ffffff guibg=#1c1c1c ctermfg=231 ctermbg=234 gui=NONE cterm=NONE
hi NonText          guisp=NONE guifg=#ffffff guibg=#1c1c1c ctermfg=231 ctermbg=234 gui=NONE cterm=NONE
hi Pmenu            guisp=NONE guifg=#ffffff guibg=#1c1c1c ctermfg=231 ctermbg=234 gui=NONE cterm=NONE
hi PmenuSel         guisp=NONE guifg=#ffffff guibg=#1c1c1c ctermfg=231 ctermbg=234 gui=NONE cterm=NONE
hi PmenuSbar        guisp=NONE guifg=#ffffff guibg=#1c1c1c ctermfg=231 ctermbg=234 gui=NONE cterm=NONE
hi PmenuThumb       guisp=NONE guifg=#ffffff guibg=#1c1c1c ctermfg=231 ctermbg=234 gui=NONE cterm=NONE
hi Question         guisp=NONE guifg=#ffffff guibg=#1c1c1c ctermfg=231 ctermbg=234 gui=NONE cterm=NONE
hi QuickFixLine     guisp=NONE guifg=#ffffff guibg=#1c1c1c ctermfg=231 ctermbg=234 gui=NONE cterm=NONE
hi Search           guisp=NONE guifg=#ffffff guibg=#1c1c1c ctermfg=231 ctermbg=234 gui=NONE cterm=NONE
hi SpecialKey       guisp=NONE guifg=#ffffff guibg=#1c1c1c ctermfg=231 ctermbg=234 gui=NONE cterm=NONE
hi SpellBad         guisp=NONE guifg=#ffffff guibg=#1c1c1c ctermfg=231 ctermbg=234 gui=NONE cterm=NONE
hi SpellCap         guisp=NONE guifg=#ffffff guibg=#1c1c1c ctermfg=231 ctermbg=234 gui=NONE cterm=NONE
hi SpellLocal       guisp=NONE guifg=#ffffff guibg=#1c1c1c ctermfg=231 ctermbg=234 gui=NONE cterm=NONE
hi SpellRare        guisp=NONE guifg=#ffffff guibg=#1c1c1c ctermfg=231 ctermbg=234 gui=NONE cterm=NONE
hi StatusLine       guisp=NONE guifg=#ffffff guibg=#1c1c1c ctermfg=231 ctermbg=234 gui=NONE cterm=NONE
hi StatusLineNC     guisp=NONE guifg=#ffffff guibg=#1c1c1c ctermfg=231 ctermbg=234 gui=NONE cterm=NONE
hi StatusLineTerm   guisp=NONE guifg=#ffffff guibg=#1c1c1c ctermfg=231 ctermbg=234 gui=NONE cterm=NONE
hi StatusLineTermNC guisp=NONE guifg=#ffffff guibg=#1c1c1c ctermfg=231 ctermbg=234 gui=NONE cterm=NONE
hi TabLine          guisp=NONE guifg=#ffffff guibg=#1c1c1c ctermfg=231 ctermbg=234 gui=NONE cterm=NONE
hi TabLineFill      guisp=NONE guifg=#ffffff guibg=#1c1c1c ctermfg=231 ctermbg=234 gui=NONE cterm=NONE
hi TabLineSel       guisp=NONE guifg=#ffffff guibg=#1c1c1c ctermfg=231 ctermbg=234 gui=NONE cterm=NONE
hi Terminal         guisp=NONE guifg=#ffffff guibg=#1c1c1c ctermfg=231 ctermbg=234 gui=NONE cterm=NONE
hi Title            guisp=NONE guifg=#ffffff guibg=#1c1c1c ctermfg=231 ctermbg=234 gui=NONE cterm=NONE
hi Visual           guisp=NONE guifg=#ffffff guibg=#1c1c1c ctermfg=231 ctermbg=234 gui=NONE cterm=NONE
hi VisualNOS        guisp=NONE guifg=#ffffff guibg=#1c1c1c ctermfg=231 ctermbg=234 gui=NONE cterm=NONE
hi WarningMsg       guisp=NONE guifg=#ffffff guibg=#1c1c1c ctermfg=231 ctermbg=234 gui=NONE cterm=NONE
hi WildMenu         guisp=NONE guifg=#ffffff guibg=#1c1c1c ctermfg=231 ctermbg=234 gui=NONE cterm=NONE

" major

hi Normal     guisp=NONE guifg=#ffffff guibg=#1c1c1c ctermfg=231  ctermbg=234  gui=NONE cterm=NONE
hi Comment    guisp=NONE guifg=#ffffff guibg=#1c1c1c ctermfg=231  ctermbg=234  gui=NONE cterm=NONE
hi Constant   guisp=NONE guifg=#ffffff guibg=#1c1c1c ctermfg=231  ctermbg=234  gui=NONE cterm=NONE
hi Identifier guisp=NONE guifg=#87af87 guibg=#1c1c1c ctermfg=108  ctermbg=234  gui=NONE cterm=NONE
hi Statement  guisp=NONE guifg=NONE    guibg=NONE    ctermfg=NONE ctermbg=NONE gui=NONE cterm=NONE
hi PreProc    guisp=NONE guifg=#d7af5f guibg=#1c1c1c ctermfg=179  ctermbg=234  gui=NONE cterm=NONE
hi Type       guisp=NONE guifg=#ffffff guibg=#1c1c1c ctermfg=231  ctermbg=234  gui=NONE cterm=NONE
hi Special    guisp=NONE guifg=#8787af guibg=NONE    ctermfg=103  ctermbg=NONE gui=NONE cterm=NONE
hi Underlined guisp=NONE guifg=#ffffff guibg=#1c1c1c ctermfg=231  ctermbg=234  gui=NONE cterm=NONE
hi Ignore     guisp=NONE guifg=#ffffff guibg=#1c1c1c ctermfg=231  ctermbg=234  gui=NONE cterm=NONE
hi Error      guisp=NONE guifg=#ffffff guibg=#1c1c1c ctermfg=231  ctermbg=234  gui=NONE cterm=NONE
hi Todo       guisp=NONE guifg=#ffffff guibg=#1c1c1c ctermfg=231  ctermbg=234  gui=NONE cterm=NONE

" minor

hi String         guisp=NONE guifg=#90e332 guibg=NONE    ctermfg=113 ctermbg=NONE gui=NONE cterm=NONE
hi Character      guisp=NONE guifg=#ffffff guibg=#1c1c1c ctermfg=231 ctermbg=234  gui=NONE cterm=NONE
hi Number         guisp=NONE guifg=#5f5fff guibg=#1c1c1c ctermfg=63  ctermbg=234  gui=NONE cterm=NONE
hi Boolean        guisp=NONE guifg=#ffffff guibg=#1c1c1c ctermfg=231 ctermbg=234  gui=NONE cterm=NONE
hi Float          guisp=NONE guifg=#ffffff guibg=#1c1c1c ctermfg=231 ctermbg=234  gui=NONE cterm=NONE
hi Function       guisp=NONE guifg=#5f5fff guibg=#1c1c1c ctermfg=63  ctermbg=234  gui=NONE cterm=NONE
hi Conditional    guisp=NONE guifg=#5f87d7 guibg=#1c1c1c ctermfg=68  ctermbg=234  gui=NONE cterm=NONE
hi Repeat         guisp=NONE guifg=#ffffff guibg=#1c1c1c ctermfg=231 ctermbg=234  gui=NONE cterm=NONE
hi Label          guisp=NONE guifg=#ffffff guibg=#1c1c1c ctermfg=231 ctermbg=234  gui=NONE cterm=NONE
hi Operator       guisp=NONE guifg=#87af00 guibg=#1c1c1c ctermfg=106 ctermbg=234  gui=NONE cterm=NONE
hi Keyword        guisp=NONE guifg=#ffffff guibg=#1c1c1c ctermfg=231 ctermbg=234  gui=NONE cterm=NONE
hi Exception      guisp=NONE guifg=#ffffff guibg=#1c1c1c ctermfg=231 ctermbg=234  gui=NONE cterm=NONE
hi Include        guisp=NONE guifg=#ffffff guibg=#1c1c1c ctermfg=231 ctermbg=234  gui=NONE cterm=NONE
hi Define         guisp=NONE guifg=#ffffff guibg=#1c1c1c ctermfg=231 ctermbg=234  gui=NONE cterm=NONE
hi Macro          guisp=NONE guifg=#ffffff guibg=#1c1c1c ctermfg=231 ctermbg=234  gui=NONE cterm=NONE
hi PreCondit      guisp=NONE guifg=#ffffff guibg=#1c1c1c ctermfg=231 ctermbg=234  gui=NONE cterm=NONE
hi StorageClass   guisp=NONE guifg=#ffffff guibg=#1c1c1c ctermfg=231 ctermbg=234  gui=NONE cterm=NONE
hi Structure      guisp=NONE guifg=#ffffff guibg=#1c1c1c ctermfg=231 ctermbg=234  gui=NONE cterm=NONE
hi Typedef        guisp=NONE guifg=#ffffff guibg=#1c1c1c ctermfg=231 ctermbg=234  gui=NONE cterm=NONE
hi SpecialChar    guisp=NONE guifg=#ffffff guibg=#1c1c1c ctermfg=231 ctermbg=234  gui=NONE cterm=NONE
hi Tag            guisp=NONE guifg=#ffffff guibg=#1c1c1c ctermfg=231 ctermbg=234  gui=NONE cterm=NONE
hi Delimiter      guisp=NONE guifg=#ffffff guibg=#1c1c1c ctermfg=231 ctermbg=234  gui=NONE cterm=NONE
hi SpecialComment guisp=NONE guifg=#ffffff guibg=#1c1c1c ctermfg=231 ctermbg=234  gui=NONE cterm=NONE
hi Debug          guisp=NONE guifg=#ffffff guibg=#1c1c1c ctermfg=231 ctermbg=234  gui=NONE cterm=NONE

