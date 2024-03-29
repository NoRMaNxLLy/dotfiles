" wal.vim -- Vim color scheme.
" Author:       Dylan Araps
" Webpage:      https://github.com/dylanaraps/wal
" Description:  A colorscheme that uses your terminal colors, made to work with 'wal'.

hi clear
set background=dark

if exists('syntax_on')
    syntax reset
endif

" Colorscheme name
let g:colors_name = 'TNC'


" set t_Co=16
hi Normal               ctermbg=NONE            ctermfg=15
hi NonText              ctermbg=NONE            ctermfg=7
hi Comment              ctermbg=NONE            ctermfg=12
hi Conceal              ctermbg=NONE
hi Constant             ctermbg=NONE            ctermfg=3
hi Error                ctermbg=1               ctermfg=7
"hi Identifier           ctermbg=NONE            ctermfg=4           cterm=BOLD
hi Identifier           ctermbg=NONE            ctermfg=15            cterm=NONE
hi Ignore               ctermbg=8               ctermfg=0
hi PreProc              ctermbg=NONE            ctermfg=15
hi Special              ctermbg=NONE            ctermfg=7
hi Statement            ctermbg=NONE            ctermfg=7
hi String               ctermbg=NONE            ctermfg=2
hi Number               ctermbg=NONE            ctermfg=3
hi Todo                 ctermbg=NONE            ctermfg=7
hi Type                 ctermbg=NONE            ctermfg=7
hi Underlined           ctermbg=NONE            ctermfg=1           cterm=underline
hi StatusLine           ctermbg=NONE            ctermfg=245         cterm=NONE
hi StatusLineNC         ctermbg=8               ctermfg=0
hi TabLine              ctermbg=NONE            ctermfg=8
hi TabLineFill          ctermbg=NONE            ctermfg=8
hi TabLineSel           ctermbg=4               ctermfg=0
hi TermCursorNC         ctermbg=3               ctermfg=0
hi VertSplit            ctermbg=8               ctermfg=0
hi Title                ctermbg=NONE            ctermfg=4
hi CursorLine           ctermbg=0               ctermfg=NONE        cterm=NONE
hi LineNr               ctermbg=NONE            ctermfg=240
hi CursorLineNr         ctermbg=0               ctermfg=7           cterm=NONE
hi helpLeadBlank        ctermbg=NONE            ctermfg=7
hi helpNormal           ctermbg=NONE            ctermfg=7
hi Visual               ctermbg=NONE            ctermfg=14      "cterm=reverse term=reverse
hi VisualNOS            ctermbg=NONE            ctermfg=1
hi Pmenu                ctermbg=8               ctermfg=7
hi PmenuSbar            ctermbg=6               ctermfg=7
hi PmenuSel             ctermbg=4               ctermfg=0
hi PmenuThumb           ctermbg=8               ctermfg=8
hi FoldColumn           ctermbg=NONE		    ctermfg=7
hi Folded               ctermbg=NONE            ctermfg=8
hi WildMenu			    ctermbg=2               ctermfg=0
hi SpecialKey			ctermbg=NONE            ctermfg=8
hi DiffAdd			    ctermbg=NONE            ctermfg=2
hi DiffChange			ctermbg=NONE            ctermfg=8
hi DiffDelete			ctermbg=NONE            ctermfg=1
hi DiffText			    ctermbg=NONE            ctermfg=4
hi IncSearch			ctermbg=13              ctermfg=0
hi Search			    ctermbg=13              ctermfg=0
hi Directory			ctermbg=NONE            ctermfg=4
hi MatchParen			ctermbg=13              ctermfg=0
hi ColorColumn			ctermbg=235             ctermfg=NONE
hi signColumn			ctermbg=NONE            ctermfg=4
hi ErrorMsg			    ctermbg=NONE            ctermfg=9
hi MoreMsg			    ctermbg=NONE            ctermfg=2
hi Question			    ctermbg=NONE            ctermfg=4
hi WarningMsg			ctermbg=NONE            ctermfg=9
hi Cursor			    ctermbg=NONE            ctermfg=8
hi Structure			ctermbg=NONE            ctermfg=5
hi CursorColumn			ctermbg=8               ctermfg=7
hi ModeMsg			    ctermbg=NONE            ctermfg=15
hi SpellBad             ctermbg=NONE            ctermfg=1 cterm=underline
hi SpellCap             ctermbg=NONE            ctermfg=4 cterm=underline
hi SpellLocal           ctermbg=NONE            ctermfg=5 cterm=underline
hi SpellRare            ctermbg=NONE            ctermfg=6 cterm=underline
hi Boolean              ctermbg=NONE            ctermfg=5
hi Character            ctermbg=NONE            ctermfg=10
hi Conditional          ctermbg=NONE            ctermfg=7
hi Define               ctermbg=NONE            ctermfg=5
hi Delimiter            ctermbg=NONE            ctermfg=15
hi Float                ctermbg=NONE            ctermfg=5
hi Include              ctermbg=NONE            ctermfg=4
hi Keyword              ctermbg=NONE            ctermfg=5
hi Label                ctermbg=NONE            ctermfg=7
hi Operator             ctermbg=NONE            ctermfg=10
hi Repeat               ctermbg=NONE            ctermfg=15
hi SpecialChar          ctermbg=NONE            ctermfg=13
hi Tag                  ctermbg=NONE            ctermfg=3
hi Typedef              ctermbg=NONE            ctermfg=3

" VimScript
hi vimUserCommand       ctermbg=NONE            ctermfg=7 cterm=BOLD
hi link vimMap vimUserCommand
hi link vimLet vimUserCommand
hi link vimCommand vimUserCommand
hi link vimFTCmd vimUserCommand
hi link vimAutoCmd vimUserCommand
hi link vimNotFunc vimUserCommand
hi vimNotation          ctermbg=NONE            ctermfg=4
hi vimMapModKey         ctermbg=NONE            ctermfg=4
hi vimBracket           ctermbg=NONE            ctermfg=7
hi vimCommentString     ctermbg=NONE            ctermfg=8


" HTML and CSS
hi htmlLink             ctermbg=NONE            ctermfg=1 cterm=underline
hi htmlBold             ctermbg=NONE            ctermfg=3 cterm=BOLD
hi htmlItalic           ctermbg=NONE            ctermfg=5
hi htmlEndTag           ctermbg=NONE            ctermfg=7
hi htmlTag              ctermbg=NONE            ctermfg=7
hi htmlTagName          ctermbg=NONE            ctermfg=1 cterm=BOLD
hi htmlH1               ctermbg=NONE            ctermfg=7
hi link htmlH2 htmlH1
hi link htmlH3 htmlH1
hi link htmlH4 htmlH1
hi link htmlH5 htmlH1
hi link htmlH6 htmlH1
hi cssMultiColumnAttr   ctermbg=NONE            ctermfg=2
hi link cssFontAttr cssMultiColumnAttr
hi link cssFlexibleBoxAttr cssMultiColumnAttr
hi cssBraces            ctermbg=NONE            ctermfg=7
hi link cssAttrComma cssBraces
hi cssValueLength       ctermbg=NONE            ctermfg=7
hi cssUnitDecorators    ctermbg=NONE            ctermfg=7
hi cssValueNumber       ctermbg=NONE            ctermfg=7
hi link cssValueLength cssValueNumber
hi cssNoise             ctermbg=NONE            ctermfg=7
hi cssTagName           ctermbg=NONE            ctermfg=1
hi cssFunctionName      ctermbg=NONE            ctermfg=4


" markdown
hi markdownH1Delimiter  ctermbg=1               ctermfg=1
hi markdownH2Delimiter  ctermbg=2               ctermfg=2
hi markdownH3Delimiter  ctermbg=3               ctermfg=3
hi markdownH4Delimiter  ctermbg=4               ctermfg=4
hi markdownH5Delimiter  ctermbg=5               ctermfg=5
hi markdownH6Delimiter  ctermbg=6               ctermfg=6
hi markdownH1           ctermbg=1               ctermfg=0
hi markdownH2           ctermbg=2               ctermfg=0
hi markdownH3           ctermbg=3               ctermfg=0
hi markdownH4           ctermbg=4               ctermfg=0
hi markdownH5           ctermbg=5               ctermfg=0
hi markdownH6           ctermbg=6               ctermfg=0
hi markdownAutomaticLink ctermbg=NONE           ctermfg=2 cterm=underline
hi markdownError        ctermbg=NONE            ctermfg=7
hi markdownCode         ctermbg=NONE            ctermfg=6
hi markdownCodeBlock    ctermbg=NONE            ctermfg=6
hi markdownCodeDelimiter ctermbg=NONE           ctermfg=6
hi markdownItalic       ctermbg=NONE            ctermfg=12   cterm=Italic
hi markdownItalicDelimiter  ctermbg=NONE        ctermfg=15
hi markdownBold         ctermbg=NONE            ctermfg=13   cterm=Bold
hi markdownBoldDelimiter  ctermbg=NONE        ctermfg=15
hi markdownListMarker   ctermbg=NONE            ctermfg=4
hi markdownLinkTextDelimiter    ctermbg=NONE    ctermfg=15
hi markdownLinkText     ctermbg=NONE            ctermfg=4
hi markdownUrl          ctermbg=NONE            ctermfg=4

" python
"hi pythonOperator       ctermbg=NONE            ctermfg=5
"hi pythonFunction       ctermbg=NONE            ctermfg=4
"hi pythonRepeat         ctermbg=NONE            ctermfg=5
"hi pythonStatement      ctermbg=NONE            ctermfg=1 cterm=Bold
"hi pythonBuiltIn        ctermbg=NONE            ctermfg=4

" C, C++
hi cOperator            ctermbg=NONE            ctermfg=7 
hi cPreCondit           ctermbg=NONE            ctermfg=5
hi cRepeat              ctermbg=NONE            ctermfg=7
hi cFormat              ctermbg=NONE            ctermfg=7

hi xdefaultsValue       ctermbg=NONE            ctermfg=7

" Bash and Shell colors
hi shQuote              ctermbg=NONE            ctermfg=10  cterm=BOLD
hi shOperator           ctermbg=NONE            ctermfg=7
hi shOption             ctermbg=NONE            ctermfg=7
hi shfunction           ctermbg=NONE            ctermfg=15
hi shDerefVar           ctermbg=NONE            ctermfg=15
hi link shDerefSimple shDerefVar
hi shVariable           ctermbg=NONE            ctermfg=15
hi shVarassign          ctermbg=NONE            ctermfg=7
hi shderefvarArray      ctermbg=NONE            ctermfg=7
hi shForPP              ctermbg=NONE            ctermfg=15

" other stuff
hi scssSelectorChar     ctermbg=NONE            ctermfg=7
hi scssAttribute        ctermbg=NONE            ctermfg=7
hi link scssDefinition cssNoise
hi sassidChar           ctermbg=NONE            ctermfg=1
hi sassClassChar        ctermbg=NONE            ctermfg=5
hi sassInclude          ctermbg=NONE            ctermfg=5
hi sassMixing           ctermbg=NONE            ctermfg=5
hi sassMixinName        ctermbg=NONE            ctermfg=4
hi javaScript           ctermbg=NONE            ctermfg=7
hi javaScriptBraces     ctermbg=NONE            ctermfg=7
hi javaScriptNumber     ctermbg=NONE            ctermfg=5
