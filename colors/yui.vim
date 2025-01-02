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
	hi! link NormalNC Normal
	hi! link MsgArea Normal
	hi Conceal guifg=#3D3C44 ctermfg=238 guibg=NONE ctermbg=NONE gui=NONE cterm=NONE
	hi! link ToolbarButton TabLine
	hi! link ToolbarLine TabLineFill
	hi Cursor guifg=#e6dfdf ctermfg=254 guibg=fg ctermbg=fg
	hi! link CursorLineNr CursorLine
	hi CursorLine guifg=NONE ctermfg=NONE guibg=#e6dfdf ctermbg=254 gui=NONE cterm=NONE
	hi! link lCursor Cursor
	hi! link CursorIM Cursor
	hi WinSeparator guifg=#bca3a3 ctermfg=248
	hi DiffAdd guifg=#565633 ctermfg=239 guibg=#e8e792 ctermbg=186 gui=NONE cterm=NONE
	hi DiffChange guifg=NONE ctermfg=NONE guibg=NONE ctermbg=NONE gui=NONE cterm=NONE
	hi DiffDelete guifg=#B22E32 ctermfg=125 guibg=#f2d8d8 ctermbg=224 gui=NONE cterm=NONE
	hi DiffText guifg=#3856d1 ctermfg=62 guibg=#ccc2f2 ctermbg=183 gui=NONE cterm=NONE
	hi Directory guifg=fg ctermfg=fg guibg=NONE ctermbg=NONE
	hi ErrorMsg guifg=#B22E32 ctermfg=125 guibg=#f2d8d8 ctermbg=224 gui=none cterm=none
	hi Constant guifg=#346e27 ctermfg=238 guibg=NONE ctermbg=NONE gui=NONE cterm=NONE
	hi! link String Constant
	hi @punctuation guifg=#9f8a99 ctermfg=246
	hi! link Character Constant
	hi! link Number Constant
	hi Boolean guifg=#346e27 ctermfg=238 guibg=NONE ctermbg=NONE gui=bold cterm=bold
	hi! link Float Constant
	hi Identifier guifg=fg ctermfg=fg guibg=NONE ctermbg=NONE gui=NONE cterm=NONE
	hi Function guifg=fg ctermfg=fg guibg=NONE ctermbg=NONE
	hi Statement guifg=NONE ctermfg=NONE guibg=NONE ctermbg=NONE gui=bold cterm=bold
	hi Repeat guifg=fg ctermfg=fg guibg=NONE ctermbg=NONE gui=bold cterm=bold
	hi Conditional guifg=fg ctermfg=fg guibg=NONE ctermbg=NONE gui=bold cterm=bold
	hi Label guifg=fg ctermfg=fg guibg=NONE ctermbg=NONE gui=NONE cterm=NONE
	hi! link Operator Statement
	hi! link Keyword Statement
	hi! link Exception Statement
	hi PreProc guifg=fg ctermfg=fg guibg=NONE ctermbg=NONE gui=bold cterm=bold
	hi! link Include PreProc
	hi! link Define PreProc
	hi! link Macro PreProc
	hi! link PreCondit PreProc
	hi Type guifg=NONE ctermfg=NONE guibg=NONE ctermbg=NONE gui=bold cterm=bold
	hi! link StorageClass Type
	hi! link Structure Type
	hi Typedef guifg=NONE ctermfg=NONE guibg=NONE ctermbg=NONE gui=italic cterm=italic
	hi Special guifg=NONE ctermfg=NONE guibg=NONE ctermbg=NONE gui=bold cterm=bold
	hi! link SpecialChar Special
	hi Tag guifg=NONE ctermfg=NONE guibg=NONE ctermbg=NONE gui=NONE cterm=NONE
	hi! link Delimiter Special
	hi! link SpecialComment Special
	hi! link Debug Special
	hi Underlined guifg=NONE ctermfg=NONE guibg=NONE ctermbg=NONE gui=underline cterm=underline
	hi Ignore guifg=fg ctermfg=fg guibg=NONE ctermbg=NONE
	hi Error guifg=#B22E32 ctermfg=125 guibg=NONE ctermbg=NONE gui=bold cterm=bold
	hi! link Todo DiffChange
	hi MatchParen guifg=NONE ctermfg=NONE guibg=NONE ctermbg=NONE gui=bold,underline cterm=bold,underline
	hi ModeMsg guifg=#3856d1 ctermfg=62 guibg=#ccc2f2 ctermbg=183 gui=NONE cterm=NONE
	hi MoreMsg guifg=#3856d1 ctermfg=62 guibg=#ccc2f2 ctermbg=183 gui=NONE cterm=NONE
	hi WarningMsg guifg=NONE ctermfg=NONE guibg=NONE ctermbg=NONE gui=NONE cterm=NONE
	hi Whitespace guifg=#e1d9da ctermfg=253 guibg=NONE ctermbg=NONE gui=NONE cterm=NONE
	hi TabLine guifg=#937f8d ctermfg=245 guibg=#dcd2d2 ctermbg=188 gui=NONE cterm=NONE
	hi! link TabLineSel StatusLine
	hi! link TabLineFill TabLine
	hi Search guifg=#dcd2d2 ctermfg=188 guibg=#3D3C44 ctermbg=238 gui=NONE cterm=NONE
	hi CurSearch guifg=#ccc2f2 ctermfg=183 guibg=#3856d1 ctermbg=62 gui=NONE cterm=NONE
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
	hi SpellBad guifg=fg ctermfg=fg guibg=NONE ctermbg=NONE guisp=#f2d8d8 gui=undercurl cterm=undercurl
	hi VertSplit guifg=#bca3a3 ctermfg=248 guibg=NONE ctermbg=NONE gui=NONE cterm=NONE
	hi! link Menu Pmenu
	hi Title guifg=fg ctermfg=fg guibg=NONE ctermbg=NONE gui=bold cterm=bold
	hi NormalFloat guifg=fg ctermfg=fg guibg=NONE ctermbg=NONE
	hi FloatTitle guifg=fg ctermfg=fg guibg=#dcd2d2 ctermbg=188 gui=underline,bold cterm=underline,bold
	hi FloatBorder guifg=#bca3a3 ctermfg=248 guibg=NONE ctermbg=NONE
	hi StatusLine guifg=#3D3C44 ctermfg=238 guibg=#dcd2d2 ctermbg=188 gui=NONE cterm=NONE
	hi StatusLineNC guifg=#937f8d ctermfg=245 guibg=#dcd2d2 ctermbg=188 gui=NONE cterm=NONE
	hi ColorColumn guifg=#3D3C44 ctermfg=238 guibg=#e6dfdf ctermbg=254
	hi! link CursorColumn CursorLine
	hi CopilotSuggestion guifg=#9f8a99 ctermfg=246 guibg=NONE ctermbg=NONE
	hi WinBar guifg=#3D3C44 ctermfg=238 guibg=#dcd2d2 ctermbg=188 guisp=#b08f8f gui=underline cterm=underline
	hi NonText guifg=#dcd2d2 ctermfg=188 guibg=NONE ctermbg=NONE
	hi WinBarNC guifg=#937f8d ctermfg=245 guibg=#e6dfdf ctermbg=254 guisp=#b08f8f gui=underline cterm=underline
	hi! link PmenuExtraSel PmenuSel
	hi! link LspSignatureActiveParameter Search
	hi PmenuSel guifg=#565633 ctermfg=239 guibg=#e8e792 ctermbg=186 gui=NONE cterm=NONE
	hi Pmenu guifg=#3D3C44 ctermfg=238 guibg=#dcd2d2 ctermbg=188
	hi PmenuKind guifg=#3D3C44 ctermfg=238 guibg=#dcd2d2 ctermbg=188 gui=bold cterm=bold
	hi PmenuKindSel guifg=#565633 ctermfg=239 guibg=#e8e792 ctermbg=186 gui=bold cterm=bold
	hi PmenuExtra guifg=#3D3C44 ctermfg=238 guibg=#dcd2d2 ctermbg=188
	hi PmenuSbar guifg=NONE ctermfg=NONE guibg=#dcd2d2 ctermbg=188
	hi PmenuThumb guifg=NONE ctermfg=NONE guibg=#d3c5c5 ctermbg=251
	hi Question guifg=fg ctermfg=fg guibg=NONE ctermbg=NONE
	hi Visual guifg=#dcd2d2 ctermfg=188 guibg=#3D3C44 ctermbg=238 gui=NONE cterm=NONE
	hi VisualNOS guifg=NONE ctermfg=NONE guibg=#d3c5c5 ctermbg=251
	hi Scrollbar guifg=NONE ctermfg=NONE guibg=#dcd2d2 ctermbg=188
	hi DiagnosticError guifg=#B22E32 ctermfg=125 guibg=#f2d8d8 ctermbg=224 gui=NONE cterm=NONE
	hi DiagnosticUnnecessary guifg=#615413 ctermfg=58 guibg=#fde37c ctermbg=222 gui=NONE cterm=NONE
	hi DiagnosticOk guifg=#565633 ctermfg=239 guibg=#e8e792 ctermbg=186 gui=NONE cterm=NONE
	hi DiagnosticHint guifg=#3856d1 ctermfg=62 guibg=#ccc2f2 ctermbg=183 gui=NONE cterm=NONE
	hi DiagnosticInfo guifg=#3856d1 ctermfg=62 guibg=#ccc2f2 ctermbg=183 gui=NONE cterm=NONE
	hi DiagnosticWarn guifg=#615413 ctermfg=58 guibg=#fde37c ctermbg=222 gui=NONE cterm=NONE
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
	hi fugitiveStagedSection guifg=fg ctermfg=fg guibg=NONE ctermbg=NONE gui=NONE cterm=NONE
	hi fugitiveUnstagedSection guifg=fg ctermfg=fg guibg=NONE ctermbg=NONE gui=NONE cterm=NONE
	hi! link gitCommitOverflow WarningMsg
	hi gitcommitComment guifg=fg ctermfg=fg guibg=NONE ctermbg=NONE gui=NONE cterm=NONE
	hi gitcommitOnBranch guifg=fg ctermfg=fg guibg=NONE ctermbg=NONE gui=NONE cterm=NONE
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
	hi diffLine guifg=#3D3C44 ctermfg=238 guibg=#e6dfdf ctermbg=254 gui=NONE cterm=NONE
	hi gitHashAbbrev guifg=fg ctermfg=fg guibg=NONE ctermbg=NONE gui=underline cterm=underline
	hi GitSignsAdd guifg=#346e27 ctermfg=238 guibg=NONE ctermbg=NONE
	hi GitSignsChange guifg=#b17900 ctermfg=136 guibg=NONE ctermbg=NONE
	hi GitSignsDelete guifg=#B22E32 ctermfg=125 guibg=NONE ctermbg=NONE
	hi DirvishPathTail guifg=NONE ctermfg=NONE guibg=NONE ctermbg=NONE gui=bold cterm=bold
	hi jsxOpenPunct guifg=fg ctermfg=fg guibg=NONE ctermbg=NONE
	hi TreesitterContextBottom guifg=NONE ctermfg=NONE guibg=NONE ctermbg=NONE guisp=#b69999 gui=underline cterm=underline
	hi TreesitterContext guifg=NONE ctermfg=NONE guibg=#e6dfdf ctermbg=254 gui=NONE cterm=NONE
	hi! link TreesitterContextLineNumberBottom TreesitterContextBottom
	hi TreesitterContextSeparator guifg=#b69999 ctermfg=247 guibg=NONE ctermbg=NONE gui=NONE cterm=NONE
	hi LeapLabelSecondary guifg=#dcd2d2 ctermfg=188 guibg=#dcd2d2 ctermbg=188 gui=NONE cterm=NONE
	hi LeapLabelSelected guifg=#dcd2d2 ctermfg=188 guibg=#3D3C44 ctermbg=238 gui=NONE cterm=NONE
	hi WhichKeySeperator guifg=fg ctermfg=fg guibg=NONE ctermbg=NONE

	if has('nvim')
		hi SpecialKey guifg=#3856d1 ctermfg=62 guibg=#ccc2f2 ctermbg=183
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
		
		hi @function.haskell guifg=NONE ctermfg=NONE gui=NONE cterm=NONE
	    hi! link @constructor.lua @punctuation
		hi @markup.raw.block.markdown guifg=#3D3C44 ctermfg=238 guibg=#e6dfdf ctermbg=254 gui=NONE cterm=NONE
		hi @punctuation.special.markdown guifg=#9f8a99 ctermfg=246 guibg=NONE ctermbg=NONE gui=NONE cterm=NONE
		hi @constructor.haskell guifg=NONE ctermfg=NONE gui=NONE cterm=NONE
		hi @type.haskell guifg=NONE ctermfg=NONE gui=bold cterm=bold
		hi @variable.haskell guifg=NONE ctermfg=NONE gui=NONE cterm=NONE
		hi @variable.parameter.haskell guifg=NONE ctermfg=NONE gui=NONE cterm=NONE
		hi @keyword.haskell guifg=NONE ctermfg=NONE gui=bold cterm=bold
		hi @operator.haskell guifg=NONE ctermfg=NONE gui=bold cterm=bold

		hi! link @diff.plus DiffAdd
		hi! link @diff.minus DiffDelete
		hi! link @diff.delta DiffChange

		hi @keyword.coroutine guifg=NONE ctermfg=NONE gui=bold cterm=bold
		hi! link @text.literal helpExample
		hi! link @tag Tag
		hi! link @tag.builtin Tag
		hi! link @operator.tsx Tag
		hi! link @constant.builtin Constant
		hi! link @function @lsp.typemod.function.declaration
		hi! link @function.method.call @method.call
		hi @text.strong guifg=NONE ctermfg=NONE gui=bold cterm=bold
		hi! link @text.emphasis @text.strong
		hi! link @method @lsp.typemod.member.declaration
		hi @field guifg=fg ctermfg=fg gui=NONE cterm=NONE
		hi @variable guifg=NONE ctermfg=NONE gui=NONE cterm=NONE
		hi @symbol guifg=fg ctermfg=fg gui=bold cterm=bold
		hi! link @exception Normal
		hi! link @function.call @method.call
		hi @method.call guifg=NONE ctermfg=NONE gui=NONE cterm=NONE
		hi! link @function.builtin @lsp.typemod.function.defaultLibrary
		hi! link @namespace.builtin @lsp.typemod.function.defaultLibrary
		hi @keyword.function guifg=NONE ctermfg=NONE gui=bold cterm=bold
		hi @keyword.operator guifg=NONE ctermfg=NONE gui=NONE cterm=NONE
		hi @keyword.return guifg=NONE ctermfg=NONE gui=NONE cterm=NONE

		hi @lsp.type.function guifg=NONE ctermfg=NONE gui=NONE cterm=NONE
		hi! link @lsp.type.method @lsp.type.function
		hi @lsp.typemod.function.defaultLibrary guifg=NONE ctermfg=NONE gui=NONE cterm=NONE
		hi @lsp.typemod.function.declaration guifg=NONE ctermfg=NONE gui=NONE cterm=NONE
		hi! link @lsp.typemod.member.declaration @lsp.typemod.function.declaration
		hi @lsp.typemod.variable.declaration guifg=NONE ctermfg=NONE gui=NONE cterm=NONE
	else
		hi LspCodeLens guifg=#d3c5c5 ctermfg=251 guibg=NONE ctermbg=NONE
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
		hi FoldColumn guifg=#9f8a99 ctermfg=246 guibg=NONE ctermbg=NONE
		hi! link Folded FoldColumn
	elseif s:yui_folds_value ==? 'emphasize'
		hi FoldColumn guifg=#3D3C44 ctermfg=238 guibg=NONE ctermbg=NONE
		hi! link Folded FoldColumn
	endif


	let s:yui_line_numbers_value = get(g:, 'yui_line_numbers', 'fade')
	if s:yui_line_numbers_value ==? 'fade'
		hi SignColumn guifg=#9f8a99 ctermfg=246 guibg=NONE ctermbg=NONE
		hi! link LineNr SignColumn
	elseif s:yui_line_numbers_value ==? 'emphasize'
		hi SignColumn guifg=#3D3C44 ctermfg=238 guibg=NONE ctermbg=NONE
		hi! link LineNr SignColumn
	endif


	let s:yui_emphasized_comments_value = get(g:, 'yui_emphasized_comments', 0)
	if s:yui_emphasized_comments_value ==? 1
		hi Comment guifg=#C43E1C ctermfg=166 guibg=NONE ctermbg=NONE
	elseif s:yui_emphasized_comments_value ==? 0
		hi Comment guifg=#3D3C44 ctermfg=238 guibg=NONE ctermbg=NONE
	endif


	let s:yui_comments_value = get(g:, 'yui_comments', 'normal')
	if s:yui_comments_value ==? 'normal'
		hi Comment guifg=fg ctermfg=fg guibg=NONE ctermbg=NONE gui=italic cterm=italic
	elseif s:yui_comments_value ==? 'fade'
		hi Comment guifg=#9f8a99 ctermfg=246 guibg=NONE ctermbg=NONE gui=italic cterm=italic
	elseif s:yui_comments_value ==? 'emphasize'
		hi Comment guifg=#C43E1C ctermfg=166 guibg=NONE ctermbg=NONE gui=NONE cterm=NONE
	elseif s:yui_comments_value ==? 'bg'
		hi Comment guifg=#3D3C44 ctermfg=238 guibg=#e6dfdf ctermbg=254 gui=NONE cterm=NONE
	endif
	
