" black2            #7f726c 138 hsl(20°,  8%,   46%)
" black3            #b4aba7 249 hsl(20°,  8%,   68%)
" black             #635954 241 hsl(20°,  8%,   36%) FOREGROUND
" black4            #292523 236 hsl(20°,  8%,   15%)
" green_background  #e8ffd1 193 hsl(90°,  100%, 91%)
" green_foreground  #408000 70  hsl(90°,  100%, 25%)
" orange            #E44C22 166 hsl(13°,  78%,  51%)
" red_background    #ffe0e0 224 hsl(0°,   100%, 94%)
" red_foreground    #a7111d 124 hsl(355°, 82%,  36%)
" yellow_background #f9ffa3 229 hsl(64°,  100%, 82%)
" yellow_foreground #7b6a3d 94  hsl(44°,  34%,  36%)
" purple6           #fdfcfe 189 hsl(270°, 49%,  99%)
" purple5           #DCD7F9 189 hsl(249°, 74%,  91%)
" purple4           #cdc5f6 147 hsl(249,  74%,  87%)
" purple3           #7864e8 99  hsl(249°, 74%,  65%)
" purple            #5137e1 62  hsl(249°, 74%,  55%)
" purple2           #371ec8 19  hsl(249°, 74%,  45%)
" blue_background   #268bd2 195 hsl(203°, 100%, 94%)
" blue_foreground   #e6f2fa 25  hsl(203°, 100%, 28%)
" blue2             #268bd2 33  added with the new lightline plugin, arguably
"                               looks better than the current blue
"                               TODO: use instead of current blue
" blue3             #e6f2fa 195 see above comment
" white5            #fbfaf9 255 hsl(30°,  24%,  98%)
" white             #efeae5 254 hsl(30°,  24%,  92%) BACKGROUND
" white2            #e8e0d9 253 hsl(30°,  24%,  88%)
" white3            #dcd1c6 252 hsl(30°,  24%,  82%)
" white4            #cfbfb0 251 hsl(29°,  24%,  75%)
" cyan              #007575 66  hsl(180°, 100%, 23%)

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
  let g:terminal_color_0 = '#635954'
  let g:terminal_color_1 = '#a7111d'
  let g:terminal_color_2 = '#408000'
  let g:terminal_color_3 = '#7b6a3d'
  let g:terminal_color_4 = '#00588f'
  let g:terminal_color_5 = '#5137e1'
  let g:terminal_color_6 = '#007575'
  let g:terminal_color_7 = '#efeae5'
  let g:terminal_color_8 = '#635954'
  let g:terminal_color_9 = '#a7111d'
  let g:terminal_color_10 = '#408000'
  let g:terminal_color_11 = '#7b6a3d'
  let g:terminal_color_12 = '#00588f'
  let g:terminal_color_13 = '#7864e8'
  let g:terminal_color_14 = '#007575'
  let g:terminal_color_15 = '#efeae5'
else
  let g:terminal_ansi_colors = [
	\'#635954', 
	\'#a7111d', 
	\'#408000', 
	\'#7b6a3d',
	\'#00588f',
	\'#5137e1',
	\'#007575',
	\'#efeae5',
	\'#635954',
	\'#a7111d',
	\'#408000',
	\'#7b6a3d',
	\'#00588f',
	\'#7864e8',
	\'#007575',
	\'#efeae5']
endif

hi   Normal                   guifg=#635954 ctermfg=241  guibg=#efeae5 ctermbg=254  guisp=NONE    gui=NONE      cterm=NONE
hi   ColorColumn              guifg=fg      ctermfg=fg   guibg=#e8e0d9    ctermbg=NONE guisp=NONE    gui=NONE      cterm=NONE
hi   Conceal                  guifg=#cfbfb0 ctermfg=251  guibg=NONE    ctermbg=NONE guisp=NONE    gui=NONE      cterm=NONE
hi   Constant                 guifg=#292523 ctermfg=236  guibg=NONE    ctermbg=NONE guisp=NONE    gui=NONE      cterm=NONE
hi   CursorColumn             guifg=NONE    ctermfg=NONE guibg=#fbfaf9 ctermbg=255  guisp=NONE    gui=NONE      cterm=NONE
hi   Cursor                   guifg=bg      ctermfg=bg   guibg=fg      ctermbg=fg   guisp=NONE    gui=NONE      cterm=NONE
hi   CursorIM                 guifg=NONE    ctermfg=NONE guibg=fg      ctermbg=fg   guisp=NONE    gui=NONE      cterm=NONE
hi   CursorLine               guifg=fg      ctermfg=fg   guibg=#fbfaf9 ctermbg=255  guisp=NONE    gui=NONE      cterm=NONE
hi   CursorLineNr             guifg=fg      ctermfg=fg   guibg=#fbfaf9 ctermbg=255  guisp=NONE    gui=NONE      cterm=NONE
hi   DiffAdd                  guifg=#408000 ctermfg=70   guibg=#e8ffd1 ctermbg=193  guisp=NONE    gui=NONE      cterm=NONE
hi   DiffChange               guifg=#7b6a3d ctermfg=94   guibg=#f9ffa3 ctermbg=229  guisp=NONE    gui=NONE      cterm=NONE
hi   DiffDelete               guifg=#a7111d ctermfg=124  guibg=#ffe0e0 ctermbg=224  guisp=NONE    gui=NONE      cterm=NONE
hi   DiffText                 guifg=#00588f ctermfg=25   guibg=#e0f3ff ctermbg=195  guisp=NONE    gui=NONE      cterm=NONE
hi   Directory                guifg=fg      ctermfg=fg   guibg=NONE    ctermbg=NONE guisp=NONE    gui=NONE      cterm=NONE
hi   Error                    guifg=#a7111d ctermfg=124  guibg=#ffe0e0 ctermbg=224  guisp=NONE    gui=NONE      cterm=NONE
hi   ErrorMsg                 guifg=#a7111d ctermfg=124  guibg=#ffe0e0 ctermbg=224  guisp=NONE    gui=NONE      cterm=NONE
hi   Identifier               guifg=fg      ctermfg=fg   guibg=NONE    ctermbg=NONE guisp=NONE    gui=NONE      cterm=NONE
hi   Ignore                   guifg=fg      ctermfg=fg   guibg=NONE    ctermbg=NONE guisp=NONE    gui=NONE      cterm=NONE
hi   IncSearch                guifg=#DCD7F9 ctermfg=189  guibg=#5137e1 ctermbg=62   guisp=NONE    gui=NONE      cterm=NONE
hi   InfoMsg                  guifg=#5137e1 ctermfg=62   guibg=#DCD7F9 ctermbg=189  guisp=NONE    gui=NONE      cterm=NONE
hi   MatchParen               guifg=NONE    ctermfg=NONE guibg=#dcd1c6 ctermbg=252  guisp=NONE    gui=bold      cterm=bold
hi   TabLine                  guifg=fg      ctermfg=fg   guibg=bg      ctermbg=bg   guisp=NONE    gui=NONE      cterm=NONE
hi   ModeMsg                  guifg=fg      ctermfg=fg   guibg=NONE    ctermbg=NONE guisp=NONE    gui=NONE      cterm=NONE
hi   MoreMsg                  guifg=fg      ctermfg=fg   guibg=NONE    ctermbg=NONE guisp=NONE    gui=NONE      cterm=NONE
hi   NonText                  guifg=fg      ctermfg=fg   guibg=NONE    ctermbg=NONE guisp=NONE    gui=NONE      cterm=NONE
hi   Pmenu                    guifg=NONE    ctermfg=NONE guibg=#e8e0d9 ctermbg=253  guisp=NONE    gui=NONE      cterm=NONE
hi   PmenuThumb               guifg=NONE    ctermfg=NONE guibg=fg      ctermbg=fg   guisp=NONE    gui=NONE      cterm=NONE
hi   PreProc                  guifg=fg      ctermfg=fg   guibg=NONE    ctermbg=NONE guisp=NONE    gui=NONE      cterm=NONE
hi   Question                 guifg=fg      ctermfg=fg   guibg=NONE    ctermbg=NONE guisp=NONE    gui=NONE      cterm=NONE
hi   Search                   guifg=#5137e1 ctermfg=62   guibg=#DCD7F9 ctermbg=189  guisp=NONE    gui=NONE      cterm=NONE
hi   Visual                   guifg=#371ec8 ctermfg=19   guibg=#cdc5f6 ctermbg=147  guisp=NONE    gui=NONE      cterm=NONE
hi   Special                  guifg=fg      ctermfg=fg   guibg=NONE    ctermbg=NONE guisp=NONE    gui=NONE      cterm=NONE
hi   SpecialKey               guifg=#b4aba7 ctermfg=249  guibg=NONE    ctermbg=NONE guisp=NONE    gui=NONE      cterm=NONE
hi   SpellBad                 guifg=#a7111d ctermfg=124  guibg=#ffe0e0 ctermbg=224  guisp=NONE    gui=NONE      cterm=NONE
hi   SpellCap                 guifg=NONE    ctermfg=NONE guibg=NONE    ctermbg=NONE guisp=#a7111d gui=undercurl cterm=undercurl
hi   SpellLocal               guifg=fg      ctermfg=fg   guibg=NONE    ctermbg=NONE guisp=NONE    gui=NONE      cterm=NONE
hi   SpellRare                guifg=fg      ctermfg=NONE guibg=NONE    ctermbg=NONE guisp=NONE    gui=NONE      cterm=NONE
hi   Statement                guifg=fg      ctermfg=fg   guibg=NONE    ctermbg=NONE guisp=NONE    gui=italic    cterm=italic
hi   StatusLine               guifg=bg      ctermfg=bg   guibg=fg      ctermbg=fg   guisp=NONE    gui=bold      cterm=NONE
hi   StatusLineNC             guifg=fg      ctermfg=fg   guibg=#dcd1c6 ctermbg=252  guisp=NONE    gui=NONE      cterm=NONE
hi   Terminal                 guifg=fg      ctermfg=fg   guibg=#efeae5 ctermbg=254  guisp=NONE    gui=NONE      cterm=NONE
hi   Todo                     guifg=NONE    ctermfg=NONE guibg=NONE    ctermbg=NONE guisp=NONE    gui=underline cterm=underline
hi   ToolbarButton            guifg=fg      ctermfg=fg   guibg=NONE    ctermbg=NONE guisp=NONE    gui=NONE      cterm=NONE
hi   ToolbarLine              guifg=NONE    ctermfg=NONE guibg=NONE    ctermbg=NONE guisp=NONE    gui=NONE      cterm=NONE
hi   Type                     guifg=NONE    ctermfg=NONE guibg=NONE    ctermbg=NONE guisp=NONE    gui=italic    cterm=italic
hi   Underlined               guifg=fg      ctermfg=fg   guibg=NONE    ctermbg=NONE guisp=NONE    gui=NONE      cterm=NONE
hi   VertSplit                guifg=#cfbfb0 ctermfg=251  guibg=NONE    ctermbg=NONE guisp=NONE    gui=NONE      cterm=NONE
hi   VisualNOS                guifg=NONE    ctermfg=NONE guibg=#fbfaf9 ctermbg=255  guisp=NONE    gui=NONE      cterm=NONE
hi   WarningMsg               guifg=#7b6a3d ctermfg=94   guibg=#f9ffa3 ctermbg=229  guisp=NONE    gui=NONE      cterm=NONE
hi   WhichKeySeperator        guifg=fg      ctermfg=fg   guibg=NONE    ctermbg=NONE guisp=NONE    gui=NONE      cterm=NONE
hi   Whitespace               guifg=#b4aba7 ctermfg=249  guibg=NONE    ctermbg=NONE guisp=NONE    gui=NONE      cterm=NONE

" These are Vim only
if !has('nvim')
  hi Tooltip                  guifg=fg      ctermfg=fg   guibg=#e8e0d9 ctermbg=253  guisp=NONE    gui=NONE      cterm=NONE
  hi Menu                     guifg=fg      ctermfg=fg   guibg=#e8e0d9 ctermbg=253  guisp=NONE    gui=NONE      cterm=NONE
endif

let comments = get(g:, 'yui_comments', 'normal')
if comments ==? 'emphasize' || get(g:, 'yui_emphasized_comments', 0)
  hi Comment                  guifg=#E44C22 ctermfg=196  guibg=NONE    ctermbg=NONE guisp=NONE    gui=italic    cterm=italic
elseif comments ==? 'fade'
  hi Comment                  guifg=#7f726c ctermfg=181  guibg=NONE    ctermbg=NONE guisp=NONE    gui=italic    cterm=italic
elseif comments ==? 'normal'
  hi Comment                  guifg=#7f726c ctermfg=241  guibg=NONE    ctermbg=NONE guisp=NONE    gui=italic    cterm=italic
elseif comments ==? 'bg'
  hi Comment                  guifg=fg      ctermfg=241  guibg=#e8e0d9 ctermbg=NONE guisp=NONE    gui=NONE      cterm=NONE
endif

let folds = get(g:, 'yui_folds', 'fade')
if folds ==? 'emphasize'
  hi FoldColumn               guifg=#7f726c ctermfg=243  guibg=#dcd1c6 ctermbg=254  guisp=NONE    gui=NONE      cterm=NONE
  hi Folded                   guifg=#7f726c ctermfg=243  guibg=#dcd1c6 ctermbg=254  guisp=NONE    gui=NONE      cterm=NONE
elseif folds ==? 'fade'
  hi FoldColumn               guifg=#b4aba7 ctermfg=181  guibg=NONE    ctermbg=NONE guisp=NONE    gui=NONE      cterm=NONE
  hi Folded                   guifg=#b4aba7 ctermfg=181  guibg=NONE    ctermbg=NONE guisp=NONE    gui=NONE      cterm=NONE
endif

let linenr = get(g:, 'yui_line_numbers', 'fade')
if linenr ==? 'emphasize'
  hi SignColumn               guifg=#7f726c ctermfg=243  guibg=#dcd1c6 ctermbg=254  guisp=NONE    gui=NONE      cterm=NONE
  hi LineNr                   guifg=#7f726c ctermfg=243  guibg=#dcd1c6 ctermbg=254  guisp=NONE    gui=NONE      cterm=NONE
elseif linenr ==? 'fade'
  hi SignColumn               guifg=#635954 ctermfg=241  guibg=#efeae5 ctermbg=255  guisp=NONE    gui=NONE      cterm=NONE
  hi LineNr                   guifg=#b4aba7 ctermfg=181  guibg=NONE    ctermbg=NONE guisp=NONE    gui=NONE      cterm=NONE
endif

hi! link EndOfBuffer                  NonText
hi! link QuickFixLine                 Search
hi! link Boolean                      Constant
hi! link Character                    Constant
hi! link Conditional                  Statement
hi! link Define                       PreProc
hi! link Debug                        Special
hi! link Delimiter                    Special
hi! link Exception                    Normal
hi! link Float                        Number
hi! link Function                     Identifier
hi! link Include                      PreProc
hi! link Keyword                      Normal
hi! link Label                        Normal
hi! link Macro                        PreProc
hi! link Number                       Constant
hi! link Operator                     Normal
hi! link PreCondit                    PreProc
hi! link Repeat                       Normal
hi! link SpecialChar                  Special
hi! link SpecialComment               Special
hi! link StorageClass                 Type
hi! link String                       Constant
hi! link Structure                    Type
hi! link Tag                          Special
hi! link Typedef                      Type
hi! link diffAdded                    DiffAdd
hi! link diffChanged                  DiffChange
hi! link diffRemoved                  DiffDelete
hi! link diffComment                  Comment
hi! link PmenuSel                     WildMenu
hi! link StatusLineTerm               StatusLine
hi! link StatusLineTermNC             StatusLineNC
hi! link TabLineSel                   Search
hi! link TabLineFill                  TabLine
hi! link lCursor                      Cursor
hi! link jsParensError                Normal
hi! link WhichKeyFloating             Pmenu
hi! link PmenuSbar                    Pmenu
hi! link Substitute                   IncSearch
hi! link WildMenu                     Visual
hi! link Title                        Normal

" -------------- LSP ----------------------------
hi! link DiagnosticsError           Error
hi! link DiagnosticWarn             WarningMsg
hi! link DiagnosticInfo             DiffText
hi! link DiagnosticHint             Normal
hi! link DiagnosticVirtualTextError Error
hi! link DiagnosticVirtualTextWarn  WarningMsg
hi! link DiagnosticVirtualTextInfo  DiffText
hi! link DiagnosticVirtualTextHint  Normal
hi! link DiagnosticUnderlineError   Error
hi! link DiagnosticUnderlineWarn    WarningMsg
hi! link DiagnosticUnderlineInfo    DiffText
hi! link DiagnosticUnderlineHint    Normal
hi! link DiagnosticFloatingError    Error
hi! link DiagnosticFloatingWarn     WarningMsg
hi! link DiagnosticFloatingInfo     DiffText
hi! link DiagnosticFloatingHint     Normal
hi! link DiagnosticSignError        Error
hi! link DiagnosticSignWarn         WarningMsg
hi! link DiagnosticSignInfo         DiffText
hi! link DiagnosticSignHint         Normal

hi! link LspDiagnosticsDefaultError       DiagnosticError
hi! link LspDiagnosticsDefaultHint        DiagnosticHint
hi! link LspDiagnosticsDefaultWarning     DiagnosticWarn
hi! link LspDiagnosticsDefaultInformation DiagnosticInfo

hi! link LspDiagnosticsUnderlineError     Error

" -------------- gitigns ------------------------
hi! link GitSignsAdd                  DiffAdd
hi! link GitSignsAddNr                DiffAdd
hi! link GitSignsAddLn                DiffAdd
hi! link GitSignsChange               DiffChange
hi! link GitSignsChangeNr             DiffChange
hi! link GitSignsChangeLn             DiffChange
hi! link GitSignsDelete               DiffDelete
hi! link GitSignsDeleteNr             DiffDelete
hi! link GitSignsDeleteLn             DiffDelete

" -------------- indenline ----------------------
hi! link IndentBlanklineChar          VertSplit

" -------------- vim-sneak ----------------------
hi! link Sneak                        Visual
hi! link SneakScope                   IncSearch
  " v-- For all matches except the first, where the cursor currently resides
hi! link SneakLabel                   Search

" -------------- Vim Script ---------------------
" v-- Some of these are normally linked to Type, which is italicized, leading
" to lots of italics in this file
hi! link vimGroup                     Normal
hi! link vimHiGui                     Normal
hi! link vimHiKeyList                 Normal
hi! link vimHiGroup                   Normal
hi! link vimHiCTerm                   Normal
hi! link vimHiCTermFgBg               Normal
hi!  link                     vimHiGuiFgBg  Normal

" -------------- Markdown -----------------------
hi  mkdHeading               guifg=NONE    ctermfg=NONE guibg=NONE    ctermbg=NONE guisp=NONE    gui=underline cterm=underline
hi  mkdItalic                guifg=NONE    ctermfg=NONE guibg=NONE    ctermbg=NONE guisp=NONE    gui=italic    cterm=italic
hi  markdownBold             guifg=NONE    ctermfg=NONE guibg=NONE    ctermbg=NONE guisp=NONE    gui=bold      cterm=bold
hi  markdownUrl              guifg=NONE    ctermfg=NONE guibg=NONE    ctermbg=NONE guisp=NONE    gui=underline cterm=underline
hi  markdownHeadingDelimiter guifg=NONE    ctermfg=NONE guibg=NONE    ctermbg=NONE guisp=NONE    gui=underline cterm=NONE
hi  mkdCode                           guifg=#635954 ctermfg=241  guibg=NONE ctermbg=NONE  guisp=NONE    gui=NONE      cterm=NONE
hi  mkdCodeDelimiter                  guifg=#635954 ctermfg=241  guibg=NONE ctermbg=NONE  guisp=NONE    gui=NONE      cterm=NONE
hi! link markdownItalic               mkdItalic
hi  markdownLinkText                  guifg=#635954 ctermfg=241  guibg=NONE ctermbg=NONE  guisp=NONE    gui=NONE      cterm=NONE
hi! link markdownH1                   mkdHeading
hi! link markdownH1Delimiter          markdownHeadingDelimiter
hi! link markdownH2                   mkdHeading
hi! link markdownH3                   mkdHeading
hi! link markdownH4                   mkdHeading
hi! link markdownCodeDelimiter        folded
hi! link markdownBoldDelimiter        folded
hi! link markdownItalicDelimiter      folded
hi! link markdownBoldItalicDelimiter  folded
hi! link markdownLinkDelimiter        folded
hi! link markdownLinkTextDelimiter    folded

" -------------- Dirvish ------------------------
hi   DirvishPathTail          guifg=NONE    guibg=NONE   guisp=NONE    gui=bold     ctermfg=NONE  ctermbg=NONE  cterm=bold
hi! link DirvishArg                   Search

" -------------- Help ---------------------------
hi   helpHyperTextJump        guifg=NONE    ctermfg=NONE guibg=NONE    ctermbg=NONE guisp=NONE    gui=underline cterm=underline
hi   helpHeadline             guifg=NONE    ctermfg=NONE guibg=NONE    ctermbg=NONE guisp=NONE    gui=bold      cterm=bold
hi! link helpExample                  Normal
hi! link helpCommand                  Constant
hi! link helpBacktick                 Constant

" -------------- XML ----------------------------
hi! link xmlProcessingDelim Normal
hi xmlTagName guifg=NONE ctermfg=NONE guibg=NONE ctermbg=NONE guisp=NONE gui=NONE cterm=NONE

" -------------- nvim-hlslens -------------------
hi! link HlSearchLensNear StatusLine
hi! link HlSearchLens StatusLineNC
hi! link HlSearchNear Search

" -------------- lightline    -------------------
let lightline_enabled = get(g:, 'yui_lightline', v:false)
if lightline_enabled == v:true
  let s:p = {'normal': {}, 'inactive': {}, 'insert': {}, 'replace': {}, 'visual': {}, 'tabline': {}}
  let s:p.normal.left = [ ['#e8ffd1', '#408000', 241, 254 ], ['#efeae5', '#7f726c', 241, 254 ] ]
  let s:p.normal.right = [ ['#efeae5', '#635954', 241, 254 ], ['#efeae5', '#7f726c', 241, 254 ], [ '#292523', '#b4aba7', 245, 236 ] ]
  let s:p.normal.middle = [ [ '#635954', '#b4aba7', 245, 236 ] ]
  let s:p.insert.left =  [ ['#e6f2fa', '#268bd2', 195, 25 ], ['#efeae5', '#7f726c', 241, 254 ] ]
  let s:p.visual.left = [ [ '#fdfcfe', '#5137e1', 124, 231 ], ['#efeae5', '#7f726c', 241, 254 ] ]
  let s:p.replace.left = [ [ '#ffffff', '#e44c22', 57, 231 ], ['#efeae5', '#7f726c', 241, 254 ] ]
  let s:p.normal.error = [ [ '#ffe0e0', '#a7111d', 224, 124 ] ]
  let s:p.normal.warning = [ [ '#f9ffa3', '#7b6a3d', 229, 94 ] ]
  let s:p.inactive.right = [ [ '#7f726c', '#cfbfb0', 233, 235 ], [ '#7f726c', '#cfbfb0', 233, 235 ], [ '#7f726c', '#cfbfb0', 233, 235 ] ]
  let s:p.inactive.left = s:p.inactive.right[1:]
  let s:p.inactive.middle = [ [ '#7f726c', '#dcd1c6', 233, 235 ] ]
  let s:p.tabline.left = s:p.inactive.middle
  let s:p.tabline.tabsel = s:p.normal.left[1:]
  let s:p.tabline.middle = [ [ '#635954', '#efeae5', 254, 241] ]
  let s:p.tabline.right = s:p.normal.left[1:]

  let g:lightline#colorscheme#yui#palette = s:p
endif

" -------------- conflict-marker.vim ------------
hi! link ConflictMarkerBegin DiffAdd
hi! link ConflictMarkerOurs DiffAdd
" hi! link ConflictMarkerCommonAncestors
" ConflictMarkerCommonAncestors |||||||
" ConflictMarkerCommonAncestorsHunk actual diff content
" ConflictMarkerSeparator ========
hi! link ConflictMarkerTheirs DiffText
hi! link ConflictMarkerEnd DiffText
