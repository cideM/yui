set background=light
if (!has('gui_running') && &t_Co < 256 && !has('nvim'))
	finish
endif
hi clear
if exists('syntax_on')
	syntax reset
endif
let g:colors_name = 'yui'
" Terminal Colors 
if has('nvim')
	let g:terminal_color_0 = '#5f503e'
	let g:terminal_color_1 = '#350303'
	let g:terminal_color_2 = '#4e4b36'
	let g:terminal_color_3 = '#7c4f18'
	let g:terminal_color_4 = '#00588f'
	let g:terminal_color_5 = '#6132d7'
	let g:terminal_color_6 = '#4a5054'
	let g:terminal_color_7 = '#f6f3f0'
	let g:terminal_color_8 = '#5f503e'
	let g:terminal_color_9 = '#350303'
	let g:terminal_color_10 = '#4e4b36'
	let g:terminal_color_11 = '#7c4f18'
	let g:terminal_color_12 = '#00588f'
	let g:terminal_color_13 = '#8368e7'
	let g:terminal_color_14 = '#4a5054'
	let g:terminal_color_15 = '#f6f3f0'
else
	let g:terminal_ansi_colors = ['#5f503e','#350303','#4e4b36','#7c4f18','#00588f','#6132d7','#4a5054','#f6f3f0','#5f503e','#350303','#4e4b36','#7c4f18','#00588f','#8368e7','#4a5054','#f6f3f0']
endif
" UI & Syntax
hi Normal guifg=#5f503e ctermfg=239 guibg=#f6f3f0 ctermbg=255
hi! link NormalNC Normal
hi! link MsgArea Normal
hi ColorColumn guifg=fg ctermfg=fg guibg=#ebe4dd ctermbg=254
hi Conceal guifg=#d6c7b6 ctermfg=187 guibg=NONE ctermbg=NONE
hi CursorColumn guifg=NONE ctermfg=NONE guibg=#fdfcfb ctermbg=231
hi Cursor guifg=bg ctermfg=bg guibg=fg ctermbg=fg
hi CursorIM guifg=NONE ctermfg=NONE guibg=fg ctermbg=fg
hi CursorLine guifg=fg ctermfg=fg guibg=#fdfcfb ctermbg=231 gui=NONE cterm=NONE
hi CursorLineNr guifg=fg ctermfg=fg guibg=#fdfcfb ctermbg=231 gui=NONE cterm=NONE
hi DiffAdd guifg=#4e4b36 ctermfg=238 guibg=#e2dba3 ctermbg=187
hi DiffChange guifg=#7c4f18 ctermfg=94 guibg=#fef0e8 ctermbg=255
hi DiffDelete guifg=#350303 ctermfg=233 guibg=#f8acac ctermbg=217 gui=NONE cterm=NONE
hi DiffText guifg=#4a5054 ctermfg=239 guibg=#d9e0e3 ctermbg=253
hi Directory guifg=fg ctermfg=fg guibg=NONE ctermbg=NONE
hi! link Error DiffDelete
hi! link ErrorMessage DiffDelete
hi! link ErrorMsg DiffDelete
hi Identifier guifg=fg ctermfg=fg guibg=NONE ctermbg=NONE
hi Ignore guifg=fg ctermfg=fg guibg=NONE ctermbg=NONE
hi IncSearch guifg=#dcd7f9 ctermfg=189 guibg=#6132d7 ctermbg=62
hi InfoMsg guifg=#6132d7 ctermfg=62 guibg=#dcd7f9 ctermbg=189
hi MatchParen guifg=NONE ctermfg=NONE guibg=#e0d5ca ctermbg=188
hi TabLineSel guifg=fg ctermfg=fg guibg=#e0d5ca ctermbg=188
hi! link TabLine Pmenu
hi! link TabLineFill StatusLineNC
hi ModeMsg guifg=fg ctermfg=fg guibg=NONE ctermbg=NONE
hi MoreMsg guifg=fg ctermfg=fg guibg=NONE ctermbg=NONE
hi NonText guifg=#d6c7b6 ctermfg=187 guibg=NONE ctermbg=NONE
hi Pmenu guifg=NONE ctermfg=NONE guibg=#ebe4dd ctermbg=254
hi PmenuThumb guifg=NONE ctermfg=NONE guibg=fg ctermbg=fg
hi PreProc guifg=fg ctermfg=fg guibg=NONE ctermbg=NONE
hi Question guifg=fg ctermfg=fg guibg=NONE ctermbg=NONE
hi Search guifg=#6132d7 ctermfg=62 guibg=#dcd7f9 ctermbg=189
hi CurSearch guifg=#dcd7f9 ctermfg=189 guibg=#8368e7 ctermbg=98
hi Visual guifg=#3b1c89 ctermfg=54 guibg=#b4a8f2 ctermbg=147
hi Special guifg=fg ctermfg=fg guibg=NONE ctermbg=NONE
hi SpecialKey guifg=fg ctermfg=fg guibg=NONE ctermbg=NONE
hi! link SpellBad DiffDelete
hi SpellCap guifg=NONE ctermfg=NONE guibg=NONE ctermbg=NONE guisp=#f8acac gui=undercurl cterm=undercurl
hi SpellLocal guifg=fg ctermfg=fg guibg=NONE ctermbg=NONE
hi SpellRare guifg=fg ctermfg=fg guibg=NONE ctermbg=NONE
hi Statement guifg=fg ctermfg=fg guibg=NONE ctermbg=NONE gui=italic cterm=italic
hi StatusLine guifg=#e0d5ca ctermfg=188 guibg=#453a2c ctermbg=237 gui=reverse cterm=reverse
hi StatusLineNC guifg=#ebe4dd ctermfg=254 guibg=#5f503e ctermbg=239
hi Terminal guifg=fg ctermfg=fg guibg=bg ctermbg=bg
hi! link Todo WarningMsg
hi ToolbarButton guifg=fg ctermfg=fg guibg=NONE ctermbg=NONE
hi ToolbarLine guifg=NONE ctermfg=NONE guibg=NONE ctermbg=NONE
hi Type guifg=NONE ctermfg=NONE guibg=NONE ctermbg=NONE gui=italic cterm=italic
hi Underlined guifg=fg ctermfg=fg guibg=NONE ctermbg=NONE gui=underline cterm=underline
hi VertSplit guifg=#d6c7b6 ctermfg=187 guibg=NONE ctermbg=NONE gui=NONE cterm=NONE
hi VisualNOS guifg=NONE ctermfg=NONE guibg=#fdfcfb ctermbg=231
hi! link WarningMsg DiffChange
hi Whitespace guifg=#d6c7b6 ctermfg=187 guibg=NONE ctermbg=NONE
hi Tooltip guifg=fg ctermfg=fg guibg=#ebe4dd ctermbg=254
hi Menu guifg=fg ctermfg=fg guibg=#ebe4dd ctermbg=254
hi Scrollbar guifg=NONE ctermfg=NONE guibg=#ebe4dd ctermbg=254
hi Title guifg=fg ctermfg=fg guibg=NONE ctermbg=NONE
hi! link NormalNC Normal
hi! link WinBar TabLineSel
hi! link WinBarNC TabLine
hi! link MsgSeparator VertSplit
hi! link EndOfBuffer NonText
hi! link QuickFixLine Search
hi! link PmenuSel WildMenu
hi! link StatusLineTerm StatusLine
hi! link StatusLineTermNC StatusLineNC
hi! link lCursor Cursor
hi! link PmenuSbar Pmenu
hi! link WildMenu Visual
hi! link Boolean Constant
hi! link Character Constant
hi! link Conditional Statement
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
hi! link String Constant
hi! link Structure Type
hi! link Tag Special
hi! link Typedef Type
hi! link Substitute IncSearch
hi Operator guifg=fg ctermfg=fg guibg=NONE ctermbg=NONE
hi Repeat guifg=fg ctermfg=fg guibg=NONE ctermbg=NONE
hi Constant guifg=#453a2c ctermfg=237 guibg=NONE ctermbg=NONE
hi jsParensError guifg=fg ctermfg=fg guibg=NONE ctermbg=NONE
hi Exception guifg=fg ctermfg=fg guibg=NONE ctermbg=NONE
hi Keyword guifg=fg ctermfg=fg guibg=NONE ctermbg=NONE
hi Label guifg=fg ctermfg=fg guibg=NONE ctermbg=NONE

" Floating Windows
hi NormalFloat guifg=fg ctermfg=fg guibg=#ebe4dd ctermbg=254
hi FloatTitle guifg=fg ctermfg=fg guibg=#ebe4dd ctermbg=254 gui=bold cterm=bold
hi FloatBorder guifg=fg ctermfg=fg guibg=#ebe4dd ctermbg=254

" Diagnostic
hi! link DiagnosticError Error
hi DiagnosticHint guifg=#5f503e ctermfg=239 guibg=NONE ctermbg=NONE
hi! link DiagnosticInfo DiffText
hi! link DiagnosticWarn WarningMsg
hi DiagnosticFloatingError guifg=NONE ctermfg=NONE guibg=NONE ctermbg=NONE gui=NONE cterm=NONE
hi DiagnosticFloatingHint guifg=NONE ctermfg=NONE guibg=NONE ctermbg=NONE gui=NONE cterm=NONE
hi DiagnosticFloatingInfo guifg=NONE ctermfg=NONE guibg=NONE ctermbg=NONE gui=NONE cterm=NONE
hi DiagnosticFloatingWarn guifg=NONE ctermfg=NONE guibg=NONE ctermbg=NONE gui=NONE cterm=NONE
hi DiagnosticUnderlineError guifg=NONE ctermfg=NONE guibg=NONE ctermbg=NONE guisp=#350303 gui=undercurl cterm=undercurl
hi DiagnosticUnderlineHint guifg=NONE ctermfg=NONE guibg=NONE ctermbg=NONE guisp=#5f503e gui=undercurl cterm=undercurl
hi DiagnosticUnderlineInfo guifg=NONE ctermfg=NONE guibg=NONE ctermbg=NONE guisp=#4a5054 gui=undercurl cterm=undercurl
hi DiagnosticUnderlineWarn guifg=NONE ctermfg=NONE guibg=NONE ctermbg=NONE guisp=#7c4f18 gui=undercurl cterm=undercurl
hi DiagnosticSignError guifg=#350303 ctermfg=233 guibg=NONE ctermbg=NONE gui=NONE cterm=NONE
hi DiagnosticSignHint guifg=#5f503e ctermfg=239 guibg=NONE ctermbg=NONE gui=NONE cterm=NONE
hi DiagnosticSignInfo guifg=#4a5054 ctermfg=239 guibg=NONE ctermbg=NONE gui=NONE cterm=NONE
hi DiagnosticSignWarn guifg=#7c4f18 ctermfg=94 guibg=NONE ctermbg=NONE gui=NONE cterm=NONE

" LSP
hi! link LspSignatureActiveParameter Search

" Vim Script
hi! link vimGroup Normal
hi! link vimHiGui Normal
hi! link vimHiKeyList Normal
hi! link vimHiGroup Normal
hi! link vimHiCTerm Normal
hi! link vimHiCTermFgBg Normal
hi! link vimHiGuiFgBg Normal

" Lua
hi luaFuncKeyword guifg=fg ctermfg=fg guibg=NONE ctermbg=NONE gui=bold cterm=bold
hi luaRepeat guifg=fg ctermfg=fg guibg=NONE ctermbg=NONE gui=bold cterm=bold
hi luaSpecialValue guifg=fg ctermfg=fg guibg=NONE ctermbg=NONE gui=bold cterm=bold
hi! link luaLocal Normal
hi luaBuiltIn guifg=fg ctermfg=fg guibg=NONE ctermbg=NONE gui=underline cterm=underline
" Typescript
hi typescriptParens guifg=fg ctermfg=fg guibg=NONE ctermbg=NONE

" Markdown
hi mkHeading guifg=NONE ctermfg=NONE guibg=NONE ctermbg=NONE gui=underline cterm=underline
hi mkItalic guifg=NONE ctermfg=NONE guibg=NONE ctermbg=NONE gui=italic cterm=italic
hi markdownBold guifg=NONE ctermfg=NONE guibg=NONE ctermbg=NONE gui=bold cterm=bold
hi markdownUrl guifg=NONE ctermfg=NONE guibg=NONE ctermbg=NONE gui=underline cterm=underline
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

"  Help Text
hi! link helpBacktick Constant
hi! link helpCommand Constant
hi! link helpDeprecated Error
hi helpExample guifg=#453a2c ctermfg=237 guibg=#ebe4dd ctermbg=254 gui=NONE cterm=NONE
hi helpHeader guifg=NONE ctermfg=NONE guibg=NONE ctermbg=NONE gui=bold cterm=bold
hi helpHeadline guifg=#453a2c ctermfg=237 guibg=NONE ctermbg=NONE gui=bold cterm=bold
hi helpHyperTextEntry guifg=NONE ctermfg=NONE guibg=NONE ctermbg=NONE gui=underline cterm=underline
hi helpHyperTextJump guifg=NONE ctermfg=NONE guibg=NONE ctermbg=NONE gui=underline cterm=underline
hi helpNote guifg=NONE ctermfg=NONE guibg=NONE ctermbg=NONE gui=bold cterm=bold
hi helpOption guifg=NONE ctermfg=NONE guibg=NONE ctermbg=NONE gui=bold cterm=bold
hi helpSectionDelim guifg=#867159 ctermfg=95 guibg=NONE ctermbg=NONE gui=NONE cterm=NONE
hi helpSpecial guifg=NONE ctermfg=NONE guibg=NONE ctermbg=NONE gui=bold cterm=bold
hi helpURL guifg=NONE ctermfg=NONE guibg=NONE ctermbg=NONE gui=underline cterm=underline

if has('nvim')
	" Help Text TS
	hi! link @text.literal helpExample
	hi! link @text.reference helpOption
endif

" XML
hi! link xmlProcessingDelim Normal
hi xmlTagName guifg=NONE ctermfg=NONE guibg=NONE ctermbg=NONE gui=NONE cterm=NONE

" fugitive
hi fugitiveStagedSection guifg=fg ctermfg=fg guibg=NONE ctermbg=NONE gui=underline,bold cterm=underline,bold
hi fugitiveUnstagedSection guifg=fg ctermfg=fg guibg=NONE ctermbg=NONE gui=underline,bold cterm=underline,bold
hi! link diffAdded DiffAdd
hi diffLine guifg=fg ctermfg=fg guibg=NONE ctermbg=NONE gui=bold cterm=bold
hi gitHashAbbrev guifg=fg ctermfg=fg guibg=NONE ctermbg=NONE gui=underline cterm=underline
hi! link diffChanged DiffChange
hi! link diffRemoved DiffDelete
hi! link diffComment Comment
hi diffSubname guifg=fg ctermfg=fg guibg=NONE ctermbg=NONE gui=bold cterm=bold

" Git Signs
hi! link GitSignsAdd DiffAdd
hi! link GitSignsAddNr DiffAdd
hi! link GitSignsAddLn DiffAdd
hi! link GitSignsChange DiffChange
hi! link GitSignsChangeNr DiffChange
hi! link GitSignsChangeLn DiffChange
hi! link GitSignsDelete DiffDelete
hi! link GitSignsDeleteNr DiffDelete
hi! link GitSignsDeleteLn DiffDelete

" Indent Blank Line
hi! link IndentBlanklineChar VertSplit

" Sneak
hi! link Sneak Visual
hi! link SneakScope IncSearch
hi! link SneakLabel Search

" Dirvish
hi DirvishPathTail guifg=NONE ctermfg=NONE guibg=NONE ctermbg=NONE gui=bold cterm=bold
hi! link DirvishArg Search

" HL Search Lens
hi! link HlSearchLensNear StatusLine
hi! link HlSearchLens StatusLineNC
hi! link HlSearchNear Search

" Conflict Marker
hi! link ConflictMarkerBegin DiffAdd
hi! link ConflictMarkerOurs DiffAdd
hi! link ConflictMarkerTheirs DiffText
hi! link ConflictMarkerEnd DiffText

" Treesitter Context
hi TreesitterContextBottom gui=underline cterm=underline
hi! link TreesitterContext Pmenu

" Which Key
hi WhichKeySeperator guifg=fg ctermfg=fg guibg=NONE ctermbg=NONE
hi! link WhichKeyFloating Pmenu

" Leap
hi LeapMatch guifg=#4a5054 ctermfg=239 guibg=#d9e0e3 ctermbg=253 gui=NONE cterm=NONE
hi LeapLabelPrimary guifg=#ffffff ctermfg=231 guibg=#ed3f1c ctermbg=202 gui=bold cterm=bold
hi LeapLabelSecondary guifg=#fef0e8 ctermfg=255 guibg=#7c4f18 ctermbg=94 gui=NONE cterm=NONE
hi LeapLabelSelected guifg=#350303 ctermfg=233 guibg=#f8acac ctermbg=217 gui=NONE cterm=NONE

" Telescope
hi TelescopeMatching guifg=#dcd7f9 ctermfg=189 guibg=#8368e7 ctermbg=98 gui=NONE cterm=NONE
hi TelescopeSelection guifg=#6132d7 ctermfg=62 guibg=#dcd7f9 ctermbg=189 gui=NONE cterm=NONE

" yui_folds
let s:yui_folds_value = get(g:, 'yui_folds', 'fade')
if s:yui_folds_value ==? 'fade'
	hi FoldColumn guifg=#d6c7b6 ctermfg=187 guibg=NONE ctermbg=NONE
	hi Folded guifg=#d6c7b6 ctermfg=187 guibg=NONE ctermbg=NONE
elseif s:yui_folds_value ==? 'emphasize'
	hi FoldColumn guifg=#72604b ctermfg=59 guibg=#e0d5ca ctermbg=188
	hi Folded guifg=#72604b ctermfg=59 guibg=#e0d5ca ctermbg=188
endif
" yui_line_numbers
let s:yui_line_numbers_value = get(g:, 'yui_line_numbers', 'fade')
if s:yui_line_numbers_value ==? 'fade'
	hi SignColumn guifg=fg ctermfg=fg guibg=bg ctermbg=bg
	hi LineNr guifg=#867159 ctermfg=95 guibg=NONE ctermbg=NONE
elseif s:yui_line_numbers_value ==? 'emphasize'
	hi SignColumn guifg=#72604b ctermfg=59 guibg=#e0d5ca ctermbg=188
	hi LineNr guifg=#72604b ctermfg=59 guibg=#e0d5ca ctermbg=188
endif
" yui_emphasized_comments
let s:yui_emphasized_comments_value = get(g:, 'yui_emphasized_comments', 0)
if s:yui_emphasized_comments_value ==? 1
	hi Comment guifg=#ed3f1c ctermfg=202 guibg=NONE ctermbg=NONE gui=italic cterm=italic
elseif s:yui_emphasized_comments_value ==? 0
	hi Comment guifg=#72604b ctermfg=59 guibg=NONE ctermbg=NONE gui=italic cterm=italic
endif
" yui_comments
let s:yui_comments_value = get(g:, 'yui_comments', 'normal')
if s:yui_comments_value ==? 'normal'
	hi Comment guifg=#72604b ctermfg=59 guibg=NONE ctermbg=NONE gui=italic cterm=italic
elseif s:yui_comments_value ==? 'fade'
	hi Comment guifg=#72604b ctermfg=59 guibg=NONE ctermbg=NONE gui=italic cterm=italic
elseif s:yui_comments_value ==? 'emphasize'
	hi Comment guifg=#ed3f1c ctermfg=202 guibg=NONE ctermbg=NONE gui=italic cterm=italic
elseif s:yui_comments_value ==? 'bg'
	hi Comment guifg=fg ctermfg=fg guibg=#ebe4dd ctermbg=254 gui=NONE cterm=NONE
endif

