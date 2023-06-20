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
	let g:terminal_color_1 = '#A50303'
	let g:terminal_color_2 = '#38551E'
	let g:terminal_color_3 = '#7E6901'
	let g:terminal_color_4 = '#1E5571'
	let g:terminal_color_5 = '#6132d7'
	let g:terminal_color_6 = '#37766F'
	let g:terminal_color_7 = '#f6f3f0'
	let g:terminal_color_8 = '#5f503e'
	let g:terminal_color_9 = '#A50303'
	let g:terminal_color_10 = '#38551E'
	let g:terminal_color_11 = '#7E6901'
	let g:terminal_color_12 = '#1E5571'
	let g:terminal_color_13 = '#6132d7'
	let g:terminal_color_14 = '#37766F'
	let g:terminal_color_15 = '#f6f3f0'
else
	let g:terminal_ansi_colors = ['#5f503e','#A50303','#38551E','#7E6901','#1E5571','#6132d7','#37766F','#f6f3f0','#5f503e','#A50303','#38551E','#7E6901','#1E5571','#6132d7','#37766F','#f6f3f0']
endif
" UI & Syntax
hi Normal guifg=#5f503e ctermfg=239 guibg=#f6f3f0 ctermbg=255
hi! link NormalNC Normal
hi StatusLine guifg=#4d4031 ctermfg=238 guibg=#e0d5ca ctermbg=188 gui=NONE cterm=NONE
hi StatusLineNC guifg=#5f503e ctermfg=239 guibg=#efeae5 ctermbg=255 gui=NONE cterm=NONE
hi! link MsgArea Normal
hi ColorColumn guifg=fg ctermfg=fg guibg=#ede7e1 ctermbg=254
hi Conceal guifg=fg ctermfg=fg guibg=NONE ctermbg=NONE gui=underline cterm=underline
hi CursorColumn guifg=NONE ctermfg=NONE guibg=#ebe4dd ctermbg=254
hi Cursor guifg=bg ctermfg=bg guibg=fg ctermbg=fg
hi! link lCursor Cursor
hi! link CursorIM Cursor
hi CursorLine guifg=NONE ctermfg=NONE guibg=#ebe4dd ctermbg=254 gui=NONE cterm=NONE
hi CursorLineNr guifg=NONE ctermfg=NONE guibg=#ebe4dd ctermbg=254 gui=NONE cterm=NONE
hi CopilotSuggestion guifg=#867159 ctermfg=95 guibg=NONE ctermbg=NONE
hi DiffAdd guifg=#38551E ctermfg=237 guibg=#DFF0D0 ctermbg=194
hi DiffChange guifg=#7E6901 ctermfg=94 guibg=#FEF0B4 ctermbg=229
hi DiffDelete guifg=#A50303 ctermfg=124 guibg=#F7D9D9 ctermbg=224 gui=NONE cterm=NONE
hi DiffText guifg=#1E5571 ctermfg=23 guibg=#E7F4F8 ctermbg=255
hi Directory guifg=fg ctermfg=fg guibg=NONE ctermbg=NONE
hi ErrorMsg guifg=#A50303 ctermfg=124 guibg=NONE ctermbg=NONE gui=bold cterm=bold
hi Identifier guifg=fg ctermfg=fg guibg=NONE ctermbg=NONE
hi Ignore guifg=fg ctermfg=fg guibg=NONE ctermbg=NONE
hi! link MatchParen CurSearch
hi WinBar guifg=fg ctermfg=fg guibg=NONE ctermbg=NONE guisp=#867159 gui=underline cterm=underline
hi WinBarNC guifg=#867159 ctermfg=95 guibg=NONE ctermbg=NONE guisp=#d6c7b6 gui=underline cterm=underline
hi TabLineSel guifg=#4d4031 ctermfg=238 guibg=#e0d5ca ctermbg=188 gui=NONE cterm=NONE
hi TabLine guifg=#4d4031 ctermfg=238 guibg=NONE ctermbg=NONE gui=NONE cterm=NONE
hi TabLineFill guifg=#4d4031 ctermfg=238 guibg=NONE ctermbg=NONE gui=NONE cterm=NONE
hi ModeMsg guifg=#1E5571 ctermfg=23 guibg=#E7F4F8 ctermbg=255 gui=NONE cterm=NONE
hi MoreMsg guifg=#1E5571 ctermfg=23 guibg=#E7F4F8 ctermbg=255 gui=NONE cterm=NONE
hi WarningMsg guifg=#7E6901 ctermfg=94 guibg=#FEF0B4 ctermbg=229 gui=NONE cterm=NONE
hi NonText guifg=#d6c7b6 ctermfg=187 guibg=NONE ctermbg=NONE
hi Whitespace guifg=#d6c7b6 ctermfg=187 guibg=NONE ctermbg=NONE
hi Pmenu guifg=#5f503e ctermfg=239 guibg=#ebe4dd ctermbg=254
hi PmenuSel guifg=#6132d7 ctermfg=62 guibg=#dcd7f9 ctermbg=189 gui=bold cterm=bold
hi PmenuKind guifg=#5f503e ctermfg=239 guibg=#ebe4dd ctermbg=254 gui=italic cterm=italic
hi PmenuKindSel guifg=#6132d7 ctermfg=62 guibg=#dcd7f9 ctermbg=189 gui=italic cterm=italic
hi PmenuExtra guifg=#5f503e ctermfg=239 guibg=#ebe4dd ctermbg=254
hi PmenuExtraSel guifg=#6132d7 ctermfg=62 guibg=#dcd7f9 ctermbg=189
hi PmenuSbar guifg=NONE ctermfg=NONE guibg=#ebe4dd ctermbg=254
hi PmenuThumb guifg=NONE ctermfg=NONE guibg=#d7c6b4 ctermbg=187
hi PreProc guifg=fg ctermfg=fg guibg=NONE ctermbg=NONE
hi Question guifg=fg ctermfg=fg guibg=NONE ctermbg=NONE
hi CurSearch guifg=#4d26ad ctermfg=55 guibg=#c7bef5 ctermbg=183 gui=bold cterm=bold
hi IncSearch guifg=#dcd7f9 ctermfg=189 guibg=#6132d7 ctermbg=62 gui=NONE cterm=NONE
hi Search guifg=#6132d7 ctermfg=62 guibg=#dcd7f9 ctermbg=189 gui=NONE cterm=NONE
hi Visual guifg=#6132d7 ctermfg=62 guibg=#dcd7f9 ctermbg=189
hi VisualNOS guifg=#6c44df ctermfg=62 guibg=#eae7fb ctermbg=255
hi Special guifg=fg ctermfg=fg guibg=NONE ctermbg=NONE
hi SpecialKey guifg=#7E6901 ctermfg=94 guibg=#FEF0B4 ctermbg=229
hi SpellBad guifg=fg ctermfg=fg guibg=NONE ctermbg=NONE gui=undercurl cterm=undercurl
hi! link SpellCap SpellBad
hi! link SpellLocal SpellBad
hi! link SpellRare SpellBad
hi Statement guifg=fg ctermfg=fg guibg=NONE ctermbg=NONE gui=italic cterm=italic
hi Type guifg=NONE ctermfg=NONE guibg=NONE ctermbg=NONE gui=italic cterm=italic
hi Underlined guifg=fg ctermfg=fg guibg=NONE ctermbg=NONE gui=underline cterm=underline
hi VertSplit guifg=#d6c7b6 ctermfg=187 guibg=NONE ctermbg=NONE gui=NONE cterm=NONE
hi Tooltip guifg=#5f503e ctermfg=239 guibg=#ebe4dd ctermbg=254
hi Menu guifg=#5f503e ctermfg=239 guibg=#ebe4dd ctermbg=254
hi Scrollbar guifg=NONE ctermfg=NONE guibg=#ebe4dd ctermbg=254
hi Title guifg=fg ctermfg=fg guibg=NONE ctermbg=NONE
hi! link MsgSeparator VertSplit
hi! link EndOfBuffer NonText
hi! link QuickFixLine Search
if !has('nvim')
	hi! link StatusLineTerm StatusLine
	hi! link StatusLineTermNC StatusLineNC
endif
hi! link WildMenu IncSearch
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
hi String guifg=fg ctermfg=fg guibg=NONE ctermbg=NONE gui=bold cterm=bold
hi! link Structure Type
hi! link Tag Special
hi! link Typedef Type
hi! link Substitute IncSearch
hi Operator guifg=fg ctermfg=fg guibg=NONE ctermbg=NONE
hi Repeat guifg=fg ctermfg=fg guibg=NONE ctermbg=NONE
hi Constant guifg=fg ctermfg=fg guibg=NONE ctermbg=NONE gui=bold cterm=bold
hi jsParensError guifg=fg ctermfg=fg guibg=NONE ctermbg=NONE
hi Todo guifg=#7E6901 ctermfg=94 guibg=#FEF0B4 ctermbg=229 gui=bold cterm=bold
hi Error guifg=#A50303 ctermfg=124 guibg=bg ctermbg=bg gui=bold cterm=bold
hi Exception guifg=fg ctermfg=fg guibg=NONE ctermbg=NONE
hi Keyword guifg=fg ctermfg=fg guibg=NONE ctermbg=NONE
hi Label guifg=fg ctermfg=fg guibg=NONE ctermbg=NONE
" Floating Windows
hi NormalFloat guifg=fg ctermfg=fg guibg=bg ctermbg=bg
hi FloatTitle guifg=fg ctermfg=fg guibg=bg ctermbg=bg gui=underline,bold cterm=underline,bold
hi FloatBorder guifg=fg ctermfg=fg guibg=NONE ctermbg=NONE

" Diagnostic
hi DiagnosticError guifg=#A50303 ctermfg=124 guibg=#F7D9D9 ctermbg=224
hi DiagnosticHint guifg=#38551E ctermfg=237 guibg=#DFF0D0 ctermbg=194
hi DiagnosticInfo guifg=#1E5571 ctermfg=23 guibg=#E7F4F8 ctermbg=255
hi DiagnosticWarn guifg=#7E6901 ctermfg=94 guibg=#FEF0B4 ctermbg=229
hi DiagnosticFloatingError guifg=#A50303 ctermfg=124 guibg=NONE ctermbg=NONE gui=NONE cterm=NONE
hi DiagnosticFloatingHint guifg=NONE ctermfg=NONE guibg=NONE ctermbg=NONE gui=NONE cterm=NONE
hi DiagnosticFloatingInfo guifg=NONE ctermfg=NONE guibg=NONE ctermbg=NONE gui=NONE cterm=NONE
hi DiagnosticFloatingWarn guifg=NONE ctermfg=NONE guibg=NONE ctermbg=NONE gui=NONE cterm=NONE
hi DiagnosticUnderlineError guifg=NONE ctermfg=NONE guibg=NONE ctermbg=NONE guisp=#A50303 gui=undercurl cterm=undercurl
hi DiagnosticUnderlineHint guifg=NONE ctermfg=NONE guibg=NONE ctermbg=NONE guisp=#38551E gui=undercurl cterm=undercurl
hi DiagnosticUnderlineInfo guifg=NONE ctermfg=NONE guibg=NONE ctermbg=NONE guisp=#1E5571 gui=undercurl cterm=undercurl
hi DiagnosticUnderlineWarn guifg=NONE ctermfg=NONE guibg=NONE ctermbg=NONE guisp=#7E6901 gui=undercurl cterm=undercurl
hi DiagnosticSignError guifg=#A50303 ctermfg=124 guibg=NONE ctermbg=NONE gui=NONE cterm=NONE
hi DiagnosticSignHint guibg=NONE ctermbg=NONE gui=NONE cterm=NONE
hi DiagnosticSignInfo guifg=#1E5571 ctermfg=23 guibg=NONE ctermbg=NONE gui=NONE cterm=NONE
hi DiagnosticSignWarn guifg=#7E6901 ctermfg=94 guibg=NONE ctermbg=NONE gui=NONE cterm=NONE

" LSP
hi! link LspSignatureActiveParameter Search

" Vim Script
hi vimCommand guifg=fg ctermfg=fg guibg=NONE ctermbg=NONE gui=NONE cterm=NONE
hi vimFilter guifg=fg ctermfg=fg guibg=NONE ctermbg=NONE gui=bold cterm=bold
hi! link vimGroup Normal
hi! link vimHiGui Normal
hi! link vimHiKeyList Normal
hi! link vimHiGroup Normal
hi! link vimHiCTerm Normal
hi! link vimHiCTermFgBg Normal
hi! link vimHiGuiFgBg Normal

" HTML
hi htmlTagName guifg=fg ctermfg=fg guibg=NONE ctermbg=NONE gui=NONE cterm=NONE
" Lua
hi luaFuncKeyword guifg=fg ctermfg=fg guibg=NONE ctermbg=NONE gui=bold cterm=bold
hi luaRepeat guifg=fg ctermfg=fg guibg=NONE ctermbg=NONE gui=bold cterm=bold
hi! link luaParens Normal
hi luaSpecialValue guifg=fg ctermfg=fg guibg=NONE ctermbg=NONE gui=bold cterm=bold
hi! link luaLocal Normal
hi! link luaBraces Normal
hi! link luaStatement Normal
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
hi! link helpDeprecated DiffDelete
hi helpExample guifg=fg ctermfg=fg guibg=bg ctermbg=bg gui=bold cterm=bold
hi helpHeader guifg=NONE ctermfg=NONE guibg=NONE ctermbg=NONE gui=bold cterm=bold
hi helpHeadline guifg=fg ctermfg=fg guibg=NONE ctermbg=NONE gui=bold cterm=bold
hi helpHyperTextEntry guifg=NONE ctermfg=NONE guibg=NONE ctermbg=NONE gui=underline cterm=underline
hi helpHyperTextJump guifg=NONE ctermfg=NONE guibg=NONE ctermbg=NONE gui=underline cterm=underline
hi helpNote guifg=NONE ctermfg=NONE guibg=NONE ctermbg=NONE gui=bold cterm=bold
hi helpOption guifg=NONE ctermfg=NONE guibg=NONE ctermbg=NONE gui=bold cterm=bold
hi helpSectionDelim guifg=#d6c7b6 ctermfg=187 guibg=NONE ctermbg=NONE gui=NONE cterm=NONE
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
hi TreesitterContext guifg=fg ctermfg=fg guibg=#ebe4dd ctermbg=254 gui=bold cterm=bold

" Leap
hi LeapMatch guifg=#38551E ctermfg=237 guibg=#DFF0D0 ctermbg=194 gui=NONE cterm=NONE
hi LeapLabelPrimary guifg=#1E5571 ctermfg=23 guibg=#E7F4F8 ctermbg=255 gui=bold cterm=bold
hi LeapLabelSecondary guifg=#256484 ctermfg=24 guibg=#ffffff ctermbg=231 gui=NONE cterm=NONE
hi LeapLabelSelected guifg=#6132d7 ctermfg=62 guibg=#dcd7f9 ctermbg=189 gui=NONE cterm=NONE

" Which Key
hi WhichKeySeperator guifg=fg ctermfg=fg guibg=NONE ctermbg=NONE
hi! link WhichKeyFloating Pmenu

" Telescope
hi! link TelescopeMatching CurSearch
hi! link TelescopeSelection Search

" yui_folds
let s:yui_folds_value = get(g:, 'yui_folds', 'fade')
if s:yui_folds_value ==? 'fade'
	hi FoldColumn guifg=#d6c7b6 ctermfg=187 guibg=NONE ctermbg=NONE
	hi Folded guifg=#d6c7b6 ctermfg=187 guibg=NONE ctermbg=NONE
elseif s:yui_folds_value ==? 'emphasize'
	hi FoldColumn guifg=#5f503e ctermfg=239 guibg=#ebe4dd ctermbg=254
	hi Folded guifg=#5f503e ctermfg=239 guibg=#ebe4dd ctermbg=254
endif
" yui_line_numbers
let s:yui_line_numbers_value = get(g:, 'yui_line_numbers', 'fade')
if s:yui_line_numbers_value ==? 'fade'
	hi SignColumn guifg=#d6c7b6 ctermfg=187 guibg=NONE ctermbg=NONE
	hi LineNr guifg=#d6c7b6 ctermfg=187 guibg=NONE ctermbg=NONE
elseif s:yui_line_numbers_value ==? 'emphasize'
	hi SignColumn guifg=#5f503e ctermfg=239 guibg=#ebe4dd ctermbg=254
	hi LineNr guifg=#5f503e ctermfg=239 guibg=#ebe4dd ctermbg=254
endif
" yui_emphasized_comments
let s:yui_emphasized_comments_value = get(g:, 'yui_emphasized_comments', 0)
if s:yui_emphasized_comments_value ==? 1
	hi Comment guifg=#6132d7 ctermfg=62 guibg=NONE ctermbg=NONE gui=italic cterm=italic
elseif s:yui_emphasized_comments_value ==? 0
	hi Comment guifg=#d6c7b6 ctermfg=187 guibg=NONE ctermbg=NONE gui=italic cterm=italic
endif
" yui_comments
let s:yui_comments_value = get(g:, 'yui_comments', 'normal')
if s:yui_comments_value ==? 'normal'
	hi Comment guifg=fg ctermfg=fg guibg=NONE ctermbg=NONE gui=italic cterm=italic
elseif s:yui_comments_value ==? 'fade'
	hi Comment guifg=#d6c7b6 ctermfg=187 guibg=NONE ctermbg=NONE gui=italic cterm=italic
elseif s:yui_comments_value ==? 'emphasize'
	hi Comment guifg=#6132d7 ctermfg=62 guibg=NONE ctermbg=NONE gui=italic cterm=italic
elseif s:yui_comments_value ==? 'bg'
	hi Comment guifg=#5f503e ctermfg=239 guibg=#ebe4dd ctermbg=254 gui=NONE cterm=NONE
endif

