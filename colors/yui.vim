	set background=light

	if (!has('gui_running') && &t_Co < 256 && !has('nvim'))
		finish
	endif

	hi clear

	if exists('syntax_on')
		syntax reset
	endif

	let g:colors_name = 'yui'

	hi Normal guifg=#3D3C44 ctermfg=238 guibg=#F1EDED ctermbg=255
	hi NormalNC guifg=#303036 ctermfg=236 guibg=NONE ctermbg=NONE
	hi! link MsgArea Normal
	hi Conceal guifg=#303036 ctermfg=236 guibg=NONE ctermbg=NONE gui=NONE cterm=NONE
	hi! link ToolbarButton TabLine
	hi! link ToolbarLine TabLineFill
	hi Cursor guifg=bg ctermfg=bg guibg=fg ctermbg=fg
	hi! link CursorLineNr CursorLine
	hi CursorLine guifg=NONE ctermfg=NONE guibg=#e6dfdf ctermbg=254 gui=NONE cterm=NONE
	hi! link lCursor Cursor
	hi! link CursorIM Cursor
	hi WinSeparator guifg=#d3c5c5 ctermfg=251
	hi DiffAdd guifg=#346e27 ctermfg=238 guibg=#C5E8BF ctermbg=187 gui=NONE cterm=NONE
	hi DiffChange guifg=#906100 ctermfg=94 guibg=#ffedc7 ctermbg=230 gui=NONE cterm=NONE
	hi DiffDelete guifg=#B22E32 ctermfg=125 guibg=#F4D7D7 ctermbg=224 gui=NONE cterm=NONE
	hi DiffText guifg=#3856d1 ctermfg=62 guibg=#DDE4F8 ctermbg=189 gui=NONE cterm=NONE
	hi Directory guifg=fg ctermfg=fg guibg=NONE ctermbg=NONE
	hi ErrorMsg guifg=#B22E32 ctermfg=125 guibg=#F4D7D7 ctermbg=224 gui=bold cterm=bold
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
	hi Special guifg=fg ctermfg=fg guibg=NONE ctermbg=NONE gui=bold cterm=bold
	hi! link SpecialChar Special
	hi! link Tag Special
	hi! link Delimiter Special
	hi! link SpecialComment Special
	hi! link Debug Special
	hi Underlined guifg=fg ctermfg=fg guibg=NONE ctermbg=NONE gui=underline cterm=underline
	hi Ignore guifg=fg ctermfg=fg guibg=NONE ctermbg=NONE
	hi Error guifg=#B22E32 ctermfg=125 guibg=NONE ctermbg=NONE gui=bold cterm=bold
	hi! link Todo DiffChange
	hi MatchParen guifg=NONE ctermfg=NONE guibg=#d3c5c5 ctermbg=251 gui=NONE cterm=NONE
	hi ModeMsg guifg=#3856d1 ctermfg=62 guibg=#DDE4F8 ctermbg=189 gui=NONE cterm=NONE
	hi MoreMsg guifg=#3856d1 ctermfg=62 guibg=#DDE4F8 ctermbg=189 gui=NONE cterm=NONE
	hi WarningMsg guifg=#906100 ctermfg=94 guibg=#ffedc7 ctermbg=230 gui=NONE cterm=NONE
	hi Whitespace guifg=#b0b0b6 ctermfg=249 guibg=NONE ctermbg=NONE gui=NONE cterm=NONE
	hi TabLine guifg=#7e7d87 ctermfg=244 guibg=#e6dfdf ctermbg=254 gui=NONE cterm=NONE
	hi! link TabLineSel StatusLine
	hi! link TabLineFill TabLine
	hi Search guifg=#303036 ctermfg=236 guibg=#dcd2d2 ctermbg=188 gui=NONE cterm=NONE
	hi CurSearch guifg=#DDE4F8 ctermfg=189 guibg=#3856d1 ctermbg=62 gui=NONE cterm=NONE
	hi! link IncSearch CurSearch
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
	hi SpellBad guifg=fg ctermfg=fg guibg=NONE ctermbg=NONE guisp=#F4D7D7 gui=undercurl cterm=undercurl
	hi VertSplit guifg=#d3c5c5 ctermfg=251 guibg=NONE ctermbg=NONE gui=NONE cterm=NONE
	hi! link Menu Pmenu
	hi Title guifg=fg ctermfg=fg guibg=NONE ctermbg=NONE gui=bold,underline cterm=bold,underline
	hi NormalFloat guifg=fg ctermfg=fg guibg=NONE ctermbg=NONE
	hi FloatTitle guifg=fg ctermfg=fg guibg=#e6dfdf ctermbg=254 gui=underline,bold cterm=underline,bold
	hi FloatBorder guifg=#3856d1 ctermfg=62 guibg=NONE ctermbg=NONE
	hi StatusLine guifg=#37363e ctermfg=237 guibg=#e6dfdf ctermbg=254 gui=NONE cterm=NONE
	hi StatusLineNC guifg=#7e7d87 ctermfg=244 guibg=#e6dfdf ctermbg=254 gui=NONE cterm=NONE
	hi ColorColumn guifg=#3D3C44 ctermfg=238 guibg=#F1EDED ctermbg=255
	hi! link CursorColumn CursorLine
	hi CopilotSuggestion guifg=#85848e ctermfg=102 guibg=NONE ctermbg=NONE
	hi WinBar guifg=#303036 ctermfg=236 guibg=#dcd2d2 ctermbg=188 guisp=#cbb9b9 gui=underline cterm=underline
	hi NonText guifg=#dcd2d2 ctermfg=188 guibg=NONE ctermbg=NONE
	hi WinBarNC guifg=#777681 ctermfg=243 guibg=#e6dfdf ctermbg=254 guisp=#cbb9b9 gui=underline cterm=underline
	hi! link PmenuExtraSel PmenuSel
	hi! link LspSignatureActiveParameter Search
	hi PmenuSel guifg=#2a2a30 ctermfg=236 guibg=#d3c5c5 ctermbg=251 gui=NONE cterm=NONE
	hi Pmenu guifg=#37363e ctermfg=237 guibg=#e6dfdf ctermbg=254
	hi PmenuKind guifg=#37363e ctermfg=237 guibg=#e6dfdf ctermbg=254 gui=bold cterm=bold
	hi PmenuKindSel guifg=#2a2a30 ctermfg=236 guibg=#d3c5c5 ctermbg=251 gui=bold cterm=bold
	hi PmenuExtra guifg=#37363e ctermfg=237 guibg=#e6dfdf ctermbg=254
	hi PmenuSbar guifg=NONE ctermfg=NONE guibg=#e6dfdf ctermbg=254
	hi PmenuThumb guifg=NONE ctermfg=NONE guibg=#cbb9b9 ctermbg=250
	hi Question guifg=fg ctermfg=fg guibg=NONE ctermbg=NONE
	hi Visual guifg=#303036 ctermfg=236 guibg=#dcd2d2 ctermbg=188 gui=NONE cterm=NONE
	hi VisualNOS guifg=NONE ctermfg=NONE guibg=#d3c5c5 ctermbg=251
	hi Scrollbar guifg=NONE ctermfg=NONE guibg=#dcd2d2 ctermbg=188
	hi DiagnosticError guifg=#B22E32 ctermfg=125 guibg=#F4D7D7 ctermbg=224 gui=NONE cterm=NONE
	hi DiagnosticOk guifg=#346e27 ctermfg=238 guibg=#C5E8BF ctermbg=187 gui=NONE cterm=NONE
	hi DiagnosticHint guifg=#3856d1 ctermfg=62 guibg=#DDE4F8 ctermbg=189 gui=NONE cterm=NONE
	hi DiagnosticInfo guifg=#3856d1 ctermfg=62 guibg=#DDE4F8 ctermbg=189 gui=NONE cterm=NONE
	hi DiagnosticWarn guifg=#906100 ctermfg=94 guibg=#ffedc7 ctermbg=230 gui=NONE cterm=NONE
	hi DiagnosticUnderlineError guifg=NONE ctermfg=NONE guibg=NONE ctermbg=NONE guisp=#B22E32 gui=underline cterm=underline
	hi DiagnosticUnderlineHint guifg=NONE ctermfg=NONE guibg=NONE ctermbg=NONE guisp=#3856d1 gui=underline cterm=underline
	hi DiagnosticUnderlineInfo guifg=NONE ctermfg=NONE guibg=NONE ctermbg=NONE guisp=#3856d1 gui=underline cterm=underline
	hi DiagnosticUnderlineWarn guifg=NONE ctermfg=NONE guibg=NONE ctermbg=NONE guisp=#b17900 gui=underline cterm=underline
	hi DiagnosticUnderlineOk guifg=NONE ctermfg=NONE guibg=NONE ctermbg=NONE guisp=#346e27 gui=underline cterm=underline
	hi DiagnosticSignError guifg=#B22E32 ctermfg=125 guibg=NONE ctermbg=NONE gui=NONE cterm=NONE
	hi DiagnosticSignOk guifg=#346e27 ctermfg=238 guibg=NONE ctermbg=NONE gui=NONE cterm=NONE
	hi DiagnosticSignHint guifg=#3856d1 ctermfg=62 guibg=NONE ctermbg=NONE gui=NONE cterm=NONE
	hi DiagnosticSignInfo guifg=#3856d1 ctermfg=62 guibg=NONE ctermbg=NONE gui=NONE cterm=NONE
	hi DiagnosticSignWarn guifg=#b17900 ctermfg=136 guibg=NONE ctermbg=NONE gui=NONE cterm=NONE
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
	hi mkHeading guifg=NONE ctermfg=NONE guibg=NONE ctermbg=NONE gui=underline cterm=underline
	hi mkItalic guifg=NONE ctermfg=NONE guibg=NONE ctermbg=NONE gui=italic cterm=italic
	hi markdownBold guifg=NONE ctermfg=NONE guibg=NONE ctermbg=NONE gui=bold cterm=bold
	hi markdownUrl guifg=NONE ctermfg=NONE guibg=NONE ctermbg=NONE gui=underline cterm=underline
	hi markdownHeadingDelimiter guifg=NONE ctermfg=NONE guibg=NONE ctermbg=NONE gui=underline cterm=underline
	hi mkCode guifg=fg ctermfg=fg guibg=NONE ctermbg=NONE
	hi markdownCodeDelimiter guifg=NONE ctermfg=NONE guibg=NONE ctermbg=NONE
	hi markdownBoldDelimiter guifg=NONE ctermfg=NONE guibg=NONE ctermbg=NONE
	hi markdownItalicDelimiter guifg=NONE ctermfg=NONE guibg=NONE ctermbg=NONE
	hi markdownBoldItalicDelimiter guifg=NONE ctermfg=NONE guibg=NONE ctermbg=NONE
	hi markdownLinkDelimiter guifg=NONE ctermfg=NONE guibg=NONE ctermbg=NONE
	hi markdownLinkTextDelimiter guifg=NONE ctermfg=NONE guibg=NONE ctermbg=NONE
	hi helpCommand guifg=fg ctermfg=fg guibg=NONE ctermbg=NONE gui=bold cterm=bold
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
	hi! link helpBacktick Constant
	hi! link helpDeprecated DiffDelete
	hi! link mkdCodeDelimiter mkCode
	hi! link markdownItalic mkItalic
	hi! link markdownH1 mkdHeading
	hi! link markdownH1Delimiter markdownHeadingDelimiter
	hi! link markdownH2 mkdHeading
	hi! link markdownH3 mkdHeading
	hi! link markdownH4 mkdHeading
	hi! link diffAdded DiffAdd
	hi! link diffSubname diffLine
	hi! link diffChanged DiffChange
	hi! link diffRemoved DiffDelete
	hi! link diffComment Comment
	hi! link GitSignsAddNr GitSignsAdd
	hi! link GitSignsAddLn GitSignsAdd
	hi! link GitSignsChangeNr GitSignsChange
	hi! link GitSignsChangeLn GitSignsChange
	hi! link GitSignsDeleteNr GitSignsDelete
	hi! link GitSignsDeleteLn GitSignsDelete
	hi! link IndentBlanklineChar VertSplit
	hi! link Sneak Visual
	hi! link SneakScope IncSearch
	hi! link SneakLabel Search
	hi! link DirvishArg Search
	hi! link HlSearchLensNear StatusLine
	hi! link HlSearchLens StatusLineNC
	hi! link HlSearchNear Search
	hi! link ConflictMarkerBegin DiffAdd
	hi! link ConflictMarkerOurs DiffAdd
	hi! link ConflictMarkerTheirs DiffText
	hi! link ConflictMarkerEnd DiffText
	hi! link LeapMatch CurSearch
	hi! link LeapLabelPrimary CurSearch
	hi! link WhichKeyFloating Pmenu
	hi! link TelescopeMatching CurSearch
	hi! link TelescopeSelection Search
	hi markdownLinkText guifg=fg ctermfg=fg guibg=NONE ctermbg=NONE
	hi diffLine guifg=fg ctermfg=fg guibg=NONE ctermbg=NONE gui=bold,underline cterm=bold,underline
	hi gitHashAbbrev guifg=fg ctermfg=fg guibg=NONE ctermbg=NONE gui=underline cterm=underline
	hi GitSignsAdd guifg=#346e27 ctermfg=238 guibg=NONE ctermbg=NONE
	hi GitSignsChange guifg=#b17900 ctermfg=136 guibg=NONE ctermbg=NONE
	hi GitSignsDelete guifg=#B22E32 ctermfg=125 guibg=NONE ctermbg=NONE
	hi DirvishPathTail guifg=NONE ctermfg=NONE guibg=NONE ctermbg=NONE gui=bold cterm=bold
	hi jsxOpenPunct guifg=fg ctermfg=fg guibg=NONE ctermbg=NONE
	hi TreesitterContextBottom guifg=NONE ctermfg=NONE guibg=NONE ctermbg=NONE guisp=#d3c5c5 gui=underline cterm=underline
	hi TreesitterContext guifg=NONE ctermfg=NONE guibg=#e6dfdf ctermbg=254 gui=NONE cterm=NONE
	hi! link TreesitterContextLineNumberBottom TreesitterContextBottom
	hi TreesitterContextSeparator guifg=#d3c5c5 ctermfg=251 guibg=NONE ctermbg=NONE gui=NONE cterm=NONE
	hi LeapLabelSecondary guifg=#303036 ctermfg=236 guibg=#303036 ctermbg=236 gui=NONE cterm=NONE
	hi LeapLabelSelected guifg=#303036 ctermfg=236 guibg=#dcd2d2 ctermbg=188 gui=NONE cterm=NONE
	hi WhichKeySeperator guifg=fg ctermfg=fg guibg=NONE ctermbg=NONE

	if has('nvim')
		hi SpecialKey guifg=#3856d1 ctermfg=62 guibg=#DDE4F8 ctermbg=189
		let g:terminal_color_0 = '#3D3C44'
		let g:terminal_color_1 = '#B22E32'
		let g:terminal_color_2 = '#346e27'
		let g:terminal_color_3 = '#b17900'
		let g:terminal_color_4 = '#3856d1'
		let g:terminal_color_5 = '#8f35bd'
		let g:terminal_color_6 = '#2c6a73'
		let g:terminal_color_7 = '#909098'
		let g:terminal_color_8 = '#3D3C44'
		let g:terminal_color_9 = '#B22E32'
		let g:terminal_color_10 = '#346e27'
		let g:terminal_color_11 = '#b17900'
		let g:terminal_color_12 = '#3856d1'
		let g:terminal_color_13 = '#8f35bd'
		let g:terminal_color_14 = '#2c6a73'
		let g:terminal_color_15 = '#909098'
		
		hi @function.haskell guifg=fg ctermfg=fg gui=NONE cterm=NONE
		hi @variable.haskell guifg=fg ctermfg=fg gui=NONE cterm=NONE
		hi @variable.parameter.haskell guifg=fg ctermfg=fg gui=NONE cterm=NONE
		hi @keyword.haskell guifg=fg ctermfg=fg gui=bold cterm=bold
		hi @operator.haskell guifg=fg ctermfg=fg gui=NONE cterm=NONE

		hi! link @diff.plus DiffAdd
		hi! link @diff.minus DiffDelete
		hi! link @diff.delta DiffChange

		hi @keyword.coroutine guifg=fg ctermfg=fg gui=bold cterm=bold
		hi! link @text.literal helpExample
		hi! link @constant.builtin Constant
		hi! link @function @lsp.typemod.function.declaration
		hi! link @function.method.call @method.call
		hi @text.strong guifg=fg ctermfg=fg gui=bold cterm=bold
		hi! link @text.emphasis @text.strong
		hi! link @method @lsp.typemod.member.declaration
		hi @field guifg=fg ctermfg=fg gui=NONE cterm=NONE
		hi @variable guifg=fg ctermfg=fg gui=NONE cterm=NONE
		hi @symbol guifg=fg ctermfg=fg gui=bold cterm=bold
		hi! link @exception Normal
		hi! link @function.call @method.call
		hi @method.call guifg=fg ctermfg=fg gui=italic cterm=italic
		hi! link @function.builtin @lsp.typemod.function.defaultLibrary
		hi! link @namespace.builtin @lsp.typemod.function.defaultLibrary
		hi @keyword.function guifg=fg ctermfg=fg gui=NONE cterm=NONE
		hi @keyword.operator guifg=fg ctermfg=fg gui=NONE cterm=NONE
		hi @keyword.return guifg=fg ctermfg=fg gui=NONE cterm=NONE

		hi @lsp.type.function guifg=fg ctermfg=fg gui=NONE cterm=NONE
		hi! link @lsp.type.method @lsp.type.function
		hi @lsp.typemod.function.defaultLibrary guifg=fg ctermfg=fg gui=NONE cterm=NONE
		hi @lsp.typemod.function.declaration guifg=fg ctermfg=fg gui=bold cterm=bold
		hi! link @lsp.typemod.member.declaration @lsp.typemod.function.declaration
		hi @lsp.typemod.variable.declaration guifg=fg ctermfg=fg gui=NONE cterm=NONE
	else
		hi LspCodeLens guifg=#cbb9b9 ctermfg=250 guibg=NONE ctermbg=NONE
		hi LspInlayHint guifg=#3856d1 ctermfg=62 guibg=NONE ctermbg=NONE
		hi! link StatusLineTerm StatusLine
		hi! link StatusLineTermNC StatusLineNC
		hi! link SpecialKey Whitespace
		let g:terminal_ansi_colors = [
			\ '#3D3C44',
			\ '#B22E32',
			\ '#346e27',
			\ '#b17900',
			\ '#3856d1',
			\ '#8f35bd',
			\ '#2c6a73',
			\ '#909098',
			\ '#3D3C44',
			\ '#B22E32',
			\ '#346e27',
			\ '#b17900',
			\ '#3856d1',
			\ '#8f35bd',
			\ '#2c6a73',
			\ '#909098']
	endif


	let s:yui_folds_value = get(g:, 'yui_folds', 'fade')
	if s:yui_folds_value ==? 'fade'
		hi FoldColumn guifg=#85848e ctermfg=102 guibg=NONE ctermbg=NONE
		hi! link Folded FoldColumn
	elseif s:yui_folds_value ==? 'emphasize'
		hi FoldColumn guifg=#303036 ctermfg=236 guibg=NONE ctermbg=NONE
		hi! link Folded FoldColumn
	endif


	let s:yui_line_numbers_value = get(g:, 'yui_line_numbers', 'fade')
	if s:yui_line_numbers_value ==? 'fade'
		hi SignColumn guifg=#85848e ctermfg=102 guibg=NONE ctermbg=NONE
		hi! link LineNr SignColumn
	elseif s:yui_line_numbers_value ==? 'emphasize'
		hi SignColumn guifg=#303036 ctermfg=236 guibg=NONE ctermbg=NONE
		hi! link LineNr SignColumn
	endif


	let s:yui_emphasized_comments_value = get(g:, 'yui_emphasized_comments', 0)
	if s:yui_emphasized_comments_value ==? 1
		hi Comment guifg=#a34428 ctermfg=130 guibg=NONE ctermbg=NONE
	elseif s:yui_emphasized_comments_value ==? 0
		hi Comment guifg=#232328 ctermfg=235 guibg=NONE ctermbg=NONE
	endif


	let s:yui_comments_value = get(g:, 'yui_comments', 'normal')
	if s:yui_comments_value ==? 'normal'
		hi Comment guifg=fg ctermfg=fg guibg=NONE ctermbg=NONE gui=italic cterm=italic
	elseif s:yui_comments_value ==? 'fade'
		hi Comment guifg=#85848e ctermfg=102 guibg=NONE ctermbg=NONE gui=italic cterm=italic
	elseif s:yui_comments_value ==? 'emphasize'
		hi Comment guifg=#a34428 ctermfg=130 guibg=NONE ctermbg=NONE gui=NONE cterm=NONE
	elseif s:yui_comments_value ==? 'bg'
		hi Comment guifg=#a34428 ctermfg=130 guibg=#F5DCD6 ctermbg=224 gui=NONE cterm=NONE
	endif
	
