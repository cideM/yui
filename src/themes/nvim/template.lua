local merge = require("lib/table").merge
local interpolate = require("lib/strings").interpolate

return function(colors, name)
	return interpolate(
		[[
	if (!has('gui_running') && &t_Co < 256 && !has('nvim'))
		finish
	endif

	hi clear

	if exists('syntax_on')
		syntax reset
	endif

	let g:colors_name = '${theme_name}'

	${Normal}
	${NormalNC}
	${MsgArea}
	${Conceal}
	${ToolbarButton}
	${ToolbarLine}
	${Cursor}
	${CursorLineNr}
	${CursorLine}
	${lCursor}
	${CursorIM}
	${WinSeparator}
	${DiffAdd}
	${DiffChange}
	${DiffDelete}
	${DiffText}
	${Directory}
	${ErrorMsg}
	${Constant}
	${String}
	${Character}
	${Number}
	${Boolean}
	${Float}
	${Identifier}
	${Function}
	${Statement}
	${Repeat}
	${Conditional}
	${Label}
	${Operator}
	${Keyword}
	${Exception}
	${PreProc}
	${Include}
	${Define}
	${Macro}
	${PreCondit}
	${Type}
	${StorageClass}
	${Structure}
	${Typedef}
	${Special}
	${SpecialChar}
	${Tag}
	${Delimiter}
	${SpecialComment}
	${Debug}
	${Underlined}
	${Ignore}
	${Error}
	${Todo}
	${MatchParen}
	${ModeMsg}
	${MoreMsg}
	${WarningMsg}
	${Whitespace}
	${TabLine}
	${TabLineSel}
	${TabLineFill}
	${Search}
	${CurSearch}
	${IncSearch}
	${SpellCap}
	${SpellLocal}
	${SpellRare}
	${Tooltip}
	${MsgSeparator}
	${EndOfBuffer}
	${QuickFixLine}
	${WildMenu}
	${Substitute}
	${jsParensError}
	${SpellBad}
	${VertSplit}
	${Menu}
	${Title}
	${NormalFloat}
	${FloatTitle}
	${FloatBorder}
	${StatusLine}
	${StatusLineNC}
	${ColorColumn}
	${CursorColumn}
	${CopilotSuggestion}
	${WinBar}
	${NonText}
	${WinBarNC}
	${PmenuExtraSel}
	${LspSignatureActiveParameter}
	${PmenuSel}
	${Pmenu}
	${PmenuKind}
	${PmenuKindSel}
	${PmenuExtra}
	${PmenuSbar}
	${PmenuThumb}
	${Question}
	${Visual}
	${VisualNOS}
	${Scrollbar}
	${DiagnosticError}
	${DiagnosticUnnecessary}
	${DiagnosticOk}
	${DiagnosticHint}
	${DiagnosticInfo}
	${DiagnosticWarn}
	${DiagnosticUnderlineError}
	${DiagnosticUnderlineHint}
	${DiagnosticUnderlineInfo}
	${DiagnosticUnderlineWarn}
	${DiagnosticUnderlineOk}
	${DiagnosticSignError}
	${DiagnosticSignOk}
	${DiagnosticSignHint}
	${DiagnosticSignInfo}
	${DiagnosticSignWarn}
	${vimCommand}
	${vimFilter}
	${vimGroup}
	${vimHiGui}
	${vimHiKeyList}
	${vimHiGroup}
	${vimHiCTerm}
	${vimHiCTermFgBg}
	${vimHiGuiFgBg}
	${htmlTagName}
	${typescriptParens}
	${mkHeading}
	${mkItalic}
	${markdownBold}
	${markdownUrl}
	${markdownHeadingDelimiter}
	${mkCode}
	${markdownCodeDelimiter}
	${markdownBoldDelimiter}
	${markdownItalicDelimiter}
	${markdownBoldItalicDelimiter}
	${markdownLinkDelimiter}
	${markdownLinkTextDelimiter}
	${helpCommand}
	${helpExample}
	${helpHeader}
	${helpHeadline}
	${helpHyperTextEntry}
	${helpHyperTextJump}
	${helpNote}
	${helpOption}
	${helpSectionDelim}
	${helpSpecial}
	${helpURL}
	${xmlProcessingDelim}
	${xmlTagName}
	${fugitiveStagedSection}
	${fugitiveUnstagedSection}
	${GitCommitOverflow}
	${GitCommitComment}
	${GitCommitOnBranch}
	${helpBacktick}
	${helpDeprecated}
	${mkdCodeDelimiter}
	${markdownItalic}
	${markdownH1}
	${markdownH1Delimiter}
	${markdownH2}
	${markdownH3}
	${markdownH4}
	${diffAdded}
	${diffSubname}
	${diffChanged}
	${diffRemoved}
	hi! link diffComment Comment
	${GitSignsAddNr}
	${GitSignsAddLn}
	${GitSignsChangeNr}
	${GitSignsChangeLn}
	${GitSignsDeleteNr}
	${GitSignsDeleteLn}
	${IndentBlanklineChar}
	${Sneak}
	${SneakScope}
	${SneakLabel}
	${DirvishArg}
	${HlSearchLensNear}
	${HlSearchLens}
	${HlSearchNear}
	${ConflictMarkerBegin}
	${ConflictMarkerOurs}
	${ConflictMarkerTheirs}
	${ConflictMarkerEnd}
	${LeapMatch}
	${LeapLabelPrimary}
	${WhichKeyFloating}
	${TelescopeMatching}
	${TelescopeSelection}
	${markdownLinkText}
	${diffLine}
	${gitHashAbbrev}
	${GitSignsAdd}
	${GitSignsChange}
	${GitSignsDelete}
	${DirvishPathTail}
	${jsxOpenPunct}
	${TreesitterContextBottom}
	${TreesitterContext}
	${TreesitterContextLineNumberBottom}
	${TreesitterContextSeparator}
	${LeapLabelSecondary}
	${LeapLabelSelected}
	${WhichKeySeperator}

	if has('nvim')
		${Punctuation}
		${SpecialKeyNvim}
		let g:terminal_color_0 = '${TermBlack}'
		let g:terminal_color_1 = '${TermRed}'
		let g:terminal_color_2 = '${TermGreen}'
		let g:terminal_color_3 = '${TermYellow}'
		let g:terminal_color_4 = '${TermBlue}'
		let g:terminal_color_5 = '${TermPurple}'
		let g:terminal_color_6 = '${TermCyan}'
		let g:terminal_color_7 = '${TermWhite}'
		let g:terminal_color_8 = '${TermBrightBlack}'
		let g:terminal_color_9 = '${TermBrightRed}'
		let g:terminal_color_10 = '${TermBrightGreen}'
		let g:terminal_color_11 = '${TermBrightYellow}'
		let g:terminal_color_12 = '${TermBrightBlue}'
		let g:terminal_color_13 = '${TermBrightPurple}'
		let g:terminal_color_14 = '${TermBrightCyan}'
		let g:terminal_color_15 = '${TermBrightWhite}'
		
		${@function.haskell}
	    ${@constructor.lua}
		${@markup.raw.block.markdown}
		${@punctuation.special.markdown}
		${@constructor.haskell}
		${@type.haskell}
		${@variable.haskell}
		${@variable.parameter.haskell}
		${@keyword.haskell}
		${@operator.haskell}

		${TsDiffPlus}
		${TsDiffMinus}
		${TsDiffDelta}

		${@keyword.coroutine}
		${@text.literal}
		${@tag}
		${@tag.builtin}
		${@operator.tsx}
		${@constant.builtin}
		${@constant}
		${@function}
		${@function.method.call}
		${@text.strong}
		${@text.emphasis}
		${@method}
		${@field}
		${@variable}
		${@symbol}
		${@exception}
		${@function.call}
		${@method.call}
		${@function.builtin}
		${@namespace.builtin}
		${@keyword.function}
		${@keyword.operator}
		${@keyword.return}

		${@lsp.type.function}
		${@lsp.type.method}
		${@lsp.typemod.function.defaultLibrary}
		${@lsp.typemod.function.declaration}
		${@lsp.typemod.member.declaration}
		${@lsp.typemod.variable.declaration}
	else
		${LspCodeLens}
		${LspInlayHint}
		${StatusLineTerm}
		${StatusLineTermNC}
		${SpecialKey}
		let g:terminal_ansi_colors = [
			\ '${TermBlack}',
			\ '${TermRed}',
			\ '${TermGreen}',
			\ '${TermYellow}',
			\ '${TermBlue}',
			\ '${TermPurple}',
			\ '${TermCyan}',
			\ '${TermWhite}',
			\ '${TermBrightBlack}',
			\ '${TermBrightRed}',
			\ '${TermBrightGreen}',
			\ '${TermBrightYellow}',
			\ '${TermBrightBlue}',
			\ '${TermBrightPurple}',
			\ '${TermBrightCyan}',
			\ '${TermBrightWhite}']
	endif


	let s:yui_folds_value = get(g:, 'yui_folds', 'fade')
	if s:yui_folds_value ==? 'fade'
		${OptionFadeFoldColumn}
		hi! link Folded FoldColumn
	elseif s:yui_folds_value ==? 'emphasize'
		${OptionEmphasizedFoldColumn}
		hi! link Folded FoldColumn
	endif


	let s:yui_line_numbers_value = get(g:, 'yui_line_numbers', 'fade')
	if s:yui_line_numbers_value ==? 'fade'
		${OptionFadeSignColumn}
		hi! link LineNr SignColumn
	elseif s:yui_line_numbers_value ==? 'emphasize'
		${OptionEmphasizedSignColumn}
		hi! link LineNr SignColumn
	endif


	let s:yui_emphasized_comments_value = get(g:, 'yui_emphasized_comments', 0)
	if s:yui_emphasized_comments_value ==? 1
		${LegacyOptionEmphasizedComments}
	elseif s:yui_emphasized_comments_value ==? 0
		${LegacyOptionFadedComments}
	endif


	let s:yui_comments_value = get(g:, 'yui_comments', 'normal')
	if s:yui_comments_value ==? 'normal'
		${OptionNormalComments}
	elseif s:yui_comments_value ==? 'fade'
		${OptionFadedComments}
	elseif s:yui_comments_value ==? 'emphasize'
		${OptionEmphasizedComments}
	elseif s:yui_comments_value ==? 'bg'
		${OptionBackgroundComments}
	endif
	]],
		merge(colors, { theme_name = name })
	)
end
