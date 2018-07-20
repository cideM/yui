" Name:         Yui
" Author:       Florian B <yuuki@protonmail.com>
" Maintainer:   Florian B <yuuki@protonmail.com>
" License:      Vim License (see `:help license`)
" Last Updated: Fri Jul 20 18:06:42 2018

if !(has('termguicolors') && &termguicolors) && !has('gui_running')
      \ && (!exists('&t_Co') || &t_Co < 256)
  echoerr '[Yui] There are not enough colors.'
  finish
endif

set background=dark

hi clear
if exists('syntax_on')
  syntax reset
endif

let g:colors_name = 'yui'

if !has('gui_running') && get(g:, 'yui_transparent', 1)
  hi Normal ctermfg=254 ctermbg=NONE guifg=#e8e8e8 guibg=NONE guisp=NONE cterm=NONE gui=NONE
  hi Terminal ctermfg=254 ctermbg=NONE guifg=#e8e8e8 guibg=NONE guisp=NONE cterm=NONE gui=NONE
else
  hi Normal ctermfg=254 ctermbg=234 guifg=#e8e8e8 guibg=#212121 guisp=NONE cterm=NONE gui=NONE
  hi Terminal ctermfg=254 ctermbg=234 guifg=#e8e8e8 guibg=#212121 guisp=NONE cterm=NONE gui=NONE
endif
hi ALEErrorSign ctermfg=202 ctermbg=NONE guifg=#ff5722 guibg=NONE guisp=NONE cterm=NONE gui=NONE
hi ALEWarningSign ctermfg=227 ctermbg=NONE guifg=#ffee58 guibg=NONE guisp=NONE cterm=NONE gui=NONE
hi ColorColumn ctermfg=fg ctermbg=NONE guifg=fg guibg=NONE guisp=NONE cterm=NONE gui=NONE
hi Conceal ctermfg=245 ctermbg=NONE guifg=#898989 guibg=NONE guisp=NONE cterm=NONE gui=NONE
hi Cursor ctermfg=254 ctermbg=NONE guifg=#e8e8e8 guibg=NONE guisp=NONE cterm=NONE gui=NONE
hi CursorColumn ctermfg=254 ctermbg=NONE guifg=#e8e8e8 guibg=NONE guisp=NONE cterm=NONE gui=NONE
hi CursorLine ctermfg=254 ctermbg=240 guifg=#e8e8e8 guibg=#565656 guisp=NONE cterm=NONE gui=NONE
hi CursorLineNr ctermfg=254 ctermbg=NONE guifg=#e8e8e8 guibg=NONE guisp=NONE cterm=NONE gui=NONE
hi DiffAdd ctermfg=114 ctermbg=NONE guifg=#81c784 guibg=NONE guisp=NONE cterm=NONE gui=NONE
hi DiffChange ctermfg=117 ctermbg=NONE guifg=#81d4fa guibg=NONE guisp=NONE cterm=NONE gui=NONE
hi DiffDelete ctermfg=202 ctermbg=NONE guifg=#ff5722 guibg=NONE guisp=NONE cterm=NONE gui=NONE
hi DiffText ctermfg=227 ctermbg=NONE guifg=#ffee58 guibg=NONE guisp=NONE cterm=NONE gui=NONE
hi Directory ctermfg=254 ctermbg=NONE guifg=#e8e8e8 guibg=NONE guisp=NONE cterm=NONE gui=NONE
hi EndOfBuffer ctermfg=254 ctermbg=NONE guifg=#e8e8e8 guibg=NONE guisp=NONE cterm=NONE gui=NONE
hi ErrorMsg ctermfg=234 ctermbg=160 guifg=#212121 guibg=#bf360c guisp=NONE cterm=NONE,reverse gui=NONE,reverse
hi FoldColumn ctermfg=254 ctermbg=NONE guifg=#e8e8e8 guibg=NONE guisp=NONE cterm=NONE gui=NONE
hi Folded ctermfg=245 ctermbg=NONE guifg=#898989 guibg=NONE guisp=NONE cterm=NONE,italic gui=NONE,italic
hi IncSearch ctermfg=254 ctermbg=22 guifg=#e8e8e8 guibg=#446e26 guisp=NONE cterm=NONE,reverse gui=NONE,standout
hi LineNr ctermfg=245 ctermbg=NONE guifg=#898989 guibg=NONE guisp=NONE cterm=NONE gui=NONE
hi MatchParen ctermfg=117 ctermbg=NONE guifg=#81d4fa guibg=NONE guisp=NONE cterm=NONE gui=NONE
hi ModeMsg ctermfg=254 ctermbg=NONE guifg=#e8e8e8 guibg=NONE guisp=NONE cterm=NONE gui=NONE
hi MoreMsg ctermfg=254 ctermbg=NONE guifg=#e8e8e8 guibg=NONE guisp=NONE cterm=NONE gui=NONE
hi NonText ctermfg=254 ctermbg=NONE guifg=#e8e8e8 guibg=NONE guisp=NONE cterm=NONE gui=NONE
hi Pmenu ctermfg=254 ctermbg=236 guifg=#e8e8e8 guibg=#313131 guisp=NONE cterm=NONE gui=NONE
hi PmenuSbar ctermfg=254 ctermbg=236 guifg=#e8e8e8 guibg=#313131 guisp=NONE cterm=NONE gui=NONE
hi PmenuSel ctermfg=254 ctermbg=25 guifg=#e8e8e8 guibg=#01579b guisp=NONE cterm=NONE gui=NONE
hi PmenuThumb ctermfg=254 ctermbg=236 guifg=#e8e8e8 guibg=#313131 guisp=NONE cterm=NONE gui=NONE
hi Question ctermfg=254 ctermbg=NONE guifg=#e8e8e8 guibg=NONE guisp=NONE cterm=NONE gui=NONE
hi! link QuickFixLine Search
hi Search ctermfg=254 ctermbg=25 guifg=#e8e8e8 guibg=#01579b guisp=NONE cterm=NONE gui=NONE
hi SignColumn ctermfg=254 ctermbg=NONE guifg=#e8e8e8 guibg=NONE guisp=NONE cterm=NONE gui=NONE
hi SpecialKey ctermfg=254 ctermbg=NONE guifg=#e8e8e8 guibg=NONE guisp=NONE cterm=NONE gui=NONE
hi SpellBad ctermfg=202 ctermbg=NONE guifg=#ff5722 guibg=NONE guisp=NONE cterm=NONE,underline gui=NONE,underline
hi SpellCap ctermfg=227 ctermbg=NONE guifg=#ffee58 guibg=NONE guisp=NONE cterm=NONE,underline gui=NONE,underline
hi SpellLocal ctermfg=254 ctermbg=NONE guifg=#e8e8e8 guibg=NONE guisp=NONE cterm=NONE gui=NONE
hi SpellRare ctermfg=254 ctermbg=NONE guifg=#e8e8e8 guibg=NONE guisp=NONE cterm=NONE gui=NONE
hi StatusLine ctermfg=254 ctermbg=240 guifg=#e8e8e8 guibg=#565656 guisp=NONE cterm=NONE gui=NONE
hi StatusLineNC ctermfg=254 ctermbg=236 guifg=#e8e8e8 guibg=#313131 guisp=NONE cterm=NONE gui=NONE
hi! link StatusLineTerm StatusLine
hi! link StatusLineTermNC StatusLineNC
hi TabLine ctermfg=254 ctermbg=236 guifg=#e8e8e8 guibg=#313131 guisp=NONE cterm=NONE gui=NONE
hi TabLineFill ctermfg=254 ctermbg=236 guifg=#e8e8e8 guibg=#313131 guisp=NONE cterm=NONE gui=NONE
hi TabLineSel ctermfg=254 ctermbg=25 guifg=#e8e8e8 guibg=#01579b guisp=NONE cterm=NONE gui=NONE
hi Title ctermfg=254 ctermbg=NONE guifg=#e8e8e8 guibg=NONE guisp=NONE cterm=NONE gui=NONE
hi VertSplit ctermfg=245 ctermbg=NONE guifg=#898989 guibg=NONE guisp=NONE cterm=NONE gui=NONE
hi Visual ctermfg=254 ctermbg=25 guifg=#e8e8e8 guibg=#01579b guisp=NONE cterm=NONE gui=NONE
hi VisualNOS ctermfg=254 ctermbg=NONE guifg=#e8e8e8 guibg=NONE guisp=NONE cterm=NONE gui=NONE
hi WarningMsg ctermfg=254 ctermbg=NONE guifg=#e8e8e8 guibg=NONE guisp=NONE cterm=NONE gui=NONE
hi WildMenu ctermfg=254 ctermbg=25 guifg=#e8e8e8 guibg=#01579b guisp=NONE cterm=NONE gui=NONE
hi! link Boolean Constant
hi! link Character Constant
hi Comment ctermfg=245 ctermbg=NONE guifg=#898989 guibg=NONE guisp=NONE cterm=NONE gui=NONE
hi! link Conditional Statement
hi Constant ctermfg=231 ctermbg=NONE guifg=#ffffff guibg=NONE guisp=NONE cterm=NONE gui=NONE
hi! link Define PreProc
hi! link Debug Special
hi! link Delimiter Special
hi Error ctermfg=254 ctermbg=NONE guifg=#e8e8e8 guibg=NONE guisp=NONE cterm=NONE,reverse gui=NONE,reverse
hi! link Exception Statement
hi! link Float Constant
hi! link Function Identifier
hi Identifier ctermfg=254 ctermbg=NONE guifg=#e8e8e8 guibg=NONE guisp=NONE cterm=NONE gui=NONE
hi Ignore ctermfg=254 ctermbg=NONE guifg=#e8e8e8 guibg=NONE guisp=NONE cterm=NONE gui=NONE
hi! link Include PreProc
hi! link Keyword Statement
hi! link Label Statement
hi! link Macro PreProc
hi! link Number Constant
hi! link Operator Statement
hi! link PreCondit PreProc
hi PreProc ctermfg=254 ctermbg=NONE guifg=#e8e8e8 guibg=NONE guisp=NONE cterm=NONE gui=NONE
hi! link Repeat Statement
hi Special ctermfg=254 ctermbg=NONE guifg=#e8e8e8 guibg=NONE guisp=NONE cterm=NONE gui=NONE
hi! link SpecialChar Special
hi! link SpecialComment Special
hi Statement ctermfg=254 ctermbg=NONE guifg=#e8e8e8 guibg=NONE guisp=NONE cterm=NONE gui=NONE
hi! link StorageClass Type
hi! link String Constant
hi! link Structure Type
hi! link Tag Special
hi Todo ctermfg=254 ctermbg=NONE guifg=#e8e8e8 guibg=NONE guisp=NONE cterm=NONE gui=NONE
hi Type ctermfg=254 ctermbg=NONE guifg=#e8e8e8 guibg=NONE guisp=NONE cterm=NONE gui=NONE
hi! link Typedef Type
hi Underlined ctermfg=254 ctermbg=NONE guifg=#e8e8e8 guibg=NONE guisp=NONE cterm=NONE gui=NONE
hi! link lCursor Cursor
hi CursorIM ctermfg=NONE ctermbg=fg guifg=NONE guibg=fg guisp=NONE cterm=NONE gui=NONE
hi ToolbarLine ctermfg=NONE ctermbg=NONE guifg=NONE guibg=NONE guisp=NONE cterm=NONE gui=NONE
hi ToolbarButton ctermfg=254 ctermbg=NONE guifg=#e8e8e8 guibg=NONE guisp=NONE cterm=NONE gui=NONE
finish

" Background: dark
" Color: black           #212121    ~
" Color: black_lighter   #313131    ~
" Color: white           #e8e8e8    ~
" Color: full_white      #ffffff    ~
" Color: grey            #898989    ~
" Color: dark_grey       #565656    ~
" Color: red             #ff5722    ~
" Color: dark_red        #bf360c    ~
" Color: blue            #81d4fa    ~
" Color: green           #81c784    ~
" Color: dark_green      #446e26    ~
" Color: yellow          #ffee58    ~
" Color: focus_bg        #01579b    ~
"     Normal           white             none
"     Terminal         white             none
"     Normal           white             black
"     Terminal         white             black
" ALEErrorSign     red               none
" ALEWarningSign   yellow            none
" ColorColumn      fg                none
" Conceal          grey              none
" Cursor           white             none
" CursorColumn     white             none
" CursorLine       white             dark_grey
" CursorLineNr     white             none
" DiffAdd          green             none
" DiffChange       blue              none
" DiffDelete       red               none
" DiffText         yellow            none
" Directory        white             none
" EndOfBuffer      white             none
" ErrorMsg         black             dark_red          reverse
" FoldColumn       white             none
" Folded           grey              none              italic
" IncSearch        white             dark_green        t=reverse g=standout
" LineNr           grey              none
" MatchParen       blue              none
" ModeMsg          white             none
" MoreMsg          white             none
" NonText          white             none
" Pmenu            white             black_lighter
" PmenuSbar        white             black_lighter
" PmenuSel         white             focus_bg
" PmenuThumb       white             black_lighter
" Question         white             none
" QuickFixLine     ->  Search
" Search           white             focus_bg
" SignColumn       white             none
" SpecialKey       white             none
" SpellBad         red               none               underline
" SpellCap         yellow            none               underline
" SpellLocal       white             none
" SpellRare        white             none
" StatusLine       white             dark_grey
" StatusLineNC     white             black_lighter
" StatusLineTerm   -> StatusLine
" StatusLineTermNC -> StatusLineNC
" TabLine          white             black_lighter
" TabLineFill      white             black_lighter
" TabLineSel       white             focus_bg
" Title            white             none
" VertSplit        grey              none
" Visual           white             focus_bg
" VisualNOS        white             none
" WarningMsg       white             none
" WildMenu         white             focus_bg
" Boolean          -> Constant
" Character        -> Constant
" Comment          grey              none
" Conditional      -> Statement
" Constant         full_white        none
" Define           -> PreProc
" Debug            -> Special
" Delimiter        -> Special
" Error            white             none             reverse
" Exception        -> Statement
" Float            -> Constant
" Function         -> Identifier
" Identifier       white             none
" Ignore           white             none
" Include          -> PreProc
" Keyword          -> Statement
" Label            -> Statement
" Macro            -> PreProc
" Number           -> Constant
" Operator         -> Statement
" PreCondit        -> PreProc
" PreProc          white             none
" Repeat           -> Statement
" Special          white             none
" SpecialChar      -> Special
" SpecialComment   -> Special
" Statement        white             none
" StorageClass     -> Type
" String           -> Constant
" Structure        -> Type
" Tag              -> Special
" Todo             white             none
" Type             white             none
" Typedef          -> Type
" Underlined       white             none
" lCursor          -> Cursor
" CursorIM         none              fg
" ToolbarLine      none              none
" ToolbarButton    white             none
