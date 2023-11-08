set background=light

if (!has('gui_running') && &t_Co < 256 && !has('nvim'))
	finish
endif

hi clear

if exists('syntax_on')
	syntax reset
endif

	
hi Normal guifg=#504944 ctermfg=239 guibg=#f1eded ctermbg=255
hi NormalNC guifg=#4b4440 ctermfg=238 guibg=#eae4e4 ctermbg=254
hi! link MsgArea Normal
hi Conceal guifg=#5d554f ctermfg=240 guibg=NONE ctermbg=NONE gui=NONE cterm=NONE
hi! link ToolbarButton TabLine
hi! link ToolbarLine TabLineFill
hi Cursor guifg=bg ctermfg=bg guibg=fg ctermbg=fg
hi! link CursorLineNr CursorLine
hi CursorLine guifg=NONE ctermfg=NONE guibg=#eae4e4 ctermbg=254 gui=NONE cterm=NONE
hi! link lCursor Cursor
hi! link CursorIM Cursor
hi DiffAdd guifg=#38551E ctermfg=237 guibg=#daf3c5 ctermbg=194
hi DiffChange guifg=#605001 ctermfg=58 guibg=#fff1c9 ctermbg=230
hi DiffDelete guifg=#A50303 ctermfg=124 guibg=#ffebeb ctermbg=255 gui=NONE cterm=NONE
hi DiffText guifg=#1E5571 ctermfg=23 guibg=#efeff9 ctermbg=255
hi Directory guifg=fg ctermfg=fg guibg=NONE ctermbg=NONE
hi ErrorMsg guifg=#A50303 ctermfg=124 guibg=NONE ctermbg=NONE gui=bold cterm=bold
hi Identifier guifg=fg ctermfg=fg guibg=NONE ctermbg=NONE
hi Ignore guifg=fg ctermfg=fg guibg=NONE ctermbg=NONE
hi MatchParen guifg=fg ctermfg=fg guibg=NONE ctermbg=NONE gui=bold cterm=bold
hi ModeMsg guifg=#1E5571 ctermfg=23 guibg=#efeff9 ctermbg=255 gui=NONE cterm=NONE
hi MoreMsg guifg=#1E5571 ctermfg=23 guibg=#efeff9 ctermbg=255 gui=NONE cterm=NONE
hi WarningMsg guifg=#605001 ctermfg=58 guibg=#fff1c9 ctermbg=230 gui=NONE cterm=NONE
hi! link Whitespace NonText
hi TabLine guifg=#655b5b ctermfg=59 guibg=#dfd5d5 ctermbg=188 gui=NONE cterm=NONE
hi! link TabLineSel StatusLine
hi! link TabLineFill TabLine
hi Search guifg=#2D199F ctermfg=19 guibg=#c3c3ea ctermbg=252 gui=NONE cterm=NONE
hi CurSearch guifg=#241384 ctermfg=18 guibg=#8a8ae1 ctermbg=104 gui=bold cterm=bold
hi IncSearch guifg=#27158e ctermfg=18 guibg=#8f8fe2 ctermbg=104 gui=bold cterm=bold
hi SpecialKey guifg=#605001 ctermfg=58 guibg=#fff1c9 ctermbg=230
hi! link SpellCap SpellBad
hi! link SpellLocal SpellBad
hi! link SpellRare SpellBad
hi Type guifg=NONE ctermfg=NONE guibg=NONE ctermbg=NONE gui=italic cterm=italic
hi! link Tooltip Pmenu
hi! link MsgSeparator VertSplit
hi! link EndOfBuffer NonText
hi! link QuickFixLine Search
hi! link WildMenu IncSearch
hi! link Boolean Constant
hi! link Character Constant
hi Conditional guifg=fg ctermfg=fg guibg=NONE ctermbg=NONE gui=NONE cterm=NONE
hi! link Define PreProc
hi! link Debug Special
hi! link Delimiter Special
hi! link Float Number
hi! link Function Identifier
hi! link Include PreProc
hi! link Macro PreProc
hi! link Number Constant
hi! link PreCondit PreProc
hi! link SpecialChar Special
hi! link SpecialComment Special
hi! link StorageClass Type
hi String guifg=fg ctermfg=fg guibg=NONE ctermbg=NONE gui=bold cterm=bold
hi! link Structure Type
hi! link Tag Special
hi! link Typedef Type
hi! link Substitute IncSearch
hi Operator guifg=fg ctermfg=fg guibg=NONE ctermbg=NONE
hi Repeat guifg=fg ctermfg=fg guibg=NONE ctermbg=NONE
hi Constant guifg=fg ctermfg=fg guibg=NONE ctermbg=NONE gui=bold cterm=bold
hi jsParensError guifg=fg ctermfg=fg guibg=NONE ctermbg=NONE
hi! link Todo DiffChange
hi Error guifg=#A50303 ctermfg=124 guibg=bg ctermbg=bg gui=bold cterm=bold
hi Exception guifg=fg ctermfg=fg guibg=NONE ctermbg=NONE
hi Keyword guifg=fg ctermfg=fg guibg=NONE ctermbg=NONE
hi Label guifg=fg ctermfg=fg guibg=NONE ctermbg=NONE
hi Special guifg=fg ctermfg=fg guibg=NONE ctermbg=NONE
hi SpellBad guifg=fg ctermfg=fg guibg=NONE ctermbg=NONE guisp=#A50303 gui=undercurl cterm=undercurl
hi Statement guifg=fg ctermfg=fg guibg=NONE ctermbg=NONE gui=italic cterm=italic
hi Underlined guifg=fg ctermfg=fg guibg=NONE ctermbg=NONE gui=underline cterm=underline
hi! link VertSplit NonText
hi! link Menu Pmenu
hi Title guifg=fg ctermfg=fg guibg=NONE ctermbg=NONE
hi! link NormalFloat Pmenu
hi FloatTitle guifg=fg ctermfg=fg guibg=#ffffff ctermbg=231 gui=underline,bold cterm=underline,bold
hi FloatBorder guifg=#ffffff ctermfg=231 guibg=#ffffff ctermbg=231
hi StatusLine guifg=#423333 ctermfg=237 guibg=#d2c3c3 ctermbg=251 gui=NONE cterm=NONE
hi StatusLineNC guifg=#655b5b ctermfg=59 guibg=#dfd5d5 ctermbg=188 gui=NONE cterm=NONE
hi ColorColumn guifg=#504944 ctermfg=239 guibg=#ece7e7 ctermbg=254
hi! link CursorColumn CursorLine
hi CopilotSuggestion guifg=#766d66 ctermfg=242 guibg=NONE ctermbg=NONE
hi WinBar guifg=fg ctermfg=fg guibg=NONE ctermbg=NONE guisp=#766d66 gui=underline cterm=underline
hi NonText guifg=#dbcfcf ctermfg=252 guibg=NONE ctermbg=NONE
hi WinBarNC guifg=#766d66 ctermfg=242 guibg=NONE ctermbg=NONE guisp=#dbcfcf gui=underline cterm=underline
hi! link PmenuExtraSel PmenuSel
hi PmenuSel guifg=#2D199F ctermfg=19 guibg=#c3c3ea ctermbg=252 gui=NONE cterm=NONE
hi Pmenu guifg=#595959 ctermfg=240 guibg=#ffffff ctermbg=231
hi PmenuKind guifg=#595959 ctermfg=240 guibg=NONE ctermbg=NONE gui=bold cterm=bold
hi PmenuKindSel guifg=#2D199F ctermfg=19 guibg=#c3c3ea ctermbg=252 gui=bold cterm=bold
hi PmenuExtra guifg=#656565 ctermfg=241 guibg=NONE ctermbg=NONE
hi PmenuSbar guifg=NONE ctermfg=NONE guibg=NONE ctermbg=NONE
hi PmenuThumb guifg=NONE ctermfg=NONE guibg=#e2e2e2 ctermbg=254
hi PreProc guifg=fg ctermfg=fg guibg=NONE ctermbg=NONE
hi Question guifg=fg ctermfg=fg guibg=NONE ctermbg=NONE
hi Visual guifg=#2D199F ctermfg=19 guibg=#c3c3ea ctermbg=252 gui=NONE cterm=NONE
hi VisualNOS guifg=#371fbb ctermfg=55 guibg=#d2d2ef ctermbg=189
hi Scrollbar guifg=NONE ctermfg=NONE guibg=#dfd5d5 ctermbg=188
hi! link DiagnosticError DiffDelete
hi! link DiagnosticHint DiffAdd
hi! link DiagnosticInfo DiffText
hi! link DiagnosticWarn DiffChange
hi DiagnosticFloatingError guifg=#A50303 ctermfg=124 guibg=NONE ctermbg=NONE gui=NONE cterm=NONE
hi DiagnosticFloatingHint guifg=#38551E ctermfg=237 guibg=NONE ctermbg=NONE gui=NONE cterm=NONE
hi DiagnosticFloatingInfo guifg=#1E5571 ctermfg=23 guibg=NONE ctermbg=NONE gui=NONE cterm=NONE
hi DiagnosticFloatingWarn guifg=#605001 ctermfg=58 guibg=NONE ctermbg=NONE gui=NONE cterm=NONE
hi DiagnosticUnderlineError guifg=NONE ctermfg=NONE guibg=NONE ctermbg=NONE guisp=#A50303 gui=undercurl cterm=undercurl
hi DiagnosticUnderlineHint guifg=NONE ctermfg=NONE guibg=NONE ctermbg=NONE guisp=#38551E gui=undercurl cterm=undercurl
hi DiagnosticUnderlineInfo guifg=NONE ctermfg=NONE guibg=NONE ctermbg=NONE guisp=#1E5571 gui=undercurl cterm=undercurl
hi DiagnosticUnderlineWarn guifg=NONE ctermfg=NONE guibg=NONE ctermbg=NONE guisp=#605001 gui=undercurl cterm=undercurl
hi DiagnosticSignError guifg=#A50303 ctermfg=124 guibg=NONE ctermbg=NONE gui=NONE cterm=NONE
hi DiagnosticSignHint guifg=#38551E ctermfg=237 guibg=NONE ctermbg=NONE gui=NONE cterm=NONE
hi DiagnosticSignInfo guifg=#1E5571 ctermfg=23 guibg=NONE ctermbg=NONE gui=NONE cterm=NONE
hi DiagnosticSignWarn guifg=#605001 ctermfg=58 guibg=NONE ctermbg=NONE gui=NONE cterm=NONE
hi! link LspSignatureActiveParameter Search
hi vimCommand guifg=fg ctermfg=fg guibg=NONE ctermbg=NONE gui=NONE cterm=NONE
hi vimFilter guifg=fg ctermfg=fg guibg=NONE ctermbg=NONE gui=bold cterm=bold
hi vimGroup guifg=fg ctermfg=fg guibg=NONE ctermbg=NONE
hi vimHiGui guifg=fg ctermfg=fg guibg=NONE ctermbg=NONE
hi vimHiKeyList guifg=fg ctermfg=fg guibg=NONE ctermbg=NONE
hi vimHiGroup guifg=fg ctermfg=fg guibg=NONE ctermbg=NONE
hi vimHiCTerm guifg=fg ctermfg=fg guibg=NONE ctermbg=NONE
hi vimHiCTermFgBg guifg=fg ctermfg=fg guibg=NONE ctermbg=NONE
hi vimHiGuiFgBg guifg=fg ctermfg=fg guibg=NONE ctermbg=NONE
hi luaFuncKeyword guifg=fg ctermfg=fg guibg=NONE ctermbg=NONE gui=NONE cterm=NONE
hi luaFuncName guifg=fg ctermfg=fg guibg=NONE ctermbg=NONE gui=underline,bold cterm=underline,bold
hi! link luaRepeat Repeat
hi! link luaCond Conditional
hi luaParens guifg=fg ctermfg=fg guibg=NONE ctermbg=NONE gui=NONE cterm=NONE
hi luaSpecialValue guifg=fg ctermfg=fg guibg=NONE ctermbg=NONE gui=bold cterm=bold
hi luaLocal guifg=fg ctermfg=fg guibg=NONE ctermbg=NONE
hi luaGotoLabel guifg=fg ctermfg=fg guibg=NONE ctermbg=NONE gui=bold,underline cterm=bold,underline
hi luaBraces guifg=fg ctermfg=fg guibg=NONE ctermbg=NONE
hi luaStatement guifg=fg ctermfg=fg guibg=NONE ctermbg=NONE
hi! link luaBuiltIn luaSpecialValue
hi htmlTagName guifg=fg ctermfg=fg guibg=NONE ctermbg=NONE gui=NONE cterm=NONE
hi typescriptParens guifg=fg ctermfg=fg guibg=NONE ctermbg=NONE
hi! link typescriptFuncName luaFuncName
hi mkHeading guifg=NONE ctermfg=NONE guibg=NONE ctermbg=NONE gui=underline cterm=underline
hi mkItalic guifg=NONE ctermfg=NONE guibg=NONE ctermbg=NONE gui=italic cterm=italic
hi markdownBold guifg=NONE ctermfg=NONE guibg=NONE ctermbg=NONE gui=bold cterm=bold
hi markdownUrl guifg=NONE ctermfg=NONE guibg=NONE ctermbg=NONE gui=underline cterm=underline
hi markdownHeadingDelimiter guifg=NONE ctermfg=NONE guibg=NONE ctermbg=NONE gui=underline cterm=underline
hi mkCode guifg=fg ctermfg=fg guibg=NONE ctermbg=NONE
hi! link mkdCodeDelimiter mkCode
hi! link markdownItalic mkItalic
hi markdownLinkText guifg=fg ctermfg=fg guibg=NONE ctermbg=NONE
hi! link markdownH1 mkdHeading
hi! link markdownH1Delimiter markdownHeadingDelimiter
hi! link markdownH2 mkdHeading
hi! link markdownH3 mkdHeading
hi! link markdownH4 mkdHeading
hi markdownCodeDelimiter guifg=NONE ctermfg=NONE guibg=NONE ctermbg=NONE
hi markdownBoldDelimiter guifg=NONE ctermfg=NONE guibg=NONE ctermbg=NONE
hi markdownItalicDelimiter guifg=NONE ctermfg=NONE guibg=NONE ctermbg=NONE
hi markdownBoldItalicDelimiter guifg=NONE ctermfg=NONE guibg=NONE ctermbg=NONE
hi markdownLinkDelimiter guifg=NONE ctermfg=NONE guibg=NONE ctermbg=NONE
hi markdownLinkTextDelimiter guifg=NONE ctermfg=NONE guibg=NONE ctermbg=NONE
hi! link helpBacktick Constant
hi helpCommand guifg=fg ctermfg=fg guibg=NONE ctermbg=NONE gui=bold cterm=bold
hi! link helpDeprecated DiffDelete
hi! link helpExample Pmenu
hi helpHeader guifg=NONE ctermfg=NONE guibg=NONE ctermbg=NONE gui=bold cterm=bold
hi helpHeadline guifg=fg ctermfg=fg guibg=NONE ctermbg=NONE gui=bold cterm=bold
hi helpHyperTextEntry guifg=NONE ctermfg=NONE guibg=NONE ctermbg=NONE gui=bold cterm=bold
hi helpHyperTextJump guifg=NONE ctermfg=NONE guibg=NONE ctermbg=NONE gui=underline cterm=underline
hi helpNote guifg=NONE ctermfg=NONE guibg=NONE ctermbg=NONE gui=bold cterm=bold
hi helpOption guifg=NONE ctermfg=NONE guibg=NONE ctermbg=NONE gui=bold cterm=bold
hi helpSectionDelim guibg=NONE ctermbg=NONE gui=NONE cterm=NONE
hi helpSpecial guifg=NONE ctermfg=NONE guibg=NONE ctermbg=NONE gui=bold cterm=bold
hi helpURL guifg=NONE ctermfg=NONE guibg=NONE ctermbg=NONE gui=underline cterm=underline
hi xmlProcessingDelim guifg=fg ctermfg=fg guibg=NONE ctermbg=NONE
hi xmlTagName guifg=NONE ctermfg=NONE guibg=NONE ctermbg=NONE gui=NONE cterm=NONE
hi fugitiveStagedSection guifg=fg ctermfg=fg guibg=NONE ctermbg=NONE gui=underline,bold cterm=underline,bold
hi fugitiveUnstagedSection guifg=fg ctermfg=fg guibg=NONE ctermbg=NONE gui=underline,bold cterm=underline,bold
hi! link diffAdded DiffAdd
hi diffLine guifg=fg ctermfg=fg guibg=NONE ctermbg=NONE gui=bold,underline cterm=bold,underline
hi! link diffSubname diffLine
hi gitHashAbbrev guifg=fg ctermfg=fg guibg=NONE ctermbg=NONE gui=underline cterm=underline
hi! link diffChanged DiffChange
hi! link diffRemoved DiffDelete
hi! link diffComment Comment
hi GitSignsAdd guifg=#5e8a36 ctermfg=65 guibg=NONE ctermbg=NONE
hi! link GitSignsAddNr GitSignsAdd
hi! link GitSignsAddLn GitSignsAdd
hi GitSignsChange guifg=#b79a04 ctermfg=136 guibg=NONE ctermbg=NONE
hi! link GitSignsChangeNr DiffChange
hi! link GitSignsChangeLn DiffChange
hi GitSignsDelete guifg=#fe1e1e ctermfg=196 guibg=NONE ctermbg=NONE
hi! link GitSignsDeleteNr DiffDelete
hi! link GitSignsDeleteLn DiffDelete
hi! link IndentBlanklineChar VertSplit
hi! link Sneak Visual
hi! link SneakScope IncSearch
hi! link SneakLabel Search
hi DirvishPathTail guifg=NONE ctermfg=NONE guibg=NONE ctermbg=NONE gui=bold cterm=bold
hi! link DirvishArg Search
hi! link HlSearchLensNear StatusLine
hi! link HlSearchLens StatusLineNC
hi! link HlSearchNear Search
hi! link ConflictMarkerBegin DiffAdd
hi! link ConflictMarkerOurs DiffAdd
hi! link ConflictMarkerTheirs DiffText
hi! link ConflictMarkerEnd DiffText
hi jsxOpenPunct guifg=fg ctermfg=fg guibg=NONE ctermbg=NONE
hi TreesitterContextBottom guifg=NONE ctermfg=NONE guibg=NONE ctermbg=NONE guisp=#d1d1ee gui=underline cterm=underline
hi TreesitterContext guifg=#1E5571 ctermfg=23 guibg=#efeff9 ctermbg=255 gui=NONE cterm=NONE
hi! link LeapMatch CurSearch
hi! link LeapLabelPrimary CurSearch
hi LeapLabelSecondary guifg=#2D199F ctermfg=19 guibg=#2D199F ctermbg=19 gui=NONE cterm=NONE
hi LeapLabelSelected guifg=#2D199F ctermfg=19 guibg=#c3c3ea ctermbg=252 gui=NONE cterm=NONE
hi WhichKeySeperator guifg=fg ctermfg=fg guibg=NONE ctermbg=NONE
hi! link WhichKeyFloating Pmenu
hi! link TelescopeMatching CurSearch
hi! link TelescopeSelection Search
if has('nvim')
	let g:terminal_color_0 = '#504944'
	let g:terminal_color_1 = '#A50303'
	let g:terminal_color_2 = '#38551E'
	let g:terminal_color_3 = '#605001'
	let g:terminal_color_4 = '#1E5571'
	let g:terminal_color_5 = '#2D199F'
	let g:terminal_color_6 = '#29574E'
	let g:terminal_color_7 = '#bfb8b3'
	let g:terminal_color_8 = '#69605a'
	let g:terminal_color_9 = '#d30505'
	let g:terminal_color_10 = '#4a6f2a'
	let g:terminal_color_11 = '#7c6802'
	let g:terminal_color_12 = '#296e92'
	let g:terminal_color_13 = '#4126d8'
	let g:terminal_color_14 = '#377166'
	let g:terminal_color_15 = '#e4dbdb'
	hi! link @text.literal helpExample
	hi! link @text.reference helpOption
	hi @tag.tsx guifg=fg ctermfg=fg guibg=NONE ctermbg=NONE
	hi! link @function.lua luaFuncName
	hi! link @keyword.function.lua luaFuncKeyword
	hi! link @repeat.lua luaRepeat
	hi! link @conditional.lua luaCond
	hi! link @function.builtin.lua luaSpecialValue
	hi! link @variable.builtin.lua luaSpecialValue
	hi! link @method.lua @function.lua
	hi @label.lua guifg=fg ctermfg=fg guibg=NONE ctermbg=NONE gui=bold,underline cterm=bold,underline
else
	hi! link StatusLineTerm StatusLine
	hi! link StatusLineTermNC StatusLineNC
	let g:terminal_ansi_colors = [
		\ '#504944',
		\ '#A50303',
		\ '#38551E',
		\ '#605001',
		\ '#1E5571',
		\ '#2D199F',
		\ '#29574E',
		\ '#bfb8b3',
		\ '#69605a',
		\ '#d30505',
		\ '#4a6f2a',
		\ '#7c6802',
		\ '#296e92',
		\ '#4126d8',
		\ '#377166',
		\ '#e4dbdb']
endif


let s:yui_folds_value = get(g:, 'yui_folds', 'fade')
if s:yui_folds_value ==? 'fade'
	hi FoldColumn guifg=#bcada2 ctermfg=145 guibg=NONE ctermbg=NONE
	hi! link Folded FoldColumn
elseif s:yui_folds_value ==? 'emphasize'
	hi FoldColumn guifg=#443e39 ctermfg=237 guibg=#e6dede ctermbg=254
	hi! link Folded FoldColumn
endif
	

let s:yui_line_numbers_value = get(g:, 'yui_line_numbers', 'fade')
if s:yui_line_numbers_value ==? 'fade'
	hi SignColumn guifg=#bcada2 ctermfg=145 guibg=NONE ctermbg=NONE
	hi! link LineNr SignColumn
elseif s:yui_line_numbers_value ==? 'emphasize'
	hi SignColumn guifg=#443e39 ctermfg=237 guibg=#e6dede ctermbg=254
	hi! link LineNr SignColumn
endif
	

let s:yui_emphasized_comments_value = get(g:, 'yui_emphasized_comments', 0)
if s:yui_emphasized_comments_value ==? 1
	hi Comment guifg=#2D199F ctermfg=19 guibg=NONE ctermbg=NONE
elseif s:yui_emphasized_comments_value ==? 0
	hi Comment guifg=#766d66 ctermfg=242 guibg=NONE ctermbg=NONE
endif
	

let s:yui_comments_value = get(g:, 'yui_comments', 'normal')
if s:yui_comments_value ==? 'normal'
	hi Comment guifg=fg ctermfg=fg guibg=NONE ctermbg=NONE gui=italic cterm=italic
elseif s:yui_comments_value ==? 'fade'
	hi Comment guifg=#bcada2 ctermfg=145 guibg=NONE ctermbg=NONE gui=italic cterm=italic
elseif s:yui_comments_value ==? 'emphasize'
	hi Comment guifg=#2D199F ctermfg=19 guibg=NONE ctermbg=NONE gui=NONE cterm=NONE
elseif s:yui_comments_value ==? 'bg'
	hi Comment guifg=NONE ctermfg=NONE guibg=#e6dede ctermbg=254 gui=NONE cterm=NONE
endif
	
