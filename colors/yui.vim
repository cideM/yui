" Name:         Yui
" Author:       Florian B <yuuki@protonmail.com>
" Maintainer:   Florian B <yuuki@protonmail.com>
" License:      Vim License (see `:help license`)
" Last Updated: Fri Jul 27 19:44:17 2018

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

hi ALEErrorSign ctermfg=202 ctermbg=235 guifg=#ff5722 guibg=#212428 guisp=NONE cterm=NONE gui=NONE
hi ALEWarningSign ctermfg=228 ctermbg=235 guifg=#f0f66e guibg=#212428 guisp=NONE cterm=NONE gui=NONE
hi Normal ctermfg=255 ctermbg=235 guifg=#f0f8ea guibg=#212428 guisp=NONE cterm=NONE gui=NONE
hi Terminal ctermfg=255 ctermbg=235 guifg=#f0f8ea guibg=#212428 guisp=NONE cterm=NONE gui=NONE
hi ColorColumn ctermfg=fg ctermbg=NONE guifg=fg guibg=NONE guisp=NONE cterm=NONE gui=NONE
hi Conceal ctermfg=245 ctermbg=NONE guifg=#898989 guibg=NONE guisp=NONE cterm=NONE gui=NONE
hi Cursor ctermfg=255 ctermbg=NONE guifg=#f0f8ea guibg=NONE guisp=NONE cterm=NONE gui=NONE
hi CursorColumn ctermfg=255 ctermbg=NONE guifg=#f0f8ea guibg=NONE guisp=NONE cterm=NONE gui=NONE
hi CursorLine ctermfg=255 ctermbg=239 guifg=#f0f8ea guibg=#484f58 guisp=NONE cterm=NONE gui=NONE
hi CursorLineNr ctermfg=255 ctermbg=NONE guifg=#f0f8ea guibg=NONE guisp=NONE cterm=NONE gui=NONE
hi DiffAdd ctermfg=114 ctermbg=NONE guifg=#81c784 guibg=NONE guisp=NONE cterm=NONE gui=NONE
hi DiffChange ctermfg=117 ctermbg=NONE guifg=#81d4fa guibg=NONE guisp=NONE cterm=NONE gui=NONE
hi DiffDelete ctermfg=202 ctermbg=NONE guifg=#ff5722 guibg=NONE guisp=NONE cterm=NONE gui=NONE
hi DiffText ctermfg=228 ctermbg=NONE guifg=#f0f66e guibg=NONE guisp=NONE cterm=NONE gui=NONE
hi Directory ctermfg=255 ctermbg=NONE guifg=#f0f8ea guibg=NONE guisp=NONE cterm=NONE gui=NONE
hi EndOfBuffer ctermfg=235 ctermbg=NONE guifg=#212428 guibg=NONE guisp=NONE cterm=NONE gui=NONE
hi ErrorMsg ctermfg=235 ctermbg=160 guifg=#212428 guibg=#bf360c guisp=NONE cterm=NONE gui=NONE
hi FoldColumn ctermfg=255 ctermbg=239 guifg=#f0f8ea guibg=#484f58 guisp=NONE cterm=NONE gui=NONE
hi Folded ctermfg=245 ctermbg=NONE guifg=#898989 guibg=NONE guisp=NONE cterm=NONE gui=NONE
hi IncSearch ctermfg=255 ctermbg=24 guifg=#f0f8ea guibg=#406272 guisp=NONE cterm=NONE gui=NONE
hi LineNr ctermfg=245 ctermbg=235 guifg=#898989 guibg=#212428 guisp=NONE cterm=NONE gui=NONE
hi MatchParen ctermfg=158 ctermbg=NONE guifg=#b1f1cb guibg=NONE guisp=NONE cterm=NONE gui=NONE
hi ModeMsg ctermfg=255 ctermbg=NONE guifg=#f0f8ea guibg=NONE guisp=NONE cterm=NONE gui=NONE
hi MoreMsg ctermfg=255 ctermbg=NONE guifg=#f0f8ea guibg=NONE guisp=NONE cterm=NONE gui=NONE
hi NonText ctermfg=255 ctermbg=NONE guifg=#f0f8ea guibg=NONE guisp=NONE cterm=NONE gui=NONE
hi Pmenu ctermfg=255 ctermbg=239 guifg=#f0f8ea guibg=#484f58 guisp=NONE cterm=NONE gui=NONE
hi PmenuSbar ctermfg=255 ctermbg=239 guifg=#f0f8ea guibg=#484f58 guisp=NONE cterm=NONE gui=NONE
hi PmenuSel ctermfg=235 ctermbg=158 guifg=#212428 guibg=#b1f1cb guisp=NONE cterm=NONE gui=NONE
hi PmenuThumb ctermfg=255 ctermbg=239 guifg=#f0f8ea guibg=#484f58 guisp=NONE cterm=NONE gui=NONE
hi Question ctermfg=255 ctermbg=NONE guifg=#f0f8ea guibg=NONE guisp=NONE cterm=NONE gui=NONE
hi! link QuickFixLine Search
hi Search ctermfg=255 ctermbg=22 guifg=#f0f8ea guibg=#3b5b3c guisp=NONE cterm=NONE gui=NONE
hi SignColumn ctermfg=255 ctermbg=235 guifg=#f0f8ea guibg=#212428 guisp=NONE cterm=NONE gui=NONE
hi SpecialKey ctermfg=255 ctermbg=NONE guifg=#f0f8ea guibg=NONE guisp=NONE cterm=NONE gui=NONE
hi SpellBad ctermfg=202 ctermbg=NONE guifg=#ff5722 guibg=NONE guisp=NONE cterm=NONE gui=NONE
hi SpellCap ctermfg=228 ctermbg=NONE guifg=#f0f66e guibg=NONE guisp=NONE cterm=NONE gui=NONE
hi SpellLocal ctermfg=255 ctermbg=NONE guifg=#f0f8ea guibg=NONE guisp=NONE cterm=NONE gui=NONE
hi SpellRare ctermfg=255 ctermbg=NONE guifg=#f0f8ea guibg=NONE guisp=NONE cterm=NONE gui=NONE
hi StatusLine ctermfg=255 ctermbg=24 guifg=#f0f8ea guibg=#406272 guisp=NONE cterm=NONE gui=NONE
hi StatusLineNC ctermfg=255 ctermbg=237 guifg=#f0f8ea guibg=#353a41 guisp=NONE cterm=NONE gui=NONE
hi! link StatusLineTerm StatusLine
hi! link StatusLineTermNC StatusLineNC
hi TabLine ctermfg=255 ctermbg=239 guifg=#f0f8ea guibg=#484f58 guisp=NONE cterm=NONE gui=NONE
hi TabLineFill ctermfg=255 ctermbg=239 guifg=#f0f8ea guibg=#484f58 guisp=NONE cterm=NONE gui=NONE
hi TabLineSel ctermfg=235 ctermbg=158 guifg=#212428 guibg=#b1f1cb guisp=NONE cterm=NONE gui=NONE
hi Title ctermfg=255 ctermbg=NONE guifg=#f0f8ea guibg=NONE guisp=NONE cterm=NONE gui=NONE
hi VertSplit ctermfg=NONE ctermbg=NONE guifg=NONE guibg=NONE guisp=NONE cterm=NONE gui=NONE
hi Visual ctermfg=255 ctermbg=22 guifg=#f0f8ea guibg=#3b5b3c guisp=NONE cterm=NONE gui=NONE
hi VisualNOS ctermfg=255 ctermbg=NONE guifg=#f0f8ea guibg=NONE guisp=NONE cterm=NONE gui=NONE
hi WarningMsg ctermfg=255 ctermbg=NONE guifg=#f0f8ea guibg=NONE guisp=NONE cterm=NONE gui=NONE
hi WildMenu ctermfg=235 ctermbg=158 guifg=#212428 guibg=#b1f1cb guisp=NONE cterm=NONE gui=NONE
hi! link Boolean Constant
hi! link Character Constant
hi Comment ctermfg=223 ctermbg=NONE guifg=#f7c59f guibg=NONE guisp=NONE cterm=NONE gui=NONE
hi! link Conditional Statement
hi Constant ctermfg=255 ctermbg=NONE guifg=#f0f8ea guibg=NONE guisp=NONE cterm=NONE gui=NONE
hi! link Define PreProc
hi! link Debug Special
hi! link Delimiter Special
hi Error ctermfg=255 ctermbg=NONE guifg=#f0f8ea guibg=NONE guisp=NONE cterm=NONE,reverse gui=NONE,reverse
hi! link Exception Statement
hi! link Float Constant
hi! link Function Identifier
hi Identifier ctermfg=255 ctermbg=NONE guifg=#f0f8ea guibg=NONE guisp=NONE cterm=NONE gui=NONE
hi Ignore ctermfg=255 ctermbg=NONE guifg=#f0f8ea guibg=NONE guisp=NONE cterm=NONE gui=NONE
hi! link Include PreProc
hi! link Keyword Statement
hi! link Label Statement
hi! link Macro PreProc
hi! link Number Constant
hi! link Operator Statement
hi! link PreCondit PreProc
hi PreProc ctermfg=255 ctermbg=NONE guifg=#f0f8ea guibg=NONE guisp=NONE cterm=NONE gui=NONE
hi! link Repeat Statement
hi Special ctermfg=255 ctermbg=NONE guifg=#f0f8ea guibg=NONE guisp=NONE cterm=NONE gui=NONE
hi! link SpecialChar Special
hi! link SpecialComment Special
hi Statement ctermfg=255 ctermbg=NONE guifg=#f0f8ea guibg=NONE guisp=NONE cterm=NONE gui=NONE
hi! link StorageClass Type
hi String ctermfg=158 ctermbg=NONE guifg=#b1f1cb guibg=NONE guisp=NONE cterm=NONE gui=NONE
hi! link Structure Type
hi! link Tag Special
hi Todo ctermfg=255 ctermbg=NONE guifg=#f0f8ea guibg=NONE guisp=NONE cterm=NONE gui=NONE
hi Type ctermfg=255 ctermbg=NONE guifg=#f0f8ea guibg=NONE guisp=NONE cterm=NONE gui=NONE
hi! link Typedef Type
hi Underlined ctermfg=255 ctermbg=NONE guifg=#f0f8ea guibg=NONE guisp=NONE cterm=NONE gui=NONE
hi! link lCursor Cursor
hi CursorIM ctermfg=NONE ctermbg=fg guifg=NONE guibg=fg guisp=NONE cterm=NONE gui=NONE
hi ToolbarLine ctermfg=NONE ctermbg=NONE guifg=NONE guibg=NONE guisp=NONE cterm=NONE gui=NONE
hi ToolbarButton ctermfg=255 ctermbg=NONE guifg=#f0f8ea guibg=NONE guisp=NONE cterm=NONE gui=NONE
finish

" Background: dark
" Color: background      #212428    ~
" Color: foreground      #f0f8ea    ~
" Color: alt_bg          #484f58    ~
" Color: alt_bg2         #353a41    ~
" Color: alt_fg          #898989    ~
" Color: error_fg        #ff5722    ~
" Color: error_bg        #bf360c    ~
" Color: blue            #81d4fa    ~
" Color: dark_blue       #406272    ~
" Color: green           #81c784    ~
" Color: dark_green      #3b5b3c    ~
" Color: warn_fg         #f0f66e    ~
" Color: accent_1        #b1f1cb    ~
" Color: accent_2        #f7c59f    ~
" ALEErrorSign     error_fg            background
" ALEWarningSign   warn_fg             background
" Normal           foreground          background
" Terminal         foreground          background
" ColorColumn      fg                  none
" Conceal          alt_fg              none
" Cursor           foreground          none
" CursorColumn     foreground          none
" CursorLine       foreground          alt_bg
" CursorLineNr     foreground          none
" DiffAdd          green               none
" DiffChange       blue                none
" DiffDelete       error_fg            none
" DiffText         warn_fg             none
" Directory        foreground          none
" EndOfBuffer      background          none
" ErrorMsg         background          error_bg
" FoldColumn       foreground          alt_bg
" Folded           alt_fg              none
" IncSearch        foreground          dark_blue
" LineNr           alt_fg              background
" MatchParen       accent_1            none
" ModeMsg          foreground          none
" MoreMsg          foreground          none
" NonText          foreground          none
" Pmenu            foreground          alt_bg
" PmenuSbar        foreground          alt_bg
" PmenuSel         background          accent_1
" PmenuThumb       foreground          alt_bg
" Question         foreground          none
" QuickFixLine     ->  Search
" Search           foreground          dark_green
" SignColumn       foreground          background
" SpecialKey       foreground          none
" SpellBad         error_fg            none
" SpellCap         warn_fg             none
" SpellLocal       foreground          none
" SpellRare        foreground          none
" StatusLine       foreground          dark_blue
" StatusLineNC     foreground          alt_bg2
" StatusLineTerm   -> StatusLine
" StatusLineTermNC -> StatusLineNC
" TabLine          foreground          alt_bg
" TabLineFill      foreground          alt_bg
" TabLineSel       background          accent_1
" Title            foreground          none
" VertSplit        none                none
" Visual           foreground          dark_green
" VisualNOS        foreground          none
" WarningMsg       foreground          none
" WildMenu         background          accent_1
" Boolean        -> Constant
" Character      -> Constant
" Comment        accent_2              none
" Conditional    -> Statement
" Constant       foreground            none
" Define         -> PreProc
" Debug          -> Special
" Delimiter      -> Special
" Error          foreground            none             reverse
" Exception      -> Statement
" Float          -> Constant
" Function       -> Identifier
" Identifier     foreground            none
" Ignore         foreground            none
" Include        -> PreProc
" Keyword        -> Statement
" Label          -> Statement
" Macro          -> PreProc
" Number         -> Constant
" Operator       -> Statement
" PreCondit      -> PreProc
" PreProc        foreground            none
" Repeat         -> Statement
" Special        foreground            none
" SpecialChar    -> Special
" SpecialComment -> Special
" Statement      foreground            none
" StorageClass   -> Type
" String         accent_1              none
" Structure      -> Type
" Tag            -> Special
" Todo           foreground            none
" Type           foreground            none
" Typedef        -> Type
" Underlined     foreground            none
" lCursor          -> Cursor
" CursorIM         none                fg
" ToolbarLine      none                none
" ToolbarButton    foreground          none
