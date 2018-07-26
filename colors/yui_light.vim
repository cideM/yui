" Name:         Yui Light
" Author:       Florian B <yuuki@protonmail.com>
" Maintainer:   Florian B <yuuki@protonmail.com>
" License:      Vim License (see `:help license`)
" Last Updated: Sun Jul 22 18:30:40 2018

if !(has('termguicolors') && &termguicolors) && !has('gui_running')
      \ && (!exists('&t_Co') || &t_Co < 256)
  echoerr '[Yui Light] There are not enough colors.'
  finish
endif

set background=light

hi clear
if exists('syntax_on')
  syntax reset
endif

let g:colors_name = 'yui_light'

hi ALEErrorSign ctermfg=160 ctermbg=255 guifg=#bf360c guibg=#eeeeee guisp=NONE cterm=NONE gui=NONE
hi ALEWarningSign ctermfg=96 ctermbg=255 guifg=#7e4a6b guibg=#eeeeee guisp=NONE cterm=NONE gui=NONE
hi Normal ctermfg=234 ctermbg=255 guifg=#212121 guibg=#eeeeee guisp=NONE cterm=NONE gui=NONE
hi ColorColumn ctermfg=234 ctermbg=NONE guifg=#212121 guibg=NONE guisp=NONE cterm=NONE gui=NONE
hi Conceal ctermfg=59 ctermbg=NONE guifg=#5e5e5e guibg=NONE guisp=NONE cterm=NONE gui=NONE
hi Cursor ctermfg=59 ctermbg=NONE guifg=#5e5e5e guibg=NONE guisp=NONE cterm=NONE gui=NONE
hi CursorColumn ctermfg=234 ctermbg=NONE guifg=#212121 guibg=NONE guisp=NONE cterm=NONE gui=NONE
hi CursorLine ctermfg=234 ctermbg=254 guifg=#212121 guibg=#e8e8e8 guisp=NONE cterm=NONE gui=NONE
hi CursorLineNr ctermfg=234 ctermbg=NONE guifg=#212121 guibg=NONE guisp=NONE cterm=NONE gui=NONE
hi DiffAdd ctermfg=234 ctermbg=114 guifg=#212121 guibg=#81c784 guisp=NONE cterm=NONE gui=NONE
hi DiffChange ctermfg=234 ctermbg=NONE guifg=#212121 guibg=NONE guisp=NONE cterm=NONE gui=NONE
hi DiffDelete ctermfg=234 ctermbg=202 guifg=#212121 guibg=#ff5722 guisp=NONE cterm=NONE gui=NONE
hi DiffText ctermfg=234 ctermbg=227 guifg=#212121 guibg=#ffee58 guisp=NONE cterm=NONE gui=NONE
hi Directory ctermfg=234 ctermbg=NONE guifg=#212121 guibg=NONE guisp=NONE cterm=NONE gui=NONE
hi EndOfBuffer ctermfg=255 ctermbg=NONE guifg=#eeeeee guibg=NONE guisp=NONE cterm=NONE gui=NONE
hi ErrorMsg ctermfg=160 ctermbg=NONE guifg=#bf360c guibg=NONE guisp=NONE cterm=NONE gui=NONE
hi FoldColumn ctermfg=234 ctermbg=255 guifg=#212121 guibg=#eeeeee guisp=NONE cterm=NONE gui=NONE
hi Folded ctermfg=59 ctermbg=NONE guifg=#5e5e5e guibg=NONE guisp=NONE cterm=NONE gui=NONE
hi IncSearch ctermfg=234 ctermbg=114 guifg=#212121 guibg=#81c784 guisp=NONE cterm=NONE,reverse gui=NONE,standout
hi LineNr ctermfg=59 ctermbg=255 guifg=#5e5e5e guibg=#eeeeee guisp=NONE cterm=NONE gui=NONE
hi MatchParen ctermfg=89 ctermbg=NONE guifg=#8f006d guibg=NONE guisp=NONE cterm=NONE gui=NONE
hi ModeMsg ctermfg=234 ctermbg=NONE guifg=#212121 guibg=NONE guisp=NONE cterm=NONE gui=NONE
hi MoreMsg ctermfg=234 ctermbg=NONE guifg=#212121 guibg=NONE guisp=NONE cterm=NONE gui=NONE
hi NonText ctermfg=234 ctermbg=NONE guifg=#212121 guibg=NONE guisp=NONE cterm=NONE gui=NONE
hi Pmenu ctermfg=234 ctermbg=254 guifg=#212121 guibg=#e8e8e8 guisp=NONE cterm=NONE gui=NONE
hi PmenuSbar ctermfg=234 ctermbg=254 guifg=#212121 guibg=#e8e8e8 guisp=NONE cterm=NONE gui=NONE
hi PmenuSel ctermfg=234 ctermbg=153 guifg=#212121 guibg=#bbdefb guisp=NONE cterm=NONE gui=NONE
hi PmenuThumb ctermfg=234 ctermbg=254 guifg=#212121 guibg=#e8e8e8 guisp=NONE cterm=NONE gui=NONE
hi Question ctermfg=234 ctermbg=NONE guifg=#212121 guibg=NONE guisp=NONE cterm=NONE gui=NONE
hi! link QuickFixLine Search
hi Search ctermfg=234 ctermbg=153 guifg=#212121 guibg=#bbdefb guisp=NONE cterm=NONE gui=NONE
hi SignColumn ctermfg=234 ctermbg=255 guifg=#212121 guibg=#eeeeee guisp=NONE cterm=NONE gui=NONE
hi SpecialKey ctermfg=234 ctermbg=NONE guifg=#212121 guibg=NONE guisp=NONE cterm=NONE gui=NONE
hi SpellBad ctermfg=160 ctermbg=NONE guifg=#bf360c guibg=NONE guisp=NONE cterm=NONE gui=NONE
hi SpellCap ctermfg=96 ctermbg=NONE guifg=#7e4a6b guibg=NONE guisp=NONE cterm=NONE gui=NONE
hi SpellLocal ctermfg=234 ctermbg=NONE guifg=#212121 guibg=NONE guisp=NONE cterm=NONE gui=NONE
hi SpellRare ctermfg=234 ctermbg=NONE guifg=#212121 guibg=NONE guisp=NONE cterm=NONE gui=NONE
hi StatusLine ctermfg=234 ctermbg=254 guifg=#212121 guibg=#e8e8e8 guisp=NONE cterm=NONE gui=NONE
hi StatusLineNC ctermfg=234 ctermbg=255 guifg=#212121 guibg=#eeeeee guisp=NONE cterm=NONE gui=NONE
hi! link StatusLineTerm StatusLine
hi! link StatusLineTermNC StatusLineNC
hi TabLine ctermfg=234 ctermbg=254 guifg=#212121 guibg=#e8e8e8 guisp=NONE cterm=NONE gui=NONE
hi TabLineFill ctermfg=234 ctermbg=254 guifg=#212121 guibg=#e8e8e8 guisp=NONE cterm=NONE gui=NONE
hi TabLineSel ctermfg=234 ctermbg=153 guifg=#212121 guibg=#bbdefb guisp=NONE cterm=NONE gui=NONE
hi Title ctermfg=234 ctermbg=NONE guifg=#212121 guibg=NONE guisp=NONE cterm=NONE gui=NONE
hi VertSplit ctermfg=59 ctermbg=NONE guifg=#5e5e5e guibg=NONE guisp=NONE cterm=NONE gui=NONE
hi Visual ctermfg=234 ctermbg=153 guifg=#212121 guibg=#bbdefb guisp=NONE cterm=NONE gui=NONE
hi VisualNOS ctermfg=234 ctermbg=153 guifg=#212121 guibg=#bbdefb guisp=NONE cterm=NONE gui=NONE
hi WarningMsg ctermfg=234 ctermbg=NONE guifg=#212121 guibg=NONE guisp=NONE cterm=NONE gui=NONE
hi WildMenu ctermfg=234 ctermbg=153 guifg=#212121 guibg=#bbdefb guisp=NONE cterm=NONE gui=NONE
hi! link Boolean Constant
hi! link Character Constant
hi Comment ctermfg=22 ctermbg=NONE guifg=#446e26 guibg=NONE guisp=NONE cterm=NONE gui=NONE
hi! link Conditional Statement
hi Constant ctermfg=234 ctermbg=NONE guifg=#212121 guibg=NONE guisp=NONE cterm=NONE gui=NONE
hi! link Define PreProc
hi! link Debug Special
hi! link Delimiter Special
hi Error ctermfg=234 ctermbg=NONE guifg=#212121 guibg=NONE guisp=NONE cterm=NONE gui=NONE
hi! link Exception Statement
hi! link Float Constant
hi! link Function Identifier
hi Identifier ctermfg=234 ctermbg=NONE guifg=#212121 guibg=NONE guisp=NONE cterm=NONE gui=NONE
hi Ignore ctermfg=234 ctermbg=NONE guifg=#212121 guibg=NONE guisp=NONE cterm=NONE gui=NONE
hi! link Include PreProc
hi! link Keyword Statement
hi! link Label Statement
hi! link Macro PreProc
hi! link Number Constant
hi! link Operator Statement
hi! link PreCondit PreProc
hi PreProc ctermfg=234 ctermbg=NONE guifg=#212121 guibg=NONE guisp=NONE cterm=NONE gui=NONE
hi! link Repeat Statement
hi Special ctermfg=234 ctermbg=NONE guifg=#212121 guibg=NONE guisp=NONE cterm=NONE gui=NONE
hi! link SpecialChar Special
hi! link SpecialComment Special
hi Statement ctermfg=234 ctermbg=NONE guifg=#212121 guibg=NONE guisp=NONE cterm=NONE gui=NONE
hi! link StorageClass Type
hi String ctermfg=23 ctermbg=NONE guifg=#00707a guibg=NONE guisp=NONE cterm=NONE gui=NONE
hi! link Structure Type
hi! link Tag Special
hi Todo ctermfg=234 ctermbg=NONE guifg=#212121 guibg=NONE guisp=NONE cterm=NONE gui=NONE
hi Type ctermfg=234 ctermbg=NONE guifg=#212121 guibg=NONE guisp=NONE cterm=NONE gui=NONE
hi! link Typedef Type
hi Underlined ctermfg=234 ctermbg=NONE guifg=#212121 guibg=NONE guisp=NONE cterm=NONE gui=NONE
hi! link lCursor Cursor
hi CursorIM ctermfg=NONE ctermbg=234 guifg=NONE guibg=#212121 guisp=NONE cterm=NONE gui=NONE
hi ToolbarLine ctermfg=NONE ctermbg=NONE guifg=NONE guibg=NONE guisp=NONE cterm=NONE gui=NONE
hi ToolbarButton ctermfg=234 ctermbg=NONE guifg=#212121 guibg=NONE guisp=NONE cterm=NONE,bold gui=NONE,bold
finish

" Background: light
" Color: foreground      #212121    ~
" Color: background      #eeeeee    ~
" Color: alt_bg          #e8e8e8    ~
" Color: gray            #5e5e5e    ~
" Color: error_bg        #ff5722    ~
" Color: error_fg        #bf360c    ~
" Color: dark_blue       #065c84    ~
" Color: green           #81c784    ~
" Color: dark_green      #446e26    ~
" Color: dark_cyan       #00707a    ~
" Color: warn_bg         #ffee58    ~
" Color: warn_fg         #7e4a6b    ~
" Color: focus_bg        #bbdefb    ~
" Color: focus_fg        #8f006d    ~
" ALEErrorSign     error_fg               background
" ALEWarningSign   warn_fg                background
" Normal           foreground             background
" ColorColumn      foreground             none
" Conceal          gray                   none
" Cursor           gray                   none
" CursorColumn     foreground             none
" CursorLine       foreground             alt_bg
" CursorLineNr     foreground             none
" DiffAdd          foreground             green
" DiffChange       foreground             none
" DiffDelete       foreground             error_bg
" DiffText         foreground             warn_bg
" Directory        foreground             none
" EndOfBuffer      background             none
" ErrorMsg         error_fg               none
" FoldColumn       foreground             background
" Folded           gray                   none
" IncSearch        foreground             green             t=reverse g=standout
" LineNr           gray                   background
" MatchParen       focus_fg               none
" ModeMsg          foreground             none
" MoreMsg          foreground             none
" NonText          foreground             none
" Pmenu            foreground             alt_bg
" PmenuSbar        foreground             alt_bg
" PmenuSel         foreground             focus_bg
" PmenuThumb       foreground             alt_bg
" Question         foreground             none
" QuickFixLine     ->  Search
" Search           foreground             focus_bg
" SignColumn       foreground             background
" SpecialKey       foreground             none
" SpellBad         error_fg               none
" SpellCap         warn_fg                none
" SpellLocal       foreground             none
" SpellRare        foreground             none
" StatusLine       foreground             alt_bg
" StatusLineNC     foreground             background
" StatusLineTerm   -> StatusLine
" StatusLineTermNC -> StatusLineNC
" TabLine          foreground             alt_bg
" TabLineFill      foreground             alt_bg
" TabLineSel       foreground             focus_bg
" Title            foreground             none
" VertSplit        gray                   none
" Visual           foreground             focus_bg
" VisualNOS        foreground             focus_bg
" WarningMsg       foreground             none
" WildMenu         foreground             focus_bg
" Boolean        -> Constant
" Character      -> Constant
" Comment        dark_green                none
" Conditional    -> Statement
" Constant       foreground                none
" Define         -> PreProc
" Debug          -> Special
" Delimiter      -> Special
" Error          foreground                none
" Exception      -> Statement
" Float          -> Constant
" Function       -> Identifier
" Identifier     foreground                none
" Ignore         foreground                none
" Include        -> PreProc
" Keyword        -> Statement
" Label          -> Statement
" Macro          -> PreProc
" Number         -> Constant
" Operator       -> Statement
" PreCondit      -> PreProc
" PreProc        foreground                none
" Repeat         -> Statement
" Special        foreground                none
" SpecialChar    -> Special
" SpecialComment -> Special
" Statement      foreground                none
" StorageClass   -> Type
" String         dark_cyan                 none
" Structure      -> Type
" Tag            -> Special
" Todo           foreground                none
" Type           foreground                none
" Typedef        -> Type
" Underlined     foreground                none
" lCursor          -> Cursor
" CursorIM         none                   foreground
" ToolbarLine      none                   none
" ToolbarButton    foreground             none             bold
