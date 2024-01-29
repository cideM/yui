set background=light

if (!has('gui_running') && &t_Co < 256 && !has('nvim'))
	finish
endif

hi clear

if exists('syntax_on')
	syntax reset
endif

let g:colors_name = 'yui'
	
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
hi DiffChange guifg=#554717 ctermfg=58 guibg=#fee264 ctermbg=221
hi DiffDelete guifg=#A50303 ctermfg=124 guibg=#ffebeb ctermbg=255 gui=NONE cterm=NONE
hi DiffText guifg=#1E5571 ctermfg=23 guibg=#bcbee8 ctermbg=146
hi Directory guifg=fg ctermfg=fg guibg=NONE ctermbg=NONE
hi ErrorMsg guifg=#A50303 ctermfg=124 guibg=NONE ctermbg=NONE gui=bold cterm=bold
hi Constant guifg=fg ctermfg=fg guibg=NONE ctermbg=NONE gui=bold cterm=bold
hi! link String Constant
hi! link Character Constant
hi! link Number Constant
hi! link Boolean Constant
hi! link Float Constant
hi Identifier guifg=fg ctermfg=fg guibg=NONE ctermbg=NONE gui=bold cterm=bold
hi Function guifg=fg ctermfg=fg guibg=NONE ctermbg=NONE
hi Statement guifg=fg ctermfg=fg guibg=NONE ctermbg=NONE gui=NONE cterm=NONE
hi Repeat guifg=fg ctermfg=fg guibg=NONE ctermbg=NONE gui=bold cterm=bold
hi Conditional guifg=fg ctermfg=fg guibg=NONE ctermbg=NONE gui=bold cterm=bold
hi Label guifg=fg ctermfg=fg guibg=NONE ctermbg=NONE gui=underline,bold cterm=underline,bold
hi! link Operator Statement
hi! link Keyword Statement
hi! link Exception Statement
hi PreProc guifg=fg ctermfg=fg guibg=NONE ctermbg=NONE gui=bold cterm=bold
hi! link Include PreProc
hi! link Define PreProc
hi! link Macro PreProc
hi! link PreCondit PreProc
hi Type guifg=NONE ctermfg=NONE guibg=NONE ctermbg=NONE gui=NONE cterm=NONE
hi! link StorageClass Type
hi! link Structure Type
hi Typedef guifg=fg ctermfg=fg guibg=NONE ctermbg=NONE gui=italic cterm=italic
hi Special guifg=fg ctermfg=fg guibg=NONE ctermbg=NONE gui=NONE cterm=NONE
hi! link SpecialChar Special
hi! link Tag Special
hi! link Delimiter Special
hi! link SpecialComment Special
hi! link Debug Special
hi Underlined guifg=fg ctermfg=fg guibg=NONE ctermbg=NONE gui=underline cterm=underline
hi Ignore guifg=fg ctermfg=fg guibg=NONE ctermbg=NONE
hi Error guifg=#A50303 ctermfg=124 guibg=NONE ctermbg=NONE gui=bold cterm=bold
hi! link Todo DiffChange
hi MatchParen guifg=#A50303 ctermfg=124 guibg=#ffebeb ctermbg=255 gui=bold cterm=bold
hi ModeMsg guifg=#1E5571 ctermfg=23 guibg=#bcbee8 ctermbg=146 gui=NONE cterm=NONE
hi MoreMsg guifg=#1E5571 ctermfg=23 guibg=#bcbee8 ctermbg=146 gui=NONE cterm=NONE
hi WarningMsg guifg=#554717 ctermfg=58 guibg=#fee264 ctermbg=221 gui=NONE cterm=NONE
hi! link Whitespace NonText
hi TabLine guifg=#655b5b ctermfg=59 guibg=#dfd5d5 ctermbg=188 gui=NONE cterm=NONE
hi! link TabLineSel StatusLine
hi! link TabLineFill TabLine
hi Search guifg=#522F86 ctermfg=54 guibg=#d7d6f1 ctermbg=189 gui=NONE cterm=NONE
hi CurSearch guifg=#452771 ctermfg=53 guibg=#c8c5eb ctermbg=252 gui=bold cterm=bold
hi IncSearch guifg=#4a2a7a ctermfg=54 guibg=#a89edf ctermbg=146 gui=bold cterm=bold
hi! link SpellCap SpellBad
hi! link SpellLocal SpellBad
hi! link SpellRare SpellBad
hi! link Tooltip Pmenu
hi! link MsgSeparator VertSplit
hi! link EndOfBuffer NonText
hi! link QuickFixLine Search
hi! link WildMenu IncSearch
hi! link Substitute IncSearch
hi jsParensError guifg=fg ctermfg=fg guibg=NONE ctermbg=NONE
hi SpellBad guifg=fg ctermfg=fg guibg=NONE ctermbg=NONE guisp=#A50303 gui=undercurl cterm=undercurl
hi! link VertSplit NonText
hi! link Menu Pmenu
hi Title guifg=fg ctermfg=fg guibg=NONE ctermbg=NONE gui=bold,underline cterm=bold,underline
hi! link NormalFloat Pmenu
hi FloatTitle guifg=fg ctermfg=fg guibg=#ffffff ctermbg=231 gui=underline,bold cterm=underline,bold
hi FloatBorder guifg=#ffffff ctermfg=231 guibg=#ffffff ctermbg=231
hi StatusLine guifg=#423333 ctermfg=237 guibg=#d2c3c3 ctermbg=251 gui=NONE cterm=NONE
hi StatusLineNC guifg=#655b5b ctermfg=59 guibg=#dfd5d5 ctermbg=188 gui=NONE cterm=NONE
hi ColorColumn guifg=#504944 ctermfg=239 guibg=#ece7e7 ctermbg=254
hi! link CursorColumn CursorLine
hi CopilotSuggestion guifg=#716761 ctermfg=242 guibg=NONE ctermbg=NONE
hi WinBar guifg=fg ctermfg=fg guibg=NONE ctermbg=NONE guisp=#766d66 gui=underline cterm=underline
hi NonText guifg=#dbcfcf ctermfg=252 guibg=NONE ctermbg=NONE
hi WinBarNC guifg=#766d66 ctermfg=242 guibg=NONE ctermbg=NONE guisp=#dbcfcf gui=underline cterm=underline
hi! link PmenuExtraSel PmenuSel
hi PmenuSel guifg=#522F86 ctermfg=54 guibg=#d7d6f1 ctermbg=189 gui=NONE cterm=NONE
hi Pmenu guifg=#595959 ctermfg=240 guibg=#ffffff ctermbg=231
hi PmenuKind guifg=#595959 ctermfg=240 guibg=#ffffff ctermbg=231 gui=bold cterm=bold
hi PmenuKindSel guifg=#522F86 ctermfg=54 guibg=#d7d6f1 ctermbg=189 gui=bold cterm=bold
hi PmenuExtra guifg=#656565 ctermfg=241 guibg=#ffffff ctermbg=231
hi PmenuSbar guifg=NONE ctermfg=NONE guibg=NONE ctermbg=NONE
hi PmenuThumb guifg=NONE ctermfg=NONE guibg=#e2e2e2 ctermbg=254
hi Question guifg=fg ctermfg=fg guibg=NONE ctermbg=NONE
hi Visual guifg=#522F86 ctermfg=54 guibg=#d7d6f1 ctermbg=189 gui=NONE cterm=NONE
hi VisualNOS guifg=#60389b ctermfg=61 guibg=#e6e5f6 ctermbg=255
hi Scrollbar guifg=NONE ctermfg=NONE guibg=#dfd5d5 ctermbg=188
hi! link DiagnosticError DiffDelete
hi! link DiagnosticHint DiffChange
hi! link DiagnosticInfo DiffText
hi! link DiagnosticWarn DiffChange
hi! link DiagnosticUnnecessary DiagnosticHint
hi DiagnosticFloatingError guifg=#A50303 ctermfg=124 guibg=NONE ctermbg=NONE gui=NONE cterm=NONE
hi DiagnosticFloatingHint guifg=#38551E ctermfg=237 guibg=NONE ctermbg=NONE gui=NONE cterm=NONE
hi DiagnosticFloatingInfo guifg=#1E5571 ctermfg=23 guibg=NONE ctermbg=NONE gui=NONE cterm=NONE
hi DiagnosticFloatingWarn guifg=#554717 ctermfg=58 guibg=NONE ctermbg=NONE gui=NONE cterm=NONE
hi DiagnosticUnderlineError guifg=NONE ctermfg=NONE guibg=NONE ctermbg=NONE guisp=#A50303 gui=undercurl cterm=undercurl
hi DiagnosticUnderlineHint guifg=NONE ctermfg=NONE guibg=NONE ctermbg=NONE guisp=#38551E gui=undercurl cterm=undercurl
hi DiagnosticUnderlineInfo guifg=NONE ctermfg=NONE guibg=NONE ctermbg=NONE guisp=#1E5571 gui=undercurl cterm=undercurl
hi DiagnosticUnderlineWarn guifg=NONE ctermfg=NONE guibg=NONE ctermbg=NONE guisp=#736521 gui=undercurl cterm=undercurl
hi DiagnosticSignError guifg=#A50303 ctermfg=124 guibg=NONE ctermbg=NONE gui=NONE cterm=NONE
hi DiagnosticSignHint guifg=#38551E ctermfg=237 guibg=NONE ctermbg=NONE gui=NONE cterm=NONE
hi DiagnosticSignInfo guifg=#1E5571 ctermfg=23 guibg=NONE ctermbg=NONE gui=NONE cterm=NONE
hi DiagnosticSignWarn guifg=#736521 ctermfg=94 guibg=NONE ctermbg=NONE gui=NONE cterm=NONE
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
hi GitSignsChange guifg=#aa9037 ctermfg=137 guibg=NONE ctermbg=NONE
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
hi TreesitterContextBottom guifg=NONE ctermfg=NONE guibg=NONE ctermbg=NONE guisp=#c7b1b1 gui=underline cterm=underline
hi TreesitterContext guifg=#504944 ctermfg=239 guibg=#dbcfcf ctermbg=252 gui=NONE cterm=NONE
hi! link LeapMatch CurSearch
hi! link LeapLabelPrimary CurSearch
hi LeapLabelSecondary guifg=#522F86 ctermfg=54 guibg=#522F86 ctermbg=54 gui=NONE cterm=NONE
hi LeapLabelSelected guifg=#522F86 ctermfg=54 guibg=#d7d6f1 ctermbg=189 gui=NONE cterm=NONE
hi WhichKeySeperator guifg=fg ctermfg=fg guibg=NONE ctermbg=NONE
hi! link WhichKeyFloating Pmenu
hi! link TelescopeMatching CurSearch
hi! link TelescopeSelection Search
if has('nvim')
	hi SpecialKey guifg=#736521 ctermfg=94 guibg=#fee264 ctermbg=221
	let g:terminal_color_0 = '#504944'
	let g:terminal_color_1 = '#d30505'
	let g:terminal_color_2 = '#5e8a36'
	let g:terminal_color_3 = '#bba53b'
	let g:terminal_color_4 = '#296e92'
	let g:terminal_color_5 = '#60389b'
	let g:terminal_color_6 = '#377166'
	let g:terminal_color_7 = '#bfb8b3'
	let g:terminal_color_8 = '#69605a'
	let g:terminal_color_9 = '#d30505'
	let g:terminal_color_10 = '#72a643'
	let g:terminal_color_11 = '#d9c046'
	let g:terminal_color_12 = '#296e92'
	let g:terminal_color_13 = '#6e41b1'
	let g:terminal_color_14 = '#377166'
	let g:terminal_color_15 = '#e4dbdb'

	hi @keyword.coroutine guifg=fg ctermfg=fg guibg=NONE ctermbg=NONE gui=bold cterm=bold
	hi! link @text.literal helpExample
	hi! link @constant.builtin Constant
	hi @function guifg=fg ctermfg=fg guibg=NONE ctermbg=NONE gui=underline,bold cterm=underline,bold
	hi @function.method.call guifg=fg ctermfg=fg guibg=NONE ctermbg=NONE gui=italic cterm=italic
	hi @text.strong guifg=fg ctermfg=fg guibg=NONE ctermbg=NONE gui=bold cterm=bold
	hi @text.emphasis guifg=fg ctermfg=fg guibg=NONE ctermbg=NONE gui=bold cterm=bold
	hi @method guifg=fg ctermfg=fg guibg=NONE ctermbg=NONE gui=underline,bold cterm=underline,bold
	hi @field guifg=fg ctermfg=fg guibg=NONE ctermbg=NONE gui=NONE cterm=NONE
	hi @symbol guifg=fg ctermfg=fg guibg=NONE ctermbg=NONE gui=bold cterm=bold
	hi! link @exception Normal
	hi @function.call guifg=fg ctermfg=fg guibg=NONE ctermbg=NONE gui=italic cterm=italic
	hi @method.call guifg=fg ctermfg=fg guibg=NONE ctermbg=NONE gui=italic cterm=italic
	hi @function.builtin guifg=fg ctermfg=fg guibg=NONE ctermbg=NONE gui=NONE cterm=NONE
	hi @namespace.builtin guifg=fg ctermfg=fg guibg=NONE ctermbg=NONE gui=NONE cterm=NONE
	hi @keyword.function guifg=fg ctermfg=fg guibg=NONE ctermbg=NONE gui=NONE cterm=NONE
	hi @keyword.operator guifg=fg ctermfg=fg guibg=NONE ctermbg=NONE gui=bold cterm=bold
	hi @keyword.return guifg=fg ctermfg=fg guibg=NONE ctermbg=NONE gui=bold cterm=bold

	hi @lsp.type.function guifg=fg ctermfg=fg guibg=NONE ctermbg=NONE gui=NONE cterm=NONE
	hi @lsp.type.method guifg=fg ctermfg=fg guibg=NONE ctermbg=NONE gui=NONE cterm=NONE
	hi @lsp.typemod.function.defaultLibrary guifg=fg ctermfg=fg guibg=NONE ctermbg=NONE gui=NONE cterm=NONE
	hi @lsp.typemod.function.declaration guifg=fg ctermfg=fg guibg=NONE ctermbg=NONE gui=underline,bold cterm=underline,bold
	hi @lsp.typemod.member.declaration guifg=fg ctermfg=fg guibg=NONE ctermbg=NONE gui=underline,bold cterm=underline,bold
	hi @lsp.typemod.variable.declaration guifg=fg ctermfg=fg guibg=NONE ctermbg=NONE gui=none cterm=none
else
	hi! link StatusLineTerm StatusLine
	hi! link StatusLineTermNC StatusLineNC
	hi! link SpecialKey Whitespace
	let g:terminal_ansi_colors = [
		\ '#504944',
		\ '#d30505',
		\ '#5e8a36',
		\ '#bba53b',
		\ '#296e92',
		\ '#60389b',
		\ '#377166',
		\ '#bfb8b3',
		\ '#69605a',
		\ '#d30505',
		\ '#72a643',
		\ '#d9c046',
		\ '#296e92',
		\ '#6e41b1',
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
	hi Comment guifg=#522F86 ctermfg=54 guibg=NONE ctermbg=NONE
elseif s:yui_emphasized_comments_value ==? 0
	hi Comment guifg=#766d66 ctermfg=242 guibg=NONE ctermbg=NONE
endif
	

let s:yui_comments_value = get(g:, 'yui_comments', 'normal')
if s:yui_comments_value ==? 'normal'
	hi Comment guifg=fg ctermfg=fg guibg=NONE ctermbg=NONE gui=italic cterm=italic
elseif s:yui_comments_value ==? 'fade'
	hi Comment guifg=#bcada2 ctermfg=145 guibg=NONE ctermbg=NONE gui=italic cterm=italic
elseif s:yui_comments_value ==? 'emphasize'
	hi Comment guifg=#6e41b1 ctermfg=61 guibg=NONE ctermbg=NONE gui=NONE cterm=NONE
elseif s:yui_comments_value ==? 'bg'
	hi Comment guifg=NONE ctermfg=NONE guibg=#e6dede ctermbg=254 gui=NONE cterm=NONE
endif
	
