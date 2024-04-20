	set background=light

	if (!has('gui_running') && &t_Co < 256 && !has('nvim'))
		finish
	endif

	hi clear

	if exists('syntax_on')
		syntax reset
	endif

	let g:colors_name = 'yui_dark'

	hi Normal guifg=#d6d5d5 ctermfg=188 guibg=#353341 ctermbg=237
	hi NormalNC guifg=#eae9e9 ctermfg=255 guibg=NONE ctermbg=NONE
	hi! link MsgArea Normal
	hi Conceal guifg=#eae9e9 ctermfg=255 guibg=NONE ctermbg=NONE gui=NONE cterm=NONE
	hi! link ToolbarButton TabLine
	hi! link ToolbarLine TabLineFill
	hi Cursor guifg=bg ctermfg=bg guibg=fg ctermbg=fg
	hi! link CursorLineNr CursorLine
	hi CursorLine guifg=NONE ctermfg=NONE guibg=#3e3b4b ctermbg=238 gui=NONE cterm=NONE
	hi! link lCursor Cursor
	hi! link CursorIM Cursor
	hi WinSeparator guifg=#4f4b5f ctermfg=240
	hi DiffAdd guifg=#70cf92 ctermfg=78 guibg=#373f39 ctermbg=237 gui=NONE cterm=NONE
	hi DiffChange guifg=#cfb787 ctermfg=180 guibg=#473f50 ctermbg=238 gui=NONE cterm=NONE
	hi DiffDelete guifg=#ee5c66 ctermfg=203 guibg=#443C51 ctermbg=238 gui=NONE cterm=NONE
	hi DiffText guifg=#69aafd ctermfg=75 guibg=#3d3b51 ctermbg=238 gui=NONE cterm=NONE
	hi Directory guifg=fg ctermfg=fg guibg=NONE ctermbg=NONE
	hi ErrorMsg guifg=#ee5c66 ctermfg=203 guibg=#443C51 ctermbg=238 gui=bold cterm=bold
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
	hi Error guifg=#ee5c66 ctermfg=203 guibg=NONE ctermbg=NONE gui=bold cterm=bold
	hi! link Todo DiffChange
	hi MatchParen guifg=NONE ctermfg=NONE guibg=#4f4b5f ctermbg=240 gui=NONE cterm=NONE
	hi ModeMsg guifg=#69aafd ctermfg=75 guibg=#3d3b51 ctermbg=238 gui=NONE cterm=NONE
	hi MoreMsg guifg=#69aafd ctermfg=75 guibg=#3d3b51 ctermbg=238 gui=NONE cterm=NONE
	hi WarningMsg guifg=#cfb787 ctermfg=180 guibg=#473f50 ctermbg=238 gui=NONE cterm=NONE
	hi Whitespace guifg=#565454 ctermfg=240 guibg=NONE ctermbg=NONE gui=NONE cterm=NONE
	hi TabLine guifg=#837f7f ctermfg=244 guibg=#3e3b4b ctermbg=238 gui=NONE cterm=NONE
	hi! link TabLineSel StatusLine
	hi! link TabLineFill TabLine
	hi Search guifg=#eae9e9 ctermfg=255 guibg=#474355 ctermbg=239 gui=NONE cterm=NONE
	hi CurSearch guifg=#3d3b51 ctermfg=238 guibg=#69aafd ctermbg=75 gui=NONE cterm=NONE
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
	hi SpellBad guifg=fg ctermfg=fg guibg=NONE ctermbg=NONE guisp=#443C51 gui=undercurl cterm=undercurl
	hi VertSplit guifg=#4f4b5f ctermfg=240 guibg=NONE ctermbg=NONE gui=NONE cterm=NONE
	hi! link Menu Pmenu
	hi Title guifg=fg ctermfg=fg guibg=NONE ctermbg=NONE gui=bold,underline cterm=bold,underline
	hi NormalFloat guifg=fg ctermfg=fg guibg=NONE ctermbg=NONE
	hi FloatTitle guifg=fg ctermfg=fg guibg=#3e3b4b ctermbg=238 gui=underline,bold cterm=underline,bold
	hi FloatBorder guifg=#69aafd ctermfg=75 guibg=NONE ctermbg=NONE
	hi StatusLine guifg=#e0dfdf ctermfg=254 guibg=#3e3b4b ctermbg=238 gui=NONE cterm=NONE
	hi StatusLineNC guifg=#837f7f ctermfg=244 guibg=#3e3b4b ctermbg=238 gui=NONE cterm=NONE
	hi ColorColumn guifg=#d6d5d5 ctermfg=188 guibg=#353341 ctermbg=237
	hi! link CursorColumn CursorLine
	hi CopilotSuggestion guifg=#7d7979 ctermfg=243 guibg=NONE ctermbg=NONE
	hi WinBar guifg=#eae9e9 ctermfg=255 guibg=#474355 ctermbg=239 guisp=#575368 gui=underline cterm=underline
	hi NonText guifg=#474355 ctermfg=239 guibg=NONE ctermbg=NONE
	hi WinBarNC guifg=#898585 ctermfg=102 guibg=#3e3b4b ctermbg=238 guisp=#575368 gui=underline cterm=underline
	hi! link PmenuExtraSel PmenuSel
	hi! link LspSignatureActiveParameter Search
	hi PmenuSel guifg=#f5f4f4 ctermfg=255 guibg=#4f4b5f ctermbg=240 gui=NONE cterm=NONE
	hi Pmenu guifg=#e0dfdf ctermfg=254 guibg=#3e3b4b ctermbg=238
	hi PmenuKind guifg=#e0dfdf ctermfg=254 guibg=#3e3b4b ctermbg=238 gui=bold cterm=bold
	hi PmenuKindSel guifg=#f5f4f4 ctermfg=255 guibg=#4f4b5f ctermbg=240 gui=bold cterm=bold
	hi PmenuExtra guifg=#e0dfdf ctermfg=254 guibg=#3e3b4b ctermbg=238
	hi PmenuSbar guifg=NONE ctermfg=NONE guibg=#3e3b4b ctermbg=238
	hi PmenuThumb guifg=NONE ctermfg=NONE guibg=#575368 ctermbg=240
	hi Question guifg=fg ctermfg=fg guibg=NONE ctermbg=NONE
	hi Visual guifg=#eae9e9 ctermfg=255 guibg=#474355 ctermbg=239 gui=NONE cterm=NONE
	hi VisualNOS guifg=NONE ctermfg=NONE guibg=#4f4b5f ctermbg=240
	hi Scrollbar guifg=NONE ctermfg=NONE guibg=#474355 ctermbg=239
	hi DiagnosticError guifg=#ee5c66 ctermfg=203 guibg=#443C51 ctermbg=238 gui=NONE cterm=NONE
	hi DiagnosticOk guifg=#70cf92 ctermfg=78 guibg=#373f39 ctermbg=237 gui=NONE cterm=NONE
	hi DiagnosticHint guifg=#69aafd ctermfg=75 guibg=#3d3b51 ctermbg=238 gui=NONE cterm=NONE
	hi DiagnosticInfo guifg=#69aafd ctermfg=75 guibg=#3d3b51 ctermbg=238 gui=NONE cterm=NONE
	hi DiagnosticWarn guifg=#cfb787 ctermfg=180 guibg=#473f50 ctermbg=238 gui=NONE cterm=NONE
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
	hi GitSignsAdd guifg=#70cf92 ctermfg=78 guibg=NONE ctermbg=NONE
	hi GitSignsChange guifg=#cfb787 ctermfg=180 guibg=NONE ctermbg=NONE
	hi GitSignsDelete guifg=#F55661 ctermfg=203 guibg=NONE ctermbg=NONE
	hi DirvishPathTail guifg=NONE ctermfg=NONE guibg=NONE ctermbg=NONE gui=bold cterm=bold
	hi jsxOpenPunct guifg=fg ctermfg=fg guibg=NONE ctermbg=NONE
	hi TreesitterContextBottom guifg=NONE ctermfg=NONE guibg=NONE ctermbg=NONE guisp=#4f4b5f gui=underline cterm=underline
	hi TreesitterContext guifg=NONE ctermfg=NONE guibg=#3e3b4b ctermbg=238 gui=NONE cterm=NONE
	hi! link TreesitterContextLineNumberBottom TreesitterContextBottom
	hi TreesitterContextSeparator guifg=#4f4b5f ctermfg=240 guibg=NONE ctermbg=NONE gui=NONE cterm=NONE
	hi LeapLabelSecondary guifg=#eae9e9 ctermfg=255 guibg=#eae9e9 ctermbg=255 gui=NONE cterm=NONE
	hi LeapLabelSelected guifg=#eae9e9 ctermfg=255 guibg=#474355 ctermbg=239 gui=NONE cterm=NONE
	hi WhichKeySeperator guifg=fg ctermfg=fg guibg=NONE ctermbg=NONE

	if has('nvim')
		hi SpecialKey guifg=#69aafd ctermfg=75 guibg=#3d3b51 ctermbg=238
		let g:terminal_color_0 = '#d6d5d5'
		let g:terminal_color_1 = '#F55661'
		let g:terminal_color_2 = '#70cf92'
		let g:terminal_color_3 = '#cfb787'
		let g:terminal_color_4 = '#69aafd'
		let g:terminal_color_5 = '#b5a0ff'
		let g:terminal_color_6 = '#18c6ce'
		let g:terminal_color_7 = '#f5f5f5'
		let g:terminal_color_8 = '#d6d5d5'
		let g:terminal_color_9 = '#F55661'
		let g:terminal_color_10 = '#70cf92'
		let g:terminal_color_11 = '#cfb787'
		let g:terminal_color_12 = '#69aafd'
		let g:terminal_color_13 = '#b5a0ff'
		let g:terminal_color_14 = '#18c6ce'
		let g:terminal_color_15 = '#f5f5f5'
		
		hi @function.haskell guifg=fg ctermfg=fg gui=NONE cterm=NONE
		hi @variable.haskell guifg=fg ctermfg=fg gui=NONE cterm=NONE
		hi @variable.parameter.haskell guifg=fg ctermfg=fg gui=NONE cterm=NONE
		hi @keyword.haskell guifg=fg ctermfg=fg gui=bold cterm=bold
		hi @operator.haskell guifg=fg ctermfg=fg gui=NONE cterm=NONE

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
		hi LspCodeLens guifg=#575368 ctermfg=240 guibg=NONE ctermbg=NONE
		hi LspInlayHint guifg=#69aafd ctermfg=75 guibg=NONE ctermbg=NONE
		hi! link StatusLineTerm StatusLine
		hi! link StatusLineTermNC StatusLineNC
		hi! link SpecialKey Whitespace
		let g:terminal_ansi_colors = [
			\ '#d6d5d5',
			\ '#F55661',
			\ '#70cf92',
			\ '#cfb787',
			\ '#69aafd',
			\ '#b5a0ff',
			\ '#18c6ce',
			\ '#f5f5f5',
			\ '#d6d5d5',
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
		hi FoldColumn guifg=#7d7979 ctermfg=243 guibg=NONE ctermbg=NONE
		hi! link Folded FoldColumn
	elseif s:yui_folds_value ==? 'emphasize'
		hi FoldColumn guifg=#eae9e9 ctermfg=255 guibg=NONE ctermbg=NONE
		hi! link Folded FoldColumn
	endif


	let s:yui_line_numbers_value = get(g:, 'yui_line_numbers', 'fade')
	if s:yui_line_numbers_value ==? 'fade'
		hi SignColumn guifg=#7d7979 ctermfg=243 guibg=NONE ctermbg=NONE
		hi! link LineNr SignColumn
	elseif s:yui_line_numbers_value ==? 'emphasize'
		hi SignColumn guifg=#eae9e9 ctermfg=255 guibg=NONE ctermbg=NONE
		hi! link LineNr SignColumn
	endif


	let s:yui_emphasized_comments_value = get(g:, 'yui_emphasized_comments', 0)
	if s:yui_emphasized_comments_value ==? 1
		hi Comment guifg=#fe9a5c ctermfg=209 guibg=NONE ctermbg=NONE
	elseif s:yui_emphasized_comments_value ==? 0
		hi Comment guifg=#f5f5f5 ctermfg=255 guibg=NONE ctermbg=NONE
	endif


	let s:yui_comments_value = get(g:, 'yui_comments', 'normal')
	if s:yui_comments_value ==? 'normal'
		hi Comment guifg=fg ctermfg=fg guibg=NONE ctermbg=NONE gui=italic cterm=italic
	elseif s:yui_comments_value ==? 'fade'
		hi Comment guifg=#7d7979 ctermfg=243 guibg=NONE ctermbg=NONE gui=italic cterm=italic
	elseif s:yui_comments_value ==? 'emphasize'
		hi Comment guifg=#fe9a5c ctermfg=209 guibg=NONE ctermbg=NONE gui=NONE cterm=NONE
	elseif s:yui_comments_value ==? 'bg'
		hi Comment guifg=#fe9a5c ctermfg=209 guibg=#503930 ctermbg=237 gui=NONE cterm=NONE
	endif
	