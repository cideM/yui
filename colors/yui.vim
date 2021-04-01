" black                   #72645f
" black2                  #85766F
" red                     #d50711
" green                   #336f15
" blue                    #125ea9
" green_background        #e8ffd1
" green_foreground        #408000
" orange                  #E44C22
" red_background          #ffe0e0
" red_foreground          #a7111d
" yellow_background       #f9ffa3
" yellow_foreground       #7b6a3d
" purple_background       #5438DC
" purple_foreground       #DCD7F9
" blue_background         #e0f3ff
" blue_foreground         #00588f
" white                   #efeae5
" brightblack             #9f918c
" brightwhite             #ffffff
" brown2                  #eae0d6
" statusline_nc           #F7F3F3
" magenta                 #9600CC
" cyan                    #007575
" brightestblack          #c0a49b

set background=light

if !has('gui_running') && &t_Co < 256 && !has('nvim')
  finish
endif

hi clear
if exists('syntax_on')
  syntax reset
endif

let g:colors_name = 'yui'

if has('nvim')
  let g:terminal_color_0 = '#72645f'
  let g:terminal_color_1 = '#d50711'
  let g:terminal_color_2 = '#336f15'
  let g:terminal_color_3 = '#7b6a3d'
  let g:terminal_color_4 = '#00588f'
  let g:terminal_color_5 = '#9600CC'
  let g:terminal_color_6 = '#007575'
  let g:terminal_color_7 = '#efeae5'
  let g:terminal_color_8 = '#72645f'
  let g:terminal_color_9 = '#d50711'
  let g:terminal_color_10 = '#336f15'
  let g:terminal_color_11 = '#7b6a3d'
  let g:terminal_color_12 = '#00588f'
  let g:terminal_color_13 = '#9600CC'
  let g:terminal_color_14 = '#007575'
  let g:terminal_color_15 = '#efeae5'
else
  let g:terminal_ansi_colors = [
	\'#72645f', 
	\'#d50711', 
	\'#336f15', 
	\'#7b6a3d',
	\'#00588f',
	\'#9600CC',
	\'#007575',
	\'#efeae5',
	\'#72645f',
	\'#d50711',
	\'#336f15',
	\'#7b6a3d',
	\'#00588f',
	\'#9600CC',
	\'#007575',
	\'#efeae5']
endif

hi Normal            guifg=#72645f guibg=#efeae5 guisp=NONE gui=NONE           cterm=NONE
hi ColorColumn       guifg=#72645f guibg=NONE    guisp=NONE gui=NONE           cterm=NONE
hi Conceal           guifg=#9f918c guibg=NONE    guisp=NONE gui=NONE           cterm=NONE
hi Constant          guifg=#72645f guibg=NONE    guisp=NONE gui=bold           cterm=bold
hi CursorColumn      guifg=NONE    guibg=#ffffff guisp=NONE gui=NONE           cterm=NONE
hi Cursor            guifg=NONE    guibg=#72645f guisp=NONE gui=NONE           cterm=NONE
hi CursorIM          guifg=NONE    guibg=fg      guisp=NONE gui=NONE           cterm=NONE
hi CursorLine        guifg=NONE    guibg=#ffffff guisp=NONE gui=NONE           cterm=NONE
hi CursorLineNr      guifg=NONE    guibg=#ffffff guisp=NONE gui=NONE           cterm=NONE
hi DiffAdd           guifg=#408000 guibg=#e8ffd1 guisp=NONE gui=NONE           cterm=NONE
hi DiffChange        guifg=#7b6a3d guibg=#f9ffa3 guisp=NONE gui=NONE           cterm=NONE
hi DiffDelete        guifg=#a7111d guibg=#ffe0e0 guisp=NONE gui=NONE           cterm=NONE
hi DiffText          guifg=#00588f guibg=#e0f3ff guisp=NONE gui=NONE           cterm=NONE
hi Directory         guifg=#72645f guibg=NONE    guisp=NONE gui=NONE           cterm=NONE
hi DirvishArg        guifg=NONE    guibg=NONE    guisp=NONE gui=underline      ctermfg=NONE ctermbg=NONE cterm=underline
hi DirvishPathTail   guifg=NONE    guibg=NONE    guisp=NONE gui=bold           ctermfg=NONE ctermbg=NONE cterm=bold
hi Error             guifg=#a7111d guibg=#ffe0e0 guisp=NONE gui=NONE           cterm=NONE
hi ErrorMsg          guifg=#a7111d guibg=#ffe0e0 guisp=NONE gui=NONE           cterm=NONE
hi helpHyperTextJump guifg=#72645f guibg=#efeae5 guisp=NONE gui=underline      cterm=underline
hi Identifier        guifg=#72645f guibg=NONE    guisp=NONE gui=NONE           cterm=NONE
hi Ignore            guifg=#72645f guibg=NONE    guisp=NONE gui=NONE           cterm=NONE
hi IncSearch         guifg=#DCD7F9 guibg=#5438DC guisp=NONE gui=NONE           cterm=NONE
hi InfoMsg           guifg=#5438DC guibg=#DCD7F9 guisp=NONE gui=NONE           cterm=NONE
hi markdownBold      guifg=#72645f guibg=NONE    guisp=NONE gui=bold           cterm=bold
hi markdownUrl       guifg=#72645f guibg=NONE    guisp=NONE gui=underline      cterm=underline
hi MatchParen        guifg=NONE    guibg=NONE    guisp=NONE gui=bold,underline ctermfg=NONE ctermbg=NONE cterm=bold,underline
hi mkdHeading        guifg=#72645f guibg=NONE    guisp=NONE gui=bold           cterm=bold
hi mkdItalic         guifg=#72645f guibg=NONE    guisp=NONE gui=italic         cterm=italic
hi ModeMsg           guifg=#72645f guibg=NONE    guisp=NONE gui=NONE           cterm=NONE
hi MoreMsg           guifg=#72645f guibg=NONE    guisp=NONE gui=NONE           cterm=NONE
hi NonText           guifg=#72645f guibg=NONE    guisp=NONE gui=NONE           cterm=NONE
hi Pmenu             guifg=#72645f guibg=#ffffff guisp=NONE gui=NONE           cterm=NONE
hi PmenuSbar         guifg=#72645f guibg=#ffffff guisp=NONE gui=NONE           cterm=NONE
hi PmenuThumb        guifg=NONE    guibg=#e8ffd1 guisp=NONE gui=NONE           cterm=NONE
hi PreProc           guifg=#72645f guibg=NONE    guisp=NONE gui=NONE           cterm=NONE
hi Question          guifg=#72645f guibg=NONE    guisp=NONE gui=NONE           cterm=NONE
hi Search            guifg=#5438DC guibg=#DCD7F9 guisp=NONE gui=NONE           cterm=NONE
hi Special           guifg=#72645f guibg=NONE    guisp=NONE gui=NONE           cterm=NONE
hi SpecialKey        guifg=#c0a49b guibg=NONE    guisp=NONE gui=NONE           cterm=NONE
hi SpellBad          guifg=#a7111d guibg=#ffe0e0 guisp=NONE gui=NONE           cterm=NONE
hi SpellCap          guifg=NONE    guibg=NONE    guisp=NONE gui=undercurl      ctermfg=NONE ctermbg=NONE cterm=undercurl
hi SpellLocal        guifg=#72645f guibg=NONE    guisp=NONE gui=NONE           cterm=NONE
hi SpellRare         guifg=#72645f guibg=NONE    guisp=NONE gui=NONE           cterm=NONE
hi Statement         guifg=#72645f guibg=NONE    guisp=NONE gui=NONE           cterm=NONE
hi StatusLine        guifg=#72645f guibg=#ffffff guisp=NONE gui=NONE           cterm=NONE
hi StatusLineNC      guifg=#72645f guibg=#F7F3F3 guisp=NONE gui=NONE           cterm=NONE
hi TabLineFill       guifg=NONE    guibg=#ffffff guisp=NONE gui=NONE           cterm=NONE
hi Terminal          guifg=#72645f guibg=#efeae5 guisp=NONE gui=NONE           cterm=NONE
hi Title             guifg=NONE    guibg=NONE    guisp=NONE gui=NONE           ctermfg=NONE ctermbg=NONE cterm=NONE
hi Todo              guifg=NONE    guibg=NONE    guisp=NONE gui=underline      ctermfg=NONE ctermbg=NONE cterm=underline
hi ToolbarButton     guifg=#72645f guibg=NONE    guisp=NONE gui=NONE           cterm=NONE
hi ToolbarLine       guifg=NONE    guibg=NONE    guisp=NONE gui=NONE           ctermfg=NONE ctermbg=NONE cterm=NONE
hi Type              guifg=NONE    guibg=NONE    guisp=NONE gui=NONE           ctermfg=NONE ctermbg=NONE cterm=NONE
hi Underlined        guifg=#72645f guibg=NONE    guisp=NONE gui=NONE           cterm=NONE
hi VertSplit         guifg=#9f918c guibg=NONE    guisp=NONE gui=NONE           cterm=NONE
hi Visual            guifg=NONE    guibg=#ffffff guisp=NONE gui=NONE           cterm=NONE
hi VisualNOS         guifg=NONE    guibg=#ffffff guisp=NONE gui=NONE           cterm=NONE
hi WarningMsg        guifg=#7b6a3d guibg=#f9ffa3 guisp=NONE gui=NONE           cterm=NONE
hi WhichKeySeperator guifg=#72645f guibg=NONE    guisp=NONE gui=NONE           cterm=NONE
hi Whitespace        guifg=#c0a49b guibg=NONE    guisp=NONE gui=NONE           cterm=NONE
hi WildMenu          guifg=#408000 guibg=#e8ffd1 guisp=NONE gui=NONE           cterm=NONE

let comments = get(g:, 'yui_comments', 'normal')
if comments ==? 'emphasize' || get(g:, 'yui_emphasized_comments', 0)
  hi Comment ctermfg=196 ctermbg=NONE guifg=#E44C22 guibg=NONE guisp=NONE gui=italic cterm=italic
elseif comments ==? 'fade'
  hi Comment ctermfg=181 ctermbg=NONE guifg=#c0a49b guibg=NONE guisp=NONE gui=italic cterm=italic
elseif comments ==? 'normal'
  hi Comment ctermfg=241 ctermbg=NONE guifg=#c0a49b guibg=NONE guisp=NONE gui=italic cterm=italic
endif

let folds = get(g:, 'yui_folds', 'fade')
if folds ==? 'emphasize'
  hi FoldColumn ctermfg=243 ctermbg=254 guifg=#85766F guibg=#eae0d6 guisp=NONE gui=NONE cterm=NONE
  hi Folded ctermfg=243 ctermbg=254 guifg=#85766F guibg=#eae0d6 guisp=NONE gui=NONE cterm=NONE
elseif folds ==? 'fade'
  hi FoldColumn ctermfg=181 ctermbg=NONE guifg=#c0a49b guibg=NONE guisp=NONE gui=NONE cterm=NONE
  hi Folded ctermfg=181 ctermbg=NONE guifg=#c0a49b guibg=NONE guisp=NONE gui=NONE cterm=NONE
endif

let linenr = get(g:, 'yui_line_numbers', 'fade')
if linenr ==? 'emphasize'
  hi SignColumn ctermfg=243 ctermbg=254 guifg=#85766F guibg=#eae0d6 guisp=NONE gui=NONE cterm=NONE
  hi LineNr ctermfg=243 ctermbg=254 guifg=#85766F guibg=#eae0d6 guisp=NONE gui=NONE cterm=NONE
elseif linenr ==? 'fade'
  hi SignColumn ctermfg=241 ctermbg=255 guifg=#72645f guibg=#efeae5 guisp=NONE gui=NONE cterm=NONE
  hi LineNr ctermfg=181 ctermbg=NONE guifg=#c0a49b guibg=NONE guisp=NONE gui=NONE cterm=NONE
endif

hi! link EndOfBuffer                                NonText
hi! link QuickFixLine                                Search
hi! link Boolean                                   Constant
hi! link Character                                 Constant
hi! link Conditional                              Statement
hi! link Define                                     PreProc
hi! link Debug                                      Special
hi! link Delimiter                                  Special
hi! link Exception                                Statement
hi! link Float                                       Number
hi! link Function                                Identifier
hi! link Include                                    PreProc
hi! link Keyword                                  Statement
hi! link Label                                    Statement
hi! link Macro                                      PreProc
hi! link Number                                    Constant
hi! link Operator                                 Statement
hi! link PreCondit                                  PreProc
hi! link Repeat                                   Statement
hi! link SpecialChar                                Special
hi! link SpecialComment                             Special
hi! link StorageClass                                  Type
hi! link String                                    Constant
hi! link Structure                                     Type
hi! link Tag                                        Special
hi! link Typedef                                       Type
hi! link diffAdded                                  DiffAdd
hi! link diffChanged                             DiffChange
hi! link diffRemoved                             DiffDelete
hi! link diffComment                                Comment
hi! link PmenuSel                                  WildMenu
hi! link StatusLineTerm                          StatusLine
hi! link StatusLineTermNC                      StatusLineNC
hi! link TabLine                                 StatusLine
hi! link TabLineSel                                WildMenu
hi! link lCursor                                     Cursor
hi! link jsParensError                               Normal
hi! link mkdCode                                     Normal
hi! link mkdCodeDelimiter                            Normal
hi! link markdownItalic                           mkdItalic
hi! link markdownLinkText                            Normal
hi! link markdownH1                              mkdHeading
hi! link markdownH2                              mkdHeading
hi! link markdownH3                              mkdHeading
hi! link markdownH4                              mkdHeading
hi! link LspDiagnosticsError                    NormalFloat
hi! link LspDiagnosticsErrorSign                   ErrorMsg
hi! link LspDiagnosticsErrorSignFloating        NormalFloat
hi! link LspDiagnosticsWarning                  NormalFloat
hi! link LspDiagnosticsWarningSign               WarningMsg
hi! link LspDiagnosticsWarningSignFloating      NormalFloat
hi! link LspDiagnosticsHint                     NormalFloat
hi! link LspDiagnosticsHintSign                     InfoMsg
hi! link LspDiagnosticsHintSignFloating         NormalFloat
hi! link LspDiagnosticsInformation              NormalFloat
hi! link LspDiagnosticsInformationSign              InfoMsg
hi! link LspDiagnosticsInformationSignFloating  NormalFloat
hi! link helpExample                                 Normal
hi! link helpCommand                               Constant
hi! link helpBacktick                              Constant
hi! link WhichKeyFloating                             Pmenu
