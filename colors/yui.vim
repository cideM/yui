" Name:         Yui
" Version:      0.16.0
" Author:       Florian B <yuuki@protonmail.com>
" Maintainer:   Florian B <yuuki@protonmail.com>
" License:      Vim License (see `:help license`)
" Last Updated: Mon Jul 27 17:27:26 2020

" YUI only supports a light background
set background=light

" The gui_running check is only meaningful in Vim, but I'm trying to support
" both.
" https://github.com/equalsraf/neovim-qt/issues/102#issuecomment-191054445
if !has('gui_running') && &t_Co < 256
  finish
endif

hi clear

" Many color schemes use syntax_on but :help mentions g:syntax_on. The answer
" is: it doesn't matter. :help internal-variables explains that without a
" prefix the name will use the global namespace
if exists('g:syntax_on')
  " Activate the default colors again so we start from a blank slate
  syntax reset
endif

" Set the name of the colorscheme
let g:colors_name = 'yui'

" ============== COLOR PALETTE ==================
" Use shades of the foreground and background for differentiating elemens
" without colors.
" Use colors sparingly, such as for Git diffs.
" #004AB3 - Blue
" #4D4000 - Yellow
" #751400 - Red
" #304D00 - Green
" #5137e1 - Purple
" #4932CB - Purple Shade 10%
" #627CAC - Blue/Grey
" #DCD7F9 - Light Purple
" #C6C2E0 - Light Purple Shade 10%
" #B0ACC7 - Light Purple Shade 20%
" #DBF9FF - Light Cyan
" #FFF5C4 - Light Yellow
" #E3FFB3 - Light Green
" #FFDBE7 - Light Magenta
" #DBEAFF - Light Blue
" #FFCABF - Light Red
"
" Special accent colors
" #B30000 - Salmon 35%
" #700000 - Salmon 22%
" #FFE6E6 - Light Salmon 95%
" #FFB3B3 - Light Salmon 85%

" Make sure the contrast ratio for the default BG and FG pair is AAA
" https://webaim.org/resources/contrastchecker/
" Normal BG Lightness
" #FFFFFF - 100% hsl(12, 20%, 100%)
" #F5F1F0 - 95% DEFAULT BG
" #EBE2E0 - 90%
" #E0D4D1 - 85%
" #D6C6C2 - 80%
"
" Normal FG Lightness
" #FFFFFF - 100% hsl(14, 8%, 100%)
" #B9AFAC - 70%
" #8A7A75 - 50%
" #6e625e - 40%
" #534946 - 30% DEFAULT FG
" #2D2320 - 15%
" #201613 - 10%
hi! Normal guibg=#F5F1F0 guifg=#534946 guisp=NONE

" -------------- Cursor Stuff -------------------
  hi! CursorLineNr guibg=#FFFFFF guifg=#534946 gui=NONE
  " v-- If you don't set guifg CursorLine bg will have a lower priority than
  " e.g., comments (or any other bg color)
  " https://github.com/neovim/neovim/issues/7383
  hi! CursorLine guibg=#FFFFFF guifg=fg gui=NONE
  hi! Cursor guifg=bg guibg=fg guisp=NONE gui=NONE
  hi! link CursorIM Cursor
  hi! link lCursor Cursor

" -------------- Left Sidebar -------------------
  hi! ColorColumn guibg=NONE guifg=NONE gui=NONE
  hi! SignColumn guibg=NONE gui=NONE
  hi! LineNr guibg=NONE guifg=#958783 gui=NONE

" -------------- Statusline ---------------------
  hi! StatusLine guifg=bg guibg=fg gui=bold guisp=NONE
  hi! StatusLineNC guibg=#E0D4D1 guifg=fg gui=NONE guisp=NONE
  " hi! WildMenu guibg=#FFFFFF guifg=fg guisp=NONE gui=NONE
  hi! WildMenu guibg=#5137e1 guifg=#C6C2E0 guisp=NONE gui=NONE

" -------------- Tabline ------------------------
  " v-- AA only but okay since it's not supposed to be in focus
  hi! TabLine guibg=NONE guifg=NONE gui=NONE guisp=NONE
  hi! link TabLineFill TabLine
  " v-- This also applies to a lot of stuff in :ts, better not underline it
  hi! link TabLineSel Visual
  " v-- This is for the number of panes in the current tab shown in the top
  " left corner

" -------------- Folds --------------------------
  " v-- AA
  " hi! Folded guibg=#E0D4D1 guifg=#8A7A75 guisp=NONE gui=NONE
  hi! Folded guibg=NONE guifg=#8A7A75 guisp=NONE gui=NONE
  hi! link FoldColumn Folded

" -------------- Completion Menu (PMenu) --------
  hi! Pmenu guifg=NONE guibg=#EBE2E0 guisp=NONE gui=NONE
  hi! PmenuThumb guifg=NONE guibg=fg guisp=NONE gui=NONE
  hi! link PmenuSbar PMenu
  hi! PmenuSel guibg=#5137e1 guifg=#C6C2E0 guisp=NONE gui=NONE

" -------------- Terminal -----------------------
  hi! link TermCursor Cursor
  hi! TermCursorNC guifg=bg guibg=#8A7A75

" -------------- Whatever -----------------------
  " o-- Strangely, this affects the attributes in the command line doing :hi
  " v   This also applies to the path to a tag when doing :ts
  hi! Directory guifg=NONE guibg=NONE guisp=NONE gui=underline
  hi! link ErrorMsg Error
  hi! VertSplit guibg=#B9AFAC guifg=bg
  hi! link EndOfBuffer LineNr
  hi! link NonText Whitespace
  " I don't like concealed text that isn't somehow differentiated from the
  " rest of the text. I've actually been bitten by this when hastily editing
  " CSV files and what I thought were | were actually , in disguise
  hi! Conceal guifg=NONE guibg=NONE guisp=NONE gui=undercurl
  hi! MatchParen guifg=NONE guibg=#E0D4D1 guisp=NONE gui=underline,bold
  hi! link ModeMsg Normal
  hi! link MoreMsg Normal
  hi! link MsgArea Normal
  hi! link MsgSeparator Normal
  " v-- All sorts of popups, including LSP floating windows
  hi! link NormalFloat Pmenu
  hi! link NormalNC Normal
  " This is not just a different hue from the other light palette colors, it's
  " also slightly more saturated. Yellow is really hard to see on a light grey
  " background.
  hi! WarningMsg guibg=#FFF5C4 guifg=#4D4000 gui=NONE
  " v-- Not even AA since I want these characters to fade away
  hi! Whitespace guifg=#B9AFAC guibg=NONE guisp=NONE gui=NONE
  " v-- I'm not really sure how this is different from Whitespace
  hi! link SpecialKey Whitespace
  hi! Visual guibg=#DCD7F9 guifg=#5137e1 guisp=NONE gui=NONE
  " v-- I don't know which actions trigger VisualNOS
  hi! link VisualNOS Visual
  hi! link Question Normal
  hi! link EndOfBuffer Normal

" -------------- Spellchecker -------------------
  hi! link SpellBad ErrorMsg
  hi! SpellCap guifg=NONE guibg=NONE guisp=NONE gui=underline
  hi! SpellLocal guifg=NONE guibg=NONE guisp=NONE gui=underline
  hi! SpellRare guifg=NONE guibg=NONE guisp=NONE gui=underline

" -------------- VIM Only -----------------------
if !has('nvim')
  hi! Tooltip guifg=#534946 guibg=#EBE2E0
  hi! Menu guifg=#534946 guibg=#EBE2E0
endif

" -------------- Diffs --------------------------
  hi! DiffAdd guifg=#304D00 guibg=#E3FFB3 guisp=NONE gui=NONE
  hi! DiffChange guifg=#4D4000 guibg=#FFF5C4 guisp=NONE gui=NONE
  hi! DiffText guifg=#4D4000 guibg=#FFF5C4 guisp=NONE gui=bold
  hi! DiffDelete guifg=#751400 guibg=#FFCABF guisp=NONE gui=NONE

" -------------- Search & Replace ---------------
  hi! Search guibg=#C6C2E0 guifg=#4932CB guisp=NONE gui=NONE
  " hi! IncSearch guibg=#DBEAFF guifg=#004AB3 guisp=NONE gui=NONE
  hi! IncSearch guibg=#5137e1 guifg=#DCD7F9 guisp=NONE gui=bold
  " hi! Search guibg=#E0D4D1 guifg=NONE guisp=NONE gui=NONE
  " hi! Substitute guibg=NONE guifg=NONE guisp=NONE gui=underline
  hi! link Substitute IncSearch

" -------------- Preferred groups ---------------
  " :h group-name
  " hi! Comment guibg=NONE guifg=#5137e1 guisp=NONE gui=italic,bold
  hi! Comment guibg=#EBE2E0 guifg=NONE guisp=NONE gui=NONE
  " hi! Comment guibg=NONE guifg=NONE guisp=NONE gui=italic
		" hi! Comment guibg=NONE guifg=#5137e1 guisp=NONE gui=italic
  " hi! Comment guibg=NONE guifg=#6e625e guisp=NONE gui=italic
	hi! Identifier guibg=NONE guifg=fg guisp=NONE gui=NONE
  hi! Constant guibg=NONE guifg=#201613 guisp=NONE gui=NONE
  hi! Statement guibg=NONE guifg=fg guisp=NONE gui=italic
  hi! PreProc guibg=NONE guifg=fg guisp=NONE gui=NONE
  hi! Type guibg=NONE guifg=fg guisp=NONE gui=italic
  hi! Special guibg=NONE guifg=fg guisp=NONE gui=NONE
  hi! Underlined guibg=NONE guifg=fg guisp=NONE gui=underline
  " For these colors I typically use a darker lightness of the bg for the fg
  hi! Error guibg=#FFCABF guifg=#751400 guisp=NONE gui=NONE
  hi! link Todo WarningMsg
  hi! Ignore guibg=#F5F1F0 guifg=fg guisp=NONE gui=NONE

" -------------- More granular groups -----------
" -------------- XML ----------------------------
  hi! link xmlProcessingDelim Normal
  hi xmlTagName guifg=NONE guibg=NONE guisp=NONE gui=NONE

  hi! link Title Normal

" -------------- Vim Script ---------------------
  " v-- These are normally linked to Type, which is italicized, leading to
  " lots of italics in this file
  hi! link vimGroup Normal
  hi! link vimHiGui Normal
  hi! link vimHiGroup Normal
  hi! link vimHiGuiFgBg Normal
  hi! vimCommentTitle guifg=NONE guibg=#EBE2E0 guisp=NONE gui=underline
  hi! vimCommentTitleLeader guifg=NONE guibg=#EBE2E0 guisp=NONE gui=NONE

" -------------- Help Text ----------------------
  hi! helpHyperTextJump guifg=NONE guifg=NONE gui=underline guisp=NONE
  " v-- Making this underlined can have weird effects since sometimes a
  " helpHeadline is empty and then you just have a weird line
  hi! helpHeadline guifg=NONE guibg=NONE guisp=NONE gui=bold

" -------------- vim-sneak ----------------------
  hi! link Sneak Visual
  hi! link SneakScope IncSearch
  " v-- For all matches except the first, where the cursor currently resides
  hi! link SneakLabel Search

" -------------- vim-dirvish --------------------
   " v-- items added to the arglist
   hi! link DirvishArg Search
   " v-- directories
   hi! DirvishPathTail guifg=NONE guibg=NONE guisp=NONE gui=bold

" -------------- quickfix -----------------------
   hi! link quickfixline Visual

" -------------- markdown -----------------------
   hi! markdownHeadingDelimiter guifg=NONE guibg=NONE guisp=NONE gui=underline
   hi! link markdownH1Delimiter markdownHeadingDelimiter
   " hi! link markdownH2Delimiter markdownH1Delimiter
   " hi! link markdownH3Delimiter markdownH1Delimiter
   " hi! link markdownH4Delimiter markdownH1Delimiter
   " hi! link markdownH5Delimiter markdownH1Delimiter
   " hi! link markdownH6Delimiter markdownH1Delimiter
   hi! mkdHeading guifg=NONE guibg=NONE guisp=NONE gui=underline
   hi! markdownCode guifg=NONE guibg=NONE guisp=NONE gui=bold
   hi! link markdownCodeDelimiter folded
   hi! markdownBold guifg=NONE guibg=NONE guisp=NONE gui=bold
   hi! link markdownBoldDelimiter folded
   hi! markdownItalic guifg=NONE guibg=NONE guisp=NONE gui=italic
   hi! link markdownItalicDelimiter folded
   hi! markdownBoldItalic guifg=NONE guibg=NONE guisp=NONE gui=italic,bold
   hi! link markdownBoldItalicDelimiter folded
   hi! markdownUrl guifg=NONE guibg=NONE guisp=NONE gui=underline
   hi! link markdownLinkDelimiter folded
   hi! link markdownLinkDelimiter folded
   hi! markdownLinkText guifg=NONE guibg=NONE guisp=NONE gui=NONE
   hi! link markdownLinkTextDelimiter folded

" -------------- LSP ----------------------------
   hi! link LspDiagnosticsDefaultError Error
   hi! link LspDiagnosticsDefaultWarning WarningMsg

" -------------- Git ----------------------------
  hi! link diffAdded DiffAdd
  hi! link diffRemoved DiffDelete
  hi! link diffComment Comment
  hi! link diffChanged DiffChange
