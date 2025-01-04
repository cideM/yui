	set background=light

	if (!has('gui_running') && &t_Co < 256 && !has('nvim'))
		finish
	endif

	hi clear

	if exists('syntax_on')
		syntax reset
	endif

	let g:colors_name = 'yui_dark'

	hi Normal guifg=#aaaab5 ctermfg=145 guibg=#1F1F29 ctermbg=235
	hi! link NormalNC Normal
	hi! link MsgArea Normal
	hi Conceal guifg=#c8c8d0 ctermfg=251 guibg=NONE ctermbg=NONE gui=NONE cterm=NONE
	hi! link ToolbarButton TabLine
	hi! link ToolbarLine TabLineFill
	hi Cursor guifg=#252531 ctermfg=235 guibg=fg ctermbg=fg
	hi! link CursorLineNr CursorLine
	hi CursorLine guifg=NONE ctermfg=NONE guibg=#252531 ctermbg=235 gui=NONE cterm=NONE
	hi! link lCursor Cursor
	hi! link CursorIM Cursor
	hi WinSeparator guifg=#12121d ctermfg=233
	hi DiffAdd guifg=#70cf92 ctermfg=78 guibg=#2a2d35 ctermbg=236 gui=NONE cterm=NONE
	hi DiffChange guifg=NONE ctermfg=NONE guibg=NONE ctermbg=NONE gui=NONE cterm=NONE
	hi DiffDelete guifg=#ee5c66 ctermfg=203 guibg=#2c2737 ctermbg=236 gui=NONE cterm=NONE
	hi DiffText guifg=#69aafd ctermfg=75 guibg=#292a3d ctermbg=236 gui=NONE cterm=NONE
	hi Directory guifg=fg ctermfg=fg guibg=NONE ctermbg=NONE
	hi ErrorMsg guifg=#ee5c66 ctermfg=203 guibg=#2c2737 ctermbg=236 gui=none cterm=none
	hi Constant guifg=#70cf92 ctermfg=78 guibg=NONE ctermbg=NONE gui=NONE cterm=NONE
	hi! link String Constant
	hi @punctuation guifg=#5f5f72 ctermfg=241
	hi! link Character Constant
	hi! link Number Constant
	hi Boolean guifg=#70cf92 ctermfg=78 guibg=NONE ctermbg=NONE gui=bold cterm=bold
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
	hi Error guifg=#ee5c66 ctermfg=203 guibg=NONE ctermbg=NONE gui=bold cterm=bold
	hi! link Todo DiffChange
	hi MatchParen guifg=NONE ctermfg=NONE guibg=NONE ctermbg=NONE gui=bold,underline cterm=bold,underline
	hi ModeMsg guifg=#69aafd ctermfg=75 guibg=#292a3d ctermbg=236 gui=NONE cterm=NONE
	hi MoreMsg guifg=#69aafd ctermfg=75 guibg=#292a3d ctermbg=236 gui=NONE cterm=NONE
	hi WarningMsg guifg=NONE ctermfg=NONE guibg=NONE ctermbg=NONE gui=NONE cterm=NONE
	hi Whitespace guifg=#2b2b37 ctermfg=236 guibg=NONE ctermbg=NONE gui=NONE cterm=NONE
	hi TabLine guifg=#616565 ctermfg=241 guibg=#181a1a ctermbg=234 gui=NONE cterm=NONE
	hi! link TabLineSel StatusLine
	hi! link TabLineFill TabLine
	hi Search guifg=#c8c8d0 ctermfg=251 guibg=#2e2e3c ctermbg=236 gui=bold cterm=bold
	hi CurSearch guifg=#2e2e3c ctermfg=236 guibg=#c8c8d0 ctermbg=251 gui=bold cterm=bold
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
	hi SpellBad guifg=fg ctermfg=fg guibg=NONE ctermbg=NONE guisp=#2c2737 gui=undercurl cterm=undercurl
	hi VertSplit guifg=#12121d ctermfg=233 guibg=NONE ctermbg=NONE gui=NONE cterm=NONE
	hi! link Menu Pmenu
	hi Title guifg=fg ctermfg=fg guibg=NONE ctermbg=NONE gui=bold cterm=bold
	hi NormalFloat guifg=#a0a0ad ctermfg=248 guibg=#252531 ctermbg=235
	hi FloatTitle guifg=#a0a0ad ctermfg=248 guibg=#252531 ctermbg=235 gui=bold cterm=bold
	hi FloatBorder guifg=#5e5e73 ctermfg=241 guibg=#252531 ctermbg=235 guisp=NONE gui=NONE cterm=NONE
	hi StatusLine guifg=#9fa4a4 ctermfg=247 guibg=#151717 ctermbg=233 gui=NONE cterm=NONE
	hi StatusLineNC guifg=#616565 ctermfg=241 guibg=#181a1a ctermbg=234 gui=NONE cterm=NONE
	hi ColorColumn guifg=#a0a0ad ctermfg=248 guibg=#252531 ctermbg=235
	hi! link CursorColumn CursorLine
	hi CopilotSuggestion guifg=#5f5f72 ctermfg=241 guibg=NONE ctermbg=NONE
	hi WinBar guifg=#c8c8d0 ctermfg=251 guibg=#2e2e3c ctermbg=236 guisp=#090a09 gui=underline cterm=underline
	hi NonText guifg=#2e2e3c ctermfg=236 guibg=NONE ctermbg=NONE
	hi WinBarNC guifg=#767689 ctermfg=244 guibg=#252531 ctermbg=235 guisp=#090a09 gui=underline cterm=underline
	hi! link PmenuExtraSel PmenuSel
	hi! link LspSignatureActiveParameter Search
	hi PmenuSel guifg=#c8c8d0 ctermfg=251 guibg=#373747 ctermbg=237 gui=bold cterm=bold
	hi Pmenu guifg=#c8c8d0 ctermfg=251 guibg=#2e2e3c ctermbg=236
	hi PmenuKind guifg=#c8c8d0 ctermfg=251 guibg=#2e2e3c ctermbg=236 gui=bold cterm=bold
	hi PmenuKindSel guifg=#c8c8d0 ctermfg=251 guibg=#373747 ctermbg=237 gui=bold cterm=bold
	hi PmenuExtra guifg=#c8c8d0 ctermfg=251 guibg=#2e2e3c ctermbg=236
	hi PmenuSbar guifg=NONE ctermfg=NONE guibg=#2e2e3c ctermbg=236
	hi PmenuThumb guifg=NONE ctermfg=NONE guibg=#373747 ctermbg=237
	hi Question guifg=fg ctermfg=fg guibg=NONE ctermbg=NONE
	hi Visual guifg=#c8c8d0 ctermfg=251 guibg=#2e2e3c ctermbg=236 gui=NONE cterm=NONE
	hi VisualNOS guifg=NONE ctermfg=NONE guibg=#262632 ctermbg=235
	hi Scrollbar guifg=NONE ctermfg=NONE guibg=#2e2e3c ctermbg=236
	hi DiagnosticError guifg=#ee5c66 ctermfg=203 guibg=#2c2737 ctermbg=236 gui=NONE cterm=NONE
	hi DiagnosticUnnecessary guifg=#cfb787 ctermfg=180 guibg=#302b38 ctermbg=236 gui=NONE cterm=NONE
	hi DiagnosticOk guifg=#70cf92 ctermfg=78 guibg=#2a2d35 ctermbg=236 gui=NONE cterm=NONE
	hi DiagnosticHint guifg=#69aafd ctermfg=75 guibg=#292a3d ctermbg=236 gui=NONE cterm=NONE
	hi DiagnosticInfo guifg=#69aafd ctermfg=75 guibg=#292a3d ctermbg=236 gui=NONE cterm=NONE
	hi DiagnosticWarn guifg=#cfb787 ctermfg=180 guibg=#302b38 ctermbg=236 gui=NONE cterm=NONE
	hi DiagnosticUnderlineError guifg=NONE ctermfg=NONE guibg=NONE ctermbg=NONE guisp=#F55661 gui=underline cterm=underline
	hi DiagnosticUnderlineHint guifg=NONE ctermfg=NONE guibg=NONE ctermbg=NONE guisp=#69aafd gui=underline cterm=underline
	hi DiagnosticUnderlineInfo guifg=NONE ctermfg=NONE guibg=NONE ctermbg=NONE guisp=#69aafd gui=underline cterm=underline
	hi DiagnosticUnderlineWarn guifg=NONE ctermfg=NONE guibg=NONE ctermbg=NONE guisp=#cfb787 gui=underline cterm=underline
	hi DiagnosticUnderlineOk guifg=NONE ctermfg=NONE guibg=NONE ctermbg=NONE guisp=#70cf92 gui=underline cterm=underline
	hi DiagnosticSignError guifg=#F55661 ctermfg=203 guibg=NONE ctermbg=NONE gui=NONE cterm=NONE
	hi DiagnosticSignOk guifg=#70cf92 ctermfg=78 guibg=NONE ctermbg=NONE gui=NONE cterm=NONE
	hi DiagnosticSignHint guifg=#69aafd ctermfg=75 guibg=NONE ctermbg=NONE gui=NONE cterm=NONE
	hi DiagnosticSignInfo guifg=#69aafd ctermfg=75 guibg=NONE ctermbg=NONE gui=NONE cterm=NONE
	hi DiagnosticSignWarn guifg=#cfb787 ctermfg=180 guibg=NONE ctermbg=NONE gui=NONE cterm=NONE
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
	hi diffLine guifg=#a0a0ad ctermfg=248 guibg=#252531 ctermbg=235 gui=NONE cterm=NONE
	hi gitHashAbbrev guifg=fg ctermfg=fg guibg=NONE ctermbg=NONE gui=underline cterm=underline
	hi GitSignsAdd guifg=#70cf92 ctermfg=78 guibg=NONE ctermbg=NONE
	hi GitSignsChange guifg=#cfb787 ctermfg=180 guibg=NONE ctermbg=NONE
	hi GitSignsDelete guifg=#F55661 ctermfg=203 guibg=NONE ctermbg=NONE
	hi DirvishPathTail guifg=NONE ctermfg=NONE guibg=NONE ctermbg=NONE gui=bold cterm=bold
	hi jsxOpenPunct guifg=fg ctermfg=fg guibg=NONE ctermbg=NONE
	hi TreesitterContextBottom guifg=NONE ctermfg=NONE guibg=NONE ctermbg=NONE guisp=#151717 gui=underline cterm=underline
	hi TreesitterContext guifg=#838394 ctermfg=245 guibg=#252531 ctermbg=235 gui=NONE cterm=NONE
	hi! link TreesitterContextLineNumberBottom TreesitterContextBottom
	hi TreesitterContextSeparator guifg=#151717 ctermfg=233 guibg=NONE ctermbg=NONE gui=NONE cterm=NONE
	hi LeapLabelSecondary guifg=#c8c8d0 ctermfg=251 guibg=#c8c8d0 ctermbg=251 gui=NONE cterm=NONE
	hi LeapLabelSelected guifg=#c8c8d0 ctermfg=251 guibg=#2e2e3c ctermbg=236 gui=NONE cterm=NONE
	hi WhichKeySeperator guifg=fg ctermfg=fg guibg=NONE ctermbg=NONE

	if has('nvim')
		hi SpecialKey guifg=#69aafd ctermfg=75 guibg=#292a3d ctermbg=236
		let g:terminal_color_0 = '#bbbbbb'
		let g:terminal_color_1 = '#F55661'
		let g:terminal_color_2 = '#70cf92'
		let g:terminal_color_3 = '#cfb787'
		let g:terminal_color_4 = '#69aafd'
		let g:terminal_color_5 = '#b5a0ff'
		let g:terminal_color_6 = '#18c6ce'
		let g:terminal_color_7 = '#f5f5f5'
		let g:terminal_color_8 = '#bbbbbb'
		let g:terminal_color_9 = '#F55661'
		let g:terminal_color_10 = '#70cf92'
		let g:terminal_color_11 = '#cfb787'
		let g:terminal_color_12 = '#69aafd'
		let g:terminal_color_13 = '#b5a0ff'
		let g:terminal_color_14 = '#18c6ce'
		let g:terminal_color_15 = '#f5f5f5'
		
		hi @function.haskell guifg=NONE ctermfg=NONE gui=NONE cterm=NONE
	    hi! link @constructor.lua @punctuation
		hi @markup.raw.block.markdown guifg=#a0a0ad ctermfg=248 guibg=#252531 ctermbg=235 gui=NONE cterm=NONE
		hi @punctuation.special.markdown guifg=#5f5f72 ctermfg=241 guibg=NONE ctermbg=NONE gui=NONE cterm=NONE
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
		hi LspCodeLens guifg=#2b2b37 ctermfg=236 guibg=NONE ctermbg=NONE
		hi LspInlayHint guifg=#69aafd ctermfg=75 guibg=NONE ctermbg=NONE
		hi! link StatusLineTerm StatusLine
		hi! link StatusLineTermNC StatusLineNC
		hi! link SpecialKey Whitespace
		let g:terminal_ansi_colors = [
			\ '#bbbbbb',
			\ '#F55661',
			\ '#70cf92',
			\ '#cfb787',
			\ '#69aafd',
			\ '#b5a0ff',
			\ '#18c6ce',
			\ '#f5f5f5',
			\ '#bbbbbb',
			\ '#F55661',
			\ '#70cf92',
			\ '#cfb787',
			\ '#69aafd',
			\ '#b5a0ff',
			\ '#18c6ce',
			\ '#f5f5f5']
	endif


	let s:yui_folds_value = get(g:, 'yui_folds', 'fade')
	if s:yui_folds_value ==? 'fade'
		hi FoldColumn guifg=#5f5f72 ctermfg=241 guibg=NONE ctermbg=NONE
		hi! link Folded FoldColumn
	elseif s:yui_folds_value ==? 'emphasize'
		hi FoldColumn guifg=#c8c8d0 ctermfg=251 guibg=NONE ctermbg=NONE
		hi! link Folded FoldColumn
	endif


	let s:yui_line_numbers_value = get(g:, 'yui_line_numbers', 'fade')
	if s:yui_line_numbers_value ==? 'fade'
		hi SignColumn guifg=#5f5f72 ctermfg=241 guibg=NONE ctermbg=NONE
		hi! link LineNr SignColumn
	elseif s:yui_line_numbers_value ==? 'emphasize'
		hi SignColumn guifg=#c8c8d0 ctermfg=251 guibg=NONE ctermbg=NONE
		hi! link LineNr SignColumn
	endif


	let s:yui_emphasized_comments_value = get(g:, 'yui_emphasized_comments', 0)
	if s:yui_emphasized_comments_value ==? 1
		hi Comment guifg=#E66F51 ctermfg=167 guibg=NONE ctermbg=NONE
	elseif s:yui_emphasized_comments_value ==? 0
		hi Comment guifg=#5f5f72 ctermfg=241 guibg=NONE ctermbg=NONE
	endif


	let s:yui_comments_value = get(g:, 'yui_comments', 'normal')
	if s:yui_comments_value ==? 'normal'
		hi Comment guifg=fg ctermfg=fg guibg=NONE ctermbg=NONE gui=italic cterm=italic
	elseif s:yui_comments_value ==? 'fade'
		hi Comment guifg=#5f5f72 ctermfg=241 guibg=NONE ctermbg=NONE gui=italic cterm=italic
	elseif s:yui_comments_value ==? 'emphasize'
		hi Comment guifg=#E66F51 ctermfg=167 guibg=NONE ctermbg=NONE gui=NONE cterm=NONE
	elseif s:yui_comments_value ==? 'bg'
		hi Comment guifg=#a0a0ad ctermfg=248 guibg=#252531 ctermbg=235 gui=NONE cterm=NONE
	endif
	
