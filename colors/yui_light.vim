" Name:         Yui
" Author:       Florian B <yuuki@protonmail.com>
" Maintainer:   Florian B <yuuki@protonmail.com>
" License:      Vim License (see `:help license`)
" Last Updated: Tue Oct  9 14:10:18 2018

if !(has('termguicolors') && &termguicolors) && !has('gui_running')
      \ && (!exists('&t_Co') || &t_Co < 256)
  echoerr '[Yui] There are not enough colors.'
  finish
endif

set background=light

hi clear
if exists('syntax_on')
  syntax reset
endif

let g:colors_name = 'yui_light'

hi ALEErrorSign ctermfg=95 ctermbg=253 guifg=#875053 guibg=#ddddde guisp=NONE cterm=NONE gui=NONE
hi ALEWarningSign ctermfg=172 ctermbg=253 guifg=#c17900 guibg=#ddddde guisp=NONE cterm=NONE gui=NONE
hi Normal ctermfg=237 ctermbg=253 guifg=#3d3d3d guibg=#ddddde guisp=NONE cterm=NONE gui=NONE
hi Terminal ctermfg=237 ctermbg=253 guifg=#3d3d3d guibg=#ddddde guisp=NONE cterm=NONE gui=NONE
hi ColorColumn ctermfg=fg ctermbg=NONE guifg=fg guibg=NONE guisp=NONE cterm=NONE gui=NONE
hi Conceal ctermfg=243 ctermbg=NONE guifg=#727272 guibg=NONE guisp=NONE cterm=NONE gui=NONE
hi Cursor ctermfg=237 ctermbg=NONE guifg=#3d3d3d guibg=NONE guisp=NONE cterm=NONE gui=NONE
hi CursorColumn ctermfg=237 ctermbg=NONE guifg=#3d3d3d guibg=NONE guisp=NONE cterm=NONE gui=NONE
hi CursorLine ctermfg=237 ctermbg=252 guifg=#3d3d3d guibg=#cccccd guisp=NONE cterm=NONE gui=NONE
hi CursorLineNr ctermfg=237 ctermbg=NONE guifg=#3d3d3d guibg=NONE guisp=NONE cterm=NONE gui=NONE
hi DiffAdd ctermfg=22 ctermbg=NONE guifg=#255d00 guibg=NONE guisp=NONE cterm=NONE gui=NONE
hi DiffChange ctermfg=25 ctermbg=NONE guifg=#003c8f guibg=NONE guisp=NONE cterm=NONE gui=NONE
hi DiffDelete ctermfg=95 ctermbg=NONE guifg=#875053 guibg=NONE guisp=NONE cterm=NONE gui=NONE
hi DiffText ctermfg=172 ctermbg=NONE guifg=#c17900 guibg=NONE guisp=NONE cterm=NONE gui=NONE
hi Directory ctermfg=237 ctermbg=NONE guifg=#3d3d3d guibg=NONE guisp=NONE cterm=NONE gui=NONE
hi EndOfBuffer ctermfg=253 ctermbg=NONE guifg=#ddddde guibg=NONE guisp=NONE cterm=NONE gui=NONE
hi ErrorMsg ctermfg=95 ctermbg=NONE guifg=#875053 guibg=NONE guisp=NONE cterm=NONE gui=NONE
hi FoldColumn ctermfg=237 ctermbg=252 guifg=#3d3d3d guibg=#cccccd guisp=NONE cterm=NONE gui=NONE
hi Folded ctermfg=243 ctermbg=NONE guifg=#727272 guibg=NONE guisp=NONE cterm=NONE gui=NONE
hi IncSearch ctermfg=237 ctermbg=252 guifg=#3d3d3d guibg=#cccccd guisp=NONE cterm=NONE,underline gui=NONE,underline
hi LineNr ctermfg=243 ctermbg=253 guifg=#727272 guibg=#ddddde guisp=NONE cterm=NONE gui=NONE
hi MatchParen ctermfg=95 ctermbg=NONE guifg=#875053 guibg=NONE guisp=NONE cterm=NONE gui=NONE
hi ModeMsg ctermfg=237 ctermbg=NONE guifg=#3d3d3d guibg=NONE guisp=NONE cterm=NONE gui=NONE
hi MoreMsg ctermfg=237 ctermbg=NONE guifg=#3d3d3d guibg=NONE guisp=NONE cterm=NONE gui=NONE
hi NonText ctermfg=237 ctermbg=NONE guifg=#3d3d3d guibg=NONE guisp=NONE cterm=NONE gui=NONE
hi Pmenu ctermfg=237 ctermbg=252 guifg=#3d3d3d guibg=#cccccd guisp=NONE cterm=NONE gui=NONE
hi PmenuSbar ctermfg=237 ctermbg=252 guifg=#3d3d3d guibg=#cccccd guisp=NONE cterm=NONE gui=NONE
hi PmenuSel ctermfg=237 ctermbg=252 guifg=#3d3d3d guibg=#cccccd guisp=NONE cterm=NONE,underline gui=NONE,underline
hi PmenuThumb ctermfg=237 ctermbg=252 guifg=#3d3d3d guibg=#cccccd guisp=NONE cterm=NONE gui=NONE
hi Question ctermfg=237 ctermbg=NONE guifg=#3d3d3d guibg=NONE guisp=NONE cterm=NONE gui=NONE
hi! link QuickFixLine Search
hi Search ctermfg=237 ctermbg=252 guifg=#3d3d3d guibg=#cccccd guisp=NONE cterm=NONE gui=NONE
hi SignColumn ctermfg=237 ctermbg=253 guifg=#3d3d3d guibg=#ddddde guisp=NONE cterm=NONE gui=NONE
hi SpecialKey ctermfg=237 ctermbg=NONE guifg=#3d3d3d guibg=NONE guisp=NONE cterm=NONE gui=NONE
hi SpellBad ctermfg=95 ctermbg=NONE guifg=#875053 guibg=NONE guisp=NONE cterm=NONE gui=NONE
hi SpellCap ctermfg=172 ctermbg=NONE guifg=#c17900 guibg=NONE guisp=NONE cterm=NONE gui=NONE
hi SpellLocal ctermfg=237 ctermbg=NONE guifg=#3d3d3d guibg=NONE guisp=NONE cterm=NONE gui=NONE
hi SpellRare ctermfg=237 ctermbg=NONE guifg=#3d3d3d guibg=NONE guisp=NONE cterm=NONE gui=NONE
hi StatusLine ctermfg=237 ctermbg=252 guifg=#3d3d3d guibg=#cccccd guisp=NONE cterm=NONE gui=NONE
hi StatusLineNC ctermfg=243 ctermbg=252 guifg=#727272 guibg=#cccccd guisp=NONE cterm=NONE gui=NONE
hi! link StatusLineTerm StatusLine
hi! link StatusLineTermNC StatusLineNC
hi TabLine ctermfg=237 ctermbg=252 guifg=#3d3d3d guibg=#cccccd guisp=NONE cterm=NONE gui=NONE
hi TabLineFill ctermfg=237 ctermbg=253 guifg=#3d3d3d guibg=#ddddde guisp=NONE cterm=NONE gui=NONE
hi TabLineSel ctermfg=237 ctermbg=252 guifg=#3d3d3d guibg=#cccccd guisp=NONE cterm=NONE,underline gui=NONE,underline
hi Title ctermfg=237 ctermbg=NONE guifg=#3d3d3d guibg=NONE guisp=NONE cterm=NONE gui=NONE
hi VertSplit ctermfg=NONE ctermbg=NONE guifg=NONE guibg=NONE guisp=NONE cterm=NONE gui=NONE
hi Visual ctermfg=237 ctermbg=252 guifg=#3d3d3d guibg=#cccccd guisp=NONE cterm=NONE gui=NONE
hi VisualNOS ctermfg=237 ctermbg=NONE guifg=#3d3d3d guibg=NONE guisp=NONE cterm=NONE gui=NONE
hi WarningMsg ctermfg=237 ctermbg=NONE guifg=#3d3d3d guibg=NONE guisp=NONE cterm=NONE gui=NONE
hi WildMenu ctermfg=237 ctermbg=252 guifg=#3d3d3d guibg=#cccccd guisp=NONE cterm=NONE,underline gui=NONE,underline
hi! link Boolean Constant
hi! link Character Constant
hi Comment ctermfg=130 ctermbg=NONE guifg=#aa672f guibg=NONE guisp=NONE cterm=NONE,italic gui=NONE,italic
hi! link Conditional Statement
hi Constant ctermfg=237 ctermbg=NONE guifg=#3d3d3d guibg=NONE guisp=NONE cterm=NONE gui=NONE
hi! link Define PreProc
hi! link Debug Special
hi! link Delimiter Special
hi Error ctermfg=237 ctermbg=NONE guifg=#3d3d3d guibg=NONE guisp=NONE cterm=NONE,reverse gui=NONE,reverse
hi! link Exception Statement
hi! link Float Constant
hi! link Function Identifier
hi Identifier ctermfg=237 ctermbg=NONE guifg=#3d3d3d guibg=NONE guisp=NONE cterm=NONE gui=NONE
hi Ignore ctermfg=237 ctermbg=NONE guifg=#3d3d3d guibg=NONE guisp=NONE cterm=NONE gui=NONE
hi! link Include PreProc
hi! link Keyword Statement
hi! link Label Statement
hi! link Macro PreProc
hi! link Number Constant
hi! link Operator Statement
hi! link PreCondit PreProc
hi PreProc ctermfg=237 ctermbg=NONE guifg=#3d3d3d guibg=NONE guisp=NONE cterm=NONE gui=NONE
hi! link Repeat Statement
hi Special ctermfg=237 ctermbg=NONE guifg=#3d3d3d guibg=NONE guisp=NONE cterm=NONE gui=NONE
hi! link SpecialChar Special
hi! link SpecialComment Comment
hi Statement ctermfg=237 ctermbg=NONE guifg=#3d3d3d guibg=NONE guisp=NONE cterm=NONE gui=NONE
hi! link StorageClass Type
hi String ctermfg=65 ctermbg=NONE guifg=#4c6641 guibg=NONE guisp=NONE cterm=NONE gui=NONE
hi! link Structure Type
hi! link Tag Special
hi Todo ctermfg=237 ctermbg=NONE guifg=#3d3d3d guibg=NONE guisp=NONE cterm=NONE gui=NONE
hi Type ctermfg=237 ctermbg=NONE guifg=#3d3d3d guibg=NONE guisp=NONE cterm=NONE gui=NONE
hi! link Typedef Type
hi Underlined ctermfg=237 ctermbg=NONE guifg=#3d3d3d guibg=NONE guisp=NONE cterm=NONE gui=NONE
hi! link lCursor Cursor
hi CursorIM ctermfg=NONE ctermbg=fg guifg=NONE guibg=fg guisp=NONE cterm=NONE gui=NONE
hi ToolbarLine ctermfg=NONE ctermbg=NONE guifg=NONE guibg=NONE guisp=NONE cterm=NONE gui=NONE
hi ToolbarButton ctermfg=237 ctermbg=NONE guifg=#3d3d3d guibg=NONE guisp=NONE cterm=NONE gui=NONE
finish

" Background: light
" Color: background         #ddddde    ~
" Color: background_alt     #cccccd    ~
" Color: foreground         #3d3d3d    ~
" Color: foreground_alt     #727272    ~
" Color: diff_change        #003c8f    ~
" Color: diff_add           #255d00    ~
" Color: warning            #c17900    ~
" Color: error              #875053    ~
" Color: comment            #aa672f    ~
" Color: string             #4c6641    ~
" ALEErrorSign     error            background
" ALEWarningSign   warning             background
" Normal           foreground          background
" Terminal         foreground          background
" ColorColumn      fg                  none
" Conceal          foreground_alt                 none
" Cursor           foreground          none
" CursorColumn     foreground          none
" CursorLine       foreground          background_alt    
" CursorLineNr     foreground          none
" DiffAdd          diff_add               none
" DiffChange       diff_change                none
" DiffDelete       error            none
" DiffText         warning             none
" Directory        foreground          none
" EndOfBuffer      background          none
" ErrorMsg         error          none
" FoldColumn       foreground          background_alt    
" Folded           foreground_alt                 none
" IncSearch        foreground          background_alt     underline
" LineNr           foreground_alt                 background
" MatchParen       error            none 
" ModeMsg          foreground          none
" MoreMsg          foreground          none
" NonText          foreground          none
" Pmenu            foreground          background_alt    
" PmenuSbar        foreground          background_alt    
" PmenuSel         foreground            background_alt     underline
" PmenuThumb       foreground          background_alt    
" Question         foreground          none
" QuickFixLine     ->  Search
" Search           foreground          background_alt    
" SignColumn       foreground          background
" SpecialKey       foreground          none
" SpellBad         error            none
" SpellCap         warning             none
" SpellLocal       foreground          none
" SpellRare        foreground          none
" StatusLine       foreground          background_alt     
" StatusLineNC     foreground_alt             background_alt    
" StatusLineTerm   -> StatusLine
" StatusLineTermNC -> StatusLineNC
" TabLine          foreground          background_alt    
" TabLineFill      foreground          background
" TabLineSel       foreground          background_alt      underline
" Title            foreground          none
" VertSplit        none                none
" Visual           foreground          background_alt    
" VisualNOS        foreground          none
" WarningMsg       foreground          none
" WildMenu         foreground          background_alt     underline
" Boolean        -> Constant
" Character      -> Constant
" Comment        comment            none italic
" Conditional    -> Statement
" Constant       foreground            none
" Define         -> PreProc
" Debug          -> Special
" Delimiter      -> Special
" Error          foreground            none           reverse
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
" SpecialComment -> Comment
" Statement      foreground            none
" StorageClass   -> Type
" String         string                none
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
