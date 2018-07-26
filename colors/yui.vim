" Name:         Yui
" Author:       Florian B <yuuki@protonmail.com>
" Maintainer:   Florian B <yuuki@protonmail.com>
" License:      Vim License (see `:help license`)
" Last Updated: Mon Jul 23 17:24:37 2018

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

hi ALEErrorSign ctermfg=202 ctermbg=234 guifg=#ff5722 guibg=#212121 guisp=NONE cterm=NONE gui=NONE
hi ALEWarningSign ctermfg=227 ctermbg=234 guifg=#ffee58 guibg=#212121 guisp=NONE cterm=NONE gui=NONE
hi Normal ctermfg=254 ctermbg=234 guifg=#e8e8e8 guibg=#212121 guisp=NONE cterm=NONE gui=NONE
hi Terminal ctermfg=254 ctermbg=234 guifg=#e8e8e8 guibg=#212121 guisp=NONE cterm=NONE gui=NONE
hi ColorColumn ctermfg=fg ctermbg=NONE guifg=fg guibg=NONE guisp=NONE cterm=NONE gui=NONE
hi Conceal ctermfg=245 ctermbg=NONE guifg=#898989 guibg=NONE guisp=NONE cterm=NONE gui=NONE
hi Cursor ctermfg=254 ctermbg=NONE guifg=#e8e8e8 guibg=NONE guisp=NONE cterm=NONE gui=NONE
hi CursorColumn ctermfg=254 ctermbg=NONE guifg=#e8e8e8 guibg=NONE guisp=NONE cterm=NONE gui=NONE
hi CursorLine ctermfg=254 ctermbg=236 guifg=#e8e8e8 guibg=#313131 guisp=NONE cterm=NONE gui=NONE
hi CursorLineNr ctermfg=254 ctermbg=NONE guifg=#e8e8e8 guibg=NONE guisp=NONE cterm=NONE gui=NONE
hi DiffAdd ctermfg=114 ctermbg=NONE guifg=#81c784 guibg=NONE guisp=NONE cterm=NONE gui=NONE
hi DiffChange ctermfg=117 ctermbg=NONE guifg=#81d4fa guibg=NONE guisp=NONE cterm=NONE gui=NONE
hi DiffDelete ctermfg=202 ctermbg=NONE guifg=#ff5722 guibg=NONE guisp=NONE cterm=NONE gui=NONE
hi DiffText ctermfg=227 ctermbg=NONE guifg=#ffee58 guibg=NONE guisp=NONE cterm=NONE gui=NONE
hi Directory ctermfg=254 ctermbg=NONE guifg=#e8e8e8 guibg=NONE guisp=NONE cterm=NONE gui=NONE
hi EndOfBuffer ctermfg=234 ctermbg=NONE guifg=#212121 guibg=NONE guisp=NONE cterm=NONE gui=NONE
hi ErrorMsg ctermfg=234 ctermbg=160 guifg=#212121 guibg=#bf360c guisp=NONE cterm=NONE gui=NONE
hi FoldColumn ctermfg=254 ctermbg=236 guifg=#e8e8e8 guibg=#313131 guisp=NONE cterm=NONE gui=NONE
hi Folded ctermfg=245 ctermbg=NONE guifg=#898989 guibg=NONE guisp=NONE cterm=NONE gui=NONE
hi IncSearch ctermfg=234 ctermbg=185 guifg=#212121 guibg=#dce775 guisp=NONE cterm=NONE gui=NONE
hi LineNr ctermfg=245 ctermbg=234 guifg=#898989 guibg=#212121 guisp=NONE cterm=NONE gui=NONE
hi MatchParen ctermfg=185 ctermbg=NONE guifg=#dce775 guibg=NONE guisp=NONE cterm=NONE gui=NONE
hi ModeMsg ctermfg=254 ctermbg=NONE guifg=#e8e8e8 guibg=NONE guisp=NONE cterm=NONE gui=NONE
hi MoreMsg ctermfg=254 ctermbg=NONE guifg=#e8e8e8 guibg=NONE guisp=NONE cterm=NONE gui=NONE
hi NonText ctermfg=254 ctermbg=NONE guifg=#e8e8e8 guibg=NONE guisp=NONE cterm=NONE gui=NONE
hi Pmenu ctermfg=254 ctermbg=236 guifg=#e8e8e8 guibg=#313131 guisp=NONE cterm=NONE gui=NONE
hi PmenuSbar ctermfg=254 ctermbg=236 guifg=#e8e8e8 guibg=#313131 guisp=NONE cterm=NONE gui=NONE
hi PmenuSel ctermfg=185 ctermbg=236 guifg=#dce775 guibg=#313131 guisp=NONE cterm=NONE gui=NONE
hi PmenuThumb ctermfg=254 ctermbg=236 guifg=#e8e8e8 guibg=#313131 guisp=NONE cterm=NONE gui=NONE
hi Question ctermfg=254 ctermbg=NONE guifg=#e8e8e8 guibg=NONE guisp=NONE cterm=NONE gui=NONE
hi! link QuickFixLine Search
hi Search ctermfg=234 ctermbg=254 guifg=#212121 guibg=#e8e8e8 guisp=NONE cterm=NONE gui=NONE
hi SignColumn ctermfg=254 ctermbg=234 guifg=#e8e8e8 guibg=#212121 guisp=NONE cterm=NONE gui=NONE
hi SpecialKey ctermfg=254 ctermbg=NONE guifg=#e8e8e8 guibg=NONE guisp=NONE cterm=NONE gui=NONE
hi SpellBad ctermfg=202 ctermbg=NONE guifg=#ff5722 guibg=NONE guisp=NONE cterm=NONE gui=NONE
hi SpellCap ctermfg=227 ctermbg=NONE guifg=#ffee58 guibg=NONE guisp=NONE cterm=NONE gui=NONE
hi SpellLocal ctermfg=254 ctermbg=NONE guifg=#e8e8e8 guibg=NONE guisp=NONE cterm=NONE gui=NONE
hi SpellRare ctermfg=254 ctermbg=NONE guifg=#e8e8e8 guibg=NONE guisp=NONE cterm=NONE gui=NONE
hi StatusLine ctermfg=254 ctermbg=236 guifg=#e8e8e8 guibg=#313131 guisp=NONE cterm=NONE gui=NONE
hi StatusLineNC ctermfg=254 ctermbg=234 guifg=#e8e8e8 guibg=#212121 guisp=NONE cterm=NONE gui=NONE
hi! link StatusLineTerm StatusLine
hi! link StatusLineTermNC StatusLineNC
hi TabLine ctermfg=254 ctermbg=236 guifg=#e8e8e8 guibg=#313131 guisp=NONE cterm=NONE gui=NONE
hi TabLineFill ctermfg=254 ctermbg=236 guifg=#e8e8e8 guibg=#313131 guisp=NONE cterm=NONE gui=NONE
hi TabLineSel ctermfg=185 ctermbg=236 guifg=#dce775 guibg=#313131 guisp=NONE cterm=NONE gui=NONE
hi Title ctermfg=254 ctermbg=NONE guifg=#e8e8e8 guibg=NONE guisp=NONE cterm=NONE gui=NONE
hi VertSplit ctermfg=245 ctermbg=NONE guifg=#898989 guibg=NONE guisp=NONE cterm=NONE gui=NONE
hi Visual ctermfg=234 ctermbg=254 guifg=#212121 guibg=#e8e8e8 guisp=NONE cterm=NONE gui=NONE
hi VisualNOS ctermfg=254 ctermbg=NONE guifg=#e8e8e8 guibg=NONE guisp=NONE cterm=NONE gui=NONE
hi WarningMsg ctermfg=254 ctermbg=NONE guifg=#e8e8e8 guibg=NONE guisp=NONE cterm=NONE gui=NONE
hi WildMenu ctermfg=185 ctermbg=236 guifg=#dce775 guibg=#313131 guisp=NONE cterm=NONE gui=NONE
hi! link Boolean Constant
hi! link Character Constant
hi Comment ctermfg=247 ctermbg=NONE guifg=#90a4ae guibg=NONE guisp=NONE cterm=NONE gui=NONE
hi! link Conditional Statement
hi Constant ctermfg=254 ctermbg=NONE guifg=#e8e8e8 guibg=NONE guisp=NONE cterm=NONE gui=NONE
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
hi String ctermfg=185 ctermbg=NONE guifg=#dce775 guibg=NONE guisp=NONE cterm=NONE gui=NONE
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
" Color: background      #212121    ~
" Color: alt_bg          #313131    ~
" Color: foreground      #e8e8e8    ~
" Color: alt_fg          #898989    ~
" Color: error_fg        #ff5722    ~
" Color: error_bg        #bf360c    ~
" Color: blue            #81d4fa    ~
" Color: green           #81c784    ~
" Color: dark_green      #446e26    ~
" Color: ice_blue        #b0bec5    ~
" Color: warn_fg         #ffee58    ~
" Color: accent_1        #dce775    ~
" Color: accent_2        #90a4ae    ~
" Color: accent_3        #fff9c4    ~
" ALEErrorSign   error_fg              background
" ALEWarningSign warn_fg               background
" Normal         foreground            background
" Terminal       foreground            background
" ColorColumn    fg                    none
" Conceal        alt_fg                none
" Cursor         foreground            none
" CursorColumn   foreground            none
" CursorLine     foreground            alt_bg
" CursorLineNr   foreground            none
" DiffAdd        green                 none
" DiffChange       blue                none
" DiffDelete       error_fg            none
" DiffText         warn_fg             none
" Directory        foreground          none
" EndOfBuffer      background          none
" ErrorMsg         background          error_bg
" FoldColumn       foreground          alt_bg
" Folded           alt_fg              none
" IncSearch        background          accent_1
" LineNr           alt_fg              background
" MatchParen       accent_1            none
" ModeMsg          foreground          none
" MoreMsg          foreground          none
" NonText          foreground          none
" Pmenu            foreground          alt_bg
" PmenuSbar        foreground          alt_bg
" PmenuSel         accent_1            alt_bg
" PmenuThumb       foreground          alt_bg
" Question         foreground          none
" QuickFixLine     ->  Search
" Search           background          foreground
" SignColumn       foreground          background
" SpecialKey       foreground          none
" SpellBad         error_fg            none
" SpellCap         warn_fg             none
" SpellLocal       foreground          none
" SpellRare        foreground          none
" StatusLine       foreground          alt_bg
" StatusLineNC     foreground          background
" StatusLineTerm   -> StatusLine
" StatusLineTermNC -> StatusLineNC
" TabLine          foreground          alt_bg
" TabLineFill      foreground          alt_bg
" TabLineSel       accent_1            alt_bg
" Title            foreground          none
" VertSplit        alt_fg              none
" Visual           background          foreground
" VisualNOS        foreground          none
" WarningMsg       foreground          none
" WildMenu         accent_1            alt_bg
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
