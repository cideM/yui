" Name:         Yui
" Author:       Florian B <yuuki@protonmail.com>
" Maintainer:   Florian B <yuuki@protonmail.com>
" License:      Vim License (see `:help license`)
" Last Updated: Sat Sep 29 00:12:25 2018

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

let g:colors_name = 'yui_light'

hi ALEErrorSign ctermfg=88 ctermbg=255 guifg=#9a0007 guibg=#eeeeed guisp=NONE cterm=NONE gui=NONE
hi ALEWarningSign ctermfg=172 ctermbg=255 guifg=#c17900 guibg=#eeeeed guisp=NONE cterm=NONE gui=NONE
hi Normal ctermfg=239 ctermbg=255 guifg=#4d4d4c guibg=#eeeeed guisp=NONE cterm=NONE gui=NONE
hi Terminal ctermfg=239 ctermbg=255 guifg=#4d4d4c guibg=#eeeeed guisp=NONE cterm=NONE gui=NONE
hi ColorColumn ctermfg=fg ctermbg=NONE guifg=fg guibg=NONE guisp=NONE cterm=NONE gui=NONE
hi Conceal ctermfg=243 ctermbg=NONE guifg=#777777 guibg=NONE guisp=NONE cterm=NONE gui=NONE
hi Cursor ctermfg=239 ctermbg=NONE guifg=#4d4d4c guibg=NONE guisp=NONE cterm=NONE gui=NONE
hi CursorColumn ctermfg=239 ctermbg=NONE guifg=#4d4d4c guibg=NONE guisp=NONE cterm=NONE gui=NONE
hi CursorLine ctermfg=239 ctermbg=253 guifg=#4d4d4c guibg=#dddddd guisp=NONE cterm=NONE gui=NONE
hi CursorLineNr ctermfg=239 ctermbg=NONE guifg=#4d4d4c guibg=NONE guisp=NONE cterm=NONE gui=NONE
hi DiffAdd ctermfg=22 ctermbg=NONE guifg=#255d00 guibg=NONE guisp=NONE cterm=NONE gui=NONE
hi DiffChange ctermfg=25 ctermbg=NONE guifg=#003c8f guibg=NONE guisp=NONE cterm=NONE gui=NONE
hi DiffDelete ctermfg=88 ctermbg=NONE guifg=#9a0007 guibg=NONE guisp=NONE cterm=NONE gui=NONE
hi DiffText ctermfg=172 ctermbg=NONE guifg=#c17900 guibg=NONE guisp=NONE cterm=NONE gui=NONE
hi Directory ctermfg=239 ctermbg=NONE guifg=#4d4d4c guibg=NONE guisp=NONE cterm=NONE gui=NONE
hi EndOfBuffer ctermfg=255 ctermbg=NONE guifg=#eeeeed guibg=NONE guisp=NONE cterm=NONE gui=NONE
hi ErrorMsg ctermfg=88 ctermbg=NONE guifg=#9a0007 guibg=NONE guisp=NONE cterm=NONE gui=NONE
hi FoldColumn ctermfg=239 ctermbg=253 guifg=#4d4d4c guibg=#dddddd guisp=NONE cterm=NONE gui=NONE
hi Folded ctermfg=243 ctermbg=NONE guifg=#777777 guibg=NONE guisp=NONE cterm=NONE gui=NONE
hi IncSearch ctermfg=239 ctermbg=253 guifg=#4d4d4c guibg=#dddddd guisp=NONE cterm=NONE,underline gui=NONE,underline
hi LineNr ctermfg=243 ctermbg=255 guifg=#777777 guibg=#eeeeed guisp=NONE cterm=NONE gui=NONE
hi MatchParen ctermfg=239 ctermbg=NONE guifg=#4d4d4c guibg=NONE guisp=NONE cterm=NONE,underline gui=NONE,underline
hi ModeMsg ctermfg=239 ctermbg=NONE guifg=#4d4d4c guibg=NONE guisp=NONE cterm=NONE gui=NONE
hi MoreMsg ctermfg=239 ctermbg=NONE guifg=#4d4d4c guibg=NONE guisp=NONE cterm=NONE gui=NONE
hi NonText ctermfg=239 ctermbg=NONE guifg=#4d4d4c guibg=NONE guisp=NONE cterm=NONE gui=NONE
hi Pmenu ctermfg=239 ctermbg=253 guifg=#4d4d4c guibg=#dddddd guisp=NONE cterm=NONE gui=NONE
hi PmenuSbar ctermfg=239 ctermbg=253 guifg=#4d4d4c guibg=#dddddd guisp=NONE cterm=NONE gui=NONE
hi PmenuSel ctermfg=239 ctermbg=253 guifg=#4d4d4c guibg=#dddddd guisp=NONE cterm=NONE,underline gui=NONE,underline
hi PmenuThumb ctermfg=239 ctermbg=253 guifg=#4d4d4c guibg=#dddddd guisp=NONE cterm=NONE gui=NONE
hi Question ctermfg=239 ctermbg=NONE guifg=#4d4d4c guibg=NONE guisp=NONE cterm=NONE gui=NONE
hi! link QuickFixLine Search
hi Search ctermfg=239 ctermbg=253 guifg=#4d4d4c guibg=#dddddd guisp=NONE cterm=NONE gui=NONE
hi SignColumn ctermfg=239 ctermbg=255 guifg=#4d4d4c guibg=#eeeeed guisp=NONE cterm=NONE gui=NONE
hi SpecialKey ctermfg=239 ctermbg=NONE guifg=#4d4d4c guibg=NONE guisp=NONE cterm=NONE gui=NONE
hi SpellBad ctermfg=88 ctermbg=NONE guifg=#9a0007 guibg=NONE guisp=NONE cterm=NONE gui=NONE
hi SpellCap ctermfg=172 ctermbg=NONE guifg=#c17900 guibg=NONE guisp=NONE cterm=NONE gui=NONE
hi SpellLocal ctermfg=239 ctermbg=NONE guifg=#4d4d4c guibg=NONE guisp=NONE cterm=NONE gui=NONE
hi SpellRare ctermfg=239 ctermbg=NONE guifg=#4d4d4c guibg=NONE guisp=NONE cterm=NONE gui=NONE
hi StatusLine ctermfg=239 ctermbg=253 guifg=#4d4d4c guibg=#dddddd guisp=NONE cterm=NONE gui=NONE
hi StatusLineNC ctermfg=243 ctermbg=253 guifg=#777777 guibg=#dddddd guisp=NONE cterm=NONE gui=NONE
hi! link StatusLineTerm StatusLine
hi! link StatusLineTermNC StatusLineNC
hi TabLine ctermfg=239 ctermbg=253 guifg=#4d4d4c guibg=#dddddd guisp=NONE cterm=NONE gui=NONE
hi TabLineFill ctermfg=239 ctermbg=255 guifg=#4d4d4c guibg=#eeeeed guisp=NONE cterm=NONE gui=NONE
hi TabLineSel ctermfg=239 ctermbg=253 guifg=#4d4d4c guibg=#dddddd guisp=NONE cterm=NONE,underline gui=NONE,underline
hi Title ctermfg=239 ctermbg=NONE guifg=#4d4d4c guibg=NONE guisp=NONE cterm=NONE gui=NONE
hi VertSplit ctermfg=NONE ctermbg=NONE guifg=NONE guibg=NONE guisp=NONE cterm=NONE gui=NONE
hi Visual ctermfg=239 ctermbg=253 guifg=#4d4d4c guibg=#dddddd guisp=NONE cterm=NONE gui=NONE
hi VisualNOS ctermfg=239 ctermbg=NONE guifg=#4d4d4c guibg=NONE guisp=NONE cterm=NONE gui=NONE
hi WarningMsg ctermfg=239 ctermbg=NONE guifg=#4d4d4c guibg=NONE guisp=NONE cterm=NONE gui=NONE
hi WildMenu ctermfg=239 ctermbg=253 guifg=#4d4d4c guibg=#dddddd guisp=NONE cterm=NONE,underline gui=NONE,underline
hi! link Boolean Constant
hi! link Character Constant
hi Comment ctermfg=56 ctermbg=NONE guifg=#0040ce guibg=NONE guisp=NONE cterm=NONE gui=NONE
hi! link Conditional Statement
hi Constant ctermfg=239 ctermbg=NONE guifg=#4d4d4c guibg=NONE guisp=NONE cterm=NONE gui=NONE
hi! link Define PreProc
hi! link Debug Special
hi! link Delimiter Special
hi Error ctermfg=239 ctermbg=NONE guifg=#4d4d4c guibg=NONE guisp=NONE cterm=NONE,reverse gui=NONE,reverse
hi! link Exception Statement
hi! link Float Constant
hi! link Function Identifier
hi Identifier ctermfg=239 ctermbg=NONE guifg=#4d4d4c guibg=NONE guisp=NONE cterm=NONE gui=NONE
hi Ignore ctermfg=239 ctermbg=NONE guifg=#4d4d4c guibg=NONE guisp=NONE cterm=NONE gui=NONE
hi! link Include PreProc
hi! link Keyword Statement
hi! link Label Statement
hi! link Macro PreProc
hi! link Number Constant
hi! link Operator Statement
hi! link PreCondit PreProc
hi PreProc ctermfg=239 ctermbg=NONE guifg=#4d4d4c guibg=NONE guisp=NONE cterm=NONE gui=NONE
hi! link Repeat Statement
hi Special ctermfg=239 ctermbg=NONE guifg=#4d4d4c guibg=NONE guisp=NONE cterm=NONE gui=NONE
hi! link SpecialChar Special
hi! link SpecialComment Comment
hi Statement ctermfg=239 ctermbg=NONE guifg=#4d4d4c guibg=NONE guisp=NONE cterm=NONE gui=NONE
hi! link StorageClass Type
hi String ctermfg=239 ctermbg=NONE guifg=#4d4d4c guibg=NONE guisp=NONE cterm=NONE,bold,italic gui=NONE,bold,italic
hi! link Structure Type
hi! link Tag Special
hi Todo ctermfg=239 ctermbg=NONE guifg=#4d4d4c guibg=NONE guisp=NONE cterm=NONE gui=NONE
hi Type ctermfg=239 ctermbg=NONE guifg=#4d4d4c guibg=NONE guisp=NONE cterm=NONE gui=NONE
hi! link Typedef Type
hi Underlined ctermfg=239 ctermbg=NONE guifg=#4d4d4c guibg=NONE guisp=NONE cterm=NONE gui=NONE
hi! link lCursor Cursor
hi CursorIM ctermfg=NONE ctermbg=fg guifg=NONE guibg=fg guisp=NONE cterm=NONE gui=NONE
hi ToolbarLine ctermfg=NONE ctermbg=NONE guifg=NONE guibg=NONE guisp=NONE cterm=NONE gui=NONE
hi ToolbarButton ctermfg=239 ctermbg=NONE guifg=#4d4d4c guibg=NONE guisp=NONE cterm=NONE gui=NONE
finish

" Background: dark
" Color: background         #eeeeed    ~
" Color: background_alt     #dddddd    ~
" Color: foreground         #4d4d4c    ~
" Color: foreground_alt     #777777    ~
" Color: red                #9a0007    ~
" Color: blue               #003c8f    ~
" Color: green              #255d00    ~
" Color: yellow             #c17900    ~
" Color: comment            #0040ce    ~
" ALEErrorSign     red            background
" ALEWarningSign   yellow             background
" Normal           foreground          background
" Terminal         foreground          background
" ColorColumn      fg                  none
" Conceal          foreground_alt                 none
" Cursor           foreground          none
" CursorColumn     foreground          none
" CursorLine       foreground          background_alt    
" CursorLineNr     foreground          none
" DiffAdd          green               none
" DiffChange       blue                none
" DiffDelete       red            none
" DiffText         yellow             none
" Directory        foreground          none
" EndOfBuffer      background          none
" ErrorMsg         red          none
" FoldColumn       foreground          background_alt    
" Folded           foreground_alt                 none
" IncSearch        foreground          background_alt     underline
" LineNr           foreground_alt                 background
" MatchParen       foreground            none underline
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
" SpellBad         red            none
" SpellCap         yellow             none
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
" Comment        comment            none     
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
" String         foreground                none  italic,bold
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
