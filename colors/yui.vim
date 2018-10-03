" Name:         Yui
" Author:       Florian B <yuuki@protonmail.com>
" Maintainer:   Florian B <yuuki@protonmail.com>
" License:      Vim License (see `:help license`)
" Last Updated: Mon Oct  1 08:48:55 2018

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

hi ALEErrorSign ctermfg=204 ctermbg=235 guifg=#ed6a7a guibg=#232323 guisp=NONE cterm=NONE gui=NONE
hi ALEWarningSign ctermfg=220 ctermbg=235 guifg=#ffd740 guibg=#232323 guisp=NONE cterm=NONE gui=NONE
hi Normal ctermfg=231 ctermbg=235 guifg=#fcf7f8 guibg=#232323 guisp=NONE cterm=NONE gui=NONE
hi Terminal ctermfg=231 ctermbg=235 guifg=#fcf7f8 guibg=#232323 guisp=NONE cterm=NONE gui=NONE
hi ColorColumn ctermfg=fg ctermbg=NONE guifg=fg guibg=NONE guisp=NONE cterm=NONE gui=NONE
hi Conceal ctermfg=242 ctermbg=NONE guifg=#6d6d6d guibg=NONE guisp=NONE cterm=NONE gui=NONE
hi Cursor ctermfg=231 ctermbg=NONE guifg=#fcf7f8 guibg=NONE guisp=NONE cterm=NONE gui=NONE
hi CursorColumn ctermfg=231 ctermbg=NONE guifg=#fcf7f8 guibg=NONE guisp=NONE cterm=NONE gui=NONE
hi CursorLine ctermfg=231 ctermbg=238 guifg=#fcf7f8 guibg=#414141 guisp=NONE cterm=NONE gui=NONE
hi CursorLineNr ctermfg=231 ctermbg=NONE guifg=#fcf7f8 guibg=NONE guisp=NONE cterm=NONE gui=NONE
hi DiffAdd ctermfg=114 ctermbg=NONE guifg=#81c784 guibg=NONE guisp=NONE cterm=NONE gui=NONE
hi DiffChange ctermfg=117 ctermbg=NONE guifg=#81d4fa guibg=NONE guisp=NONE cterm=NONE gui=NONE
hi DiffDelete ctermfg=204 ctermbg=NONE guifg=#ed6a7a guibg=NONE guisp=NONE cterm=NONE gui=NONE
hi DiffText ctermfg=220 ctermbg=NONE guifg=#ffd740 guibg=NONE guisp=NONE cterm=NONE gui=NONE
hi Directory ctermfg=231 ctermbg=NONE guifg=#fcf7f8 guibg=NONE guisp=NONE cterm=NONE gui=NONE
hi EndOfBuffer ctermfg=235 ctermbg=NONE guifg=#232323 guibg=NONE guisp=NONE cterm=NONE gui=NONE
hi ErrorMsg ctermfg=204 ctermbg=NONE guifg=#ed6a7a guibg=NONE guisp=NONE cterm=NONE gui=NONE
hi FoldColumn ctermfg=231 ctermbg=238 guifg=#fcf7f8 guibg=#414141 guisp=NONE cterm=NONE gui=NONE
hi Folded ctermfg=242 ctermbg=NONE guifg=#6d6d6d guibg=NONE guisp=NONE cterm=NONE gui=NONE
hi IncSearch ctermfg=231 ctermbg=238 guifg=#fcf7f8 guibg=#414141 guisp=NONE cterm=NONE,underline gui=NONE,underline
hi LineNr ctermfg=242 ctermbg=235 guifg=#6d6d6d guibg=#232323 guisp=NONE cterm=NONE gui=NONE
hi MatchParen ctermfg=231 ctermbg=NONE guifg=#fcf7f8 guibg=NONE guisp=NONE cterm=NONE,bold,underline gui=NONE,bold,underline
hi ModeMsg ctermfg=231 ctermbg=NONE guifg=#fcf7f8 guibg=NONE guisp=NONE cterm=NONE gui=NONE
hi MoreMsg ctermfg=231 ctermbg=NONE guifg=#fcf7f8 guibg=NONE guisp=NONE cterm=NONE gui=NONE
hi NonText ctermfg=231 ctermbg=NONE guifg=#fcf7f8 guibg=NONE guisp=NONE cterm=NONE gui=NONE
hi Pmenu ctermfg=231 ctermbg=238 guifg=#fcf7f8 guibg=#414141 guisp=NONE cterm=NONE gui=NONE
hi PmenuSbar ctermfg=231 ctermbg=238 guifg=#fcf7f8 guibg=#414141 guisp=NONE cterm=NONE gui=NONE
hi PmenuSel ctermfg=231 ctermbg=238 guifg=#fcf7f8 guibg=#414141 guisp=NONE cterm=NONE,underline gui=NONE,underline
hi PmenuThumb ctermfg=231 ctermbg=238 guifg=#fcf7f8 guibg=#414141 guisp=NONE cterm=NONE gui=NONE
hi Question ctermfg=231 ctermbg=NONE guifg=#fcf7f8 guibg=NONE guisp=NONE cterm=NONE gui=NONE
hi! link QuickFixLine Search
hi Search ctermfg=231 ctermbg=238 guifg=#fcf7f8 guibg=#414141 guisp=NONE cterm=NONE gui=NONE
hi SignColumn ctermfg=231 ctermbg=235 guifg=#fcf7f8 guibg=#232323 guisp=NONE cterm=NONE gui=NONE
hi SpecialKey ctermfg=231 ctermbg=NONE guifg=#fcf7f8 guibg=NONE guisp=NONE cterm=NONE gui=NONE
hi SpellBad ctermfg=204 ctermbg=NONE guifg=#ed6a7a guibg=NONE guisp=NONE cterm=NONE gui=NONE
hi SpellCap ctermfg=220 ctermbg=NONE guifg=#ffd740 guibg=NONE guisp=NONE cterm=NONE gui=NONE
hi SpellLocal ctermfg=231 ctermbg=NONE guifg=#fcf7f8 guibg=NONE guisp=NONE cterm=NONE gui=NONE
hi SpellRare ctermfg=231 ctermbg=NONE guifg=#fcf7f8 guibg=NONE guisp=NONE cterm=NONE gui=NONE
hi StatusLine ctermfg=231 ctermbg=238 guifg=#fcf7f8 guibg=#414141 guisp=NONE cterm=NONE gui=NONE
hi StatusLineNC ctermfg=242 ctermbg=238 guifg=#6d6d6d guibg=#414141 guisp=NONE cterm=NONE gui=NONE
hi! link StatusLineTerm StatusLine
hi! link StatusLineTermNC StatusLineNC
hi TabLine ctermfg=231 ctermbg=238 guifg=#fcf7f8 guibg=#414141 guisp=NONE cterm=NONE gui=NONE
hi TabLineFill ctermfg=231 ctermbg=235 guifg=#fcf7f8 guibg=#232323 guisp=NONE cterm=NONE gui=NONE
hi TabLineSel ctermfg=231 ctermbg=238 guifg=#fcf7f8 guibg=#414141 guisp=NONE cterm=NONE,underline gui=NONE,underline
hi Title ctermfg=231 ctermbg=NONE guifg=#fcf7f8 guibg=NONE guisp=NONE cterm=NONE gui=NONE
hi VertSplit ctermfg=NONE ctermbg=NONE guifg=NONE guibg=NONE guisp=NONE cterm=NONE gui=NONE
hi Visual ctermfg=231 ctermbg=238 guifg=#fcf7f8 guibg=#414141 guisp=NONE cterm=NONE gui=NONE
hi VisualNOS ctermfg=231 ctermbg=NONE guifg=#fcf7f8 guibg=NONE guisp=NONE cterm=NONE gui=NONE
hi WarningMsg ctermfg=231 ctermbg=NONE guifg=#fcf7f8 guibg=NONE guisp=NONE cterm=NONE gui=NONE
hi WildMenu ctermfg=231 ctermbg=238 guifg=#fcf7f8 guibg=#414141 guisp=NONE cterm=NONE,underline gui=NONE,underline
hi! link Boolean Constant
hi! link Character Constant
hi Comment ctermfg=45 ctermbg=NONE guifg=#82ddf0 guibg=NONE guisp=NONE cterm=NONE,italic gui=NONE,italic
hi! link Conditional Statement
hi Constant ctermfg=231 ctermbg=NONE guifg=#fcf7f8 guibg=NONE guisp=NONE cterm=NONE gui=NONE
hi! link Define PreProc
hi! link Debug Special
hi! link Delimiter Special
hi Error ctermfg=231 ctermbg=NONE guifg=#fcf7f8 guibg=NONE guisp=NONE cterm=NONE,reverse gui=NONE,reverse
hi! link Exception Statement
hi! link Float Constant
hi! link Function Identifier
hi Identifier ctermfg=231 ctermbg=NONE guifg=#fcf7f8 guibg=NONE guisp=NONE cterm=NONE gui=NONE
hi Ignore ctermfg=231 ctermbg=NONE guifg=#fcf7f8 guibg=NONE guisp=NONE cterm=NONE gui=NONE
hi! link Include PreProc
hi! link Keyword Statement
hi! link Label Statement
hi! link Macro PreProc
hi! link Number Constant
hi! link Operator Statement
hi! link PreCondit PreProc
hi PreProc ctermfg=231 ctermbg=NONE guifg=#fcf7f8 guibg=NONE guisp=NONE cterm=NONE gui=NONE
hi! link Repeat Statement
hi Special ctermfg=231 ctermbg=NONE guifg=#fcf7f8 guibg=NONE guisp=NONE cterm=NONE gui=NONE
hi! link SpecialChar Special
hi! link SpecialComment Comment
hi Statement ctermfg=231 ctermbg=NONE guifg=#fcf7f8 guibg=NONE guisp=NONE cterm=NONE gui=NONE
hi! link StorageClass Type
hi String ctermfg=186 ctermbg=NONE guifg=#c8cc92 guibg=NONE guisp=NONE cterm=NONE gui=NONE
hi! link Structure Type
hi! link Tag Special
hi Todo ctermfg=231 ctermbg=NONE guifg=#fcf7f8 guibg=NONE guisp=NONE cterm=NONE gui=NONE
hi Type ctermfg=231 ctermbg=NONE guifg=#fcf7f8 guibg=NONE guisp=NONE cterm=NONE gui=NONE
hi! link Typedef Type
hi Underlined ctermfg=231 ctermbg=NONE guifg=#fcf7f8 guibg=NONE guisp=NONE cterm=NONE gui=NONE
hi! link lCursor Cursor
hi CursorIM ctermfg=NONE ctermbg=fg guifg=NONE guibg=fg guisp=NONE cterm=NONE gui=NONE
hi ToolbarLine ctermfg=NONE ctermbg=NONE guifg=NONE guibg=NONE guisp=NONE cterm=NONE gui=NONE
hi ToolbarButton ctermfg=231 ctermbg=NONE guifg=#fcf7f8 guibg=NONE guisp=NONE cterm=NONE gui=NONE
finish

" Background: dark
" Color: background         #232323    ~
" Color: background_lighter #414141    ~
" Color: foreground         #fcf7f8    ~
" Color: foreground_dimmed  #6d6d6d    ~
" Color: red                #ed6a7a    ~
" Color: blue               #81d4fa    ~
" Color: green              #81c784    ~
" Color: yellow             #ffd740    ~
" Color: string             #c8cc92    ~
" Color: orange             #82ddf0    ~
" ALEErrorSign     red                 background
" ALEWarningSign   yellow              background
" Normal           foreground          background
" Terminal         foreground          background
" ColorColumn      fg                  none
" Conceal          foreground_dimmed   none
" Cursor           foreground          none
" CursorColumn     foreground          none
" CursorLine       foreground          background_lighter
" CursorLineNr     foreground          none
" DiffAdd          green               none
" DiffChange       blue                none
" DiffDelete       red                 none
" DiffText         yellow              none
" Directory        foreground          none
" EndOfBuffer      background          none
" ErrorMsg         red                 none
" FoldColumn       foreground          background_lighter
" Folded           foreground_dimmed   none
" IncSearch        foreground          background_lighter underline
" LineNr           foreground_dimmed   background
" MatchParen       foreground          none underline, bold
" ModeMsg          foreground          none
" MoreMsg          foreground          none
" NonText          foreground          none
" Pmenu            foreground          background_lighter
" PmenuSbar        foreground          background_lighter
" PmenuSel         foreground          background_lighter underline
" PmenuThumb       foreground          background_lighter
" Question         foreground          none
" QuickFixLine     ->  Search
" Search           foreground          background_lighter
" SignColumn       foreground          background
" SpecialKey       foreground          none
" SpellBad         red                 none
" SpellCap         yellow              none
" SpellLocal       foreground          none
" SpellRare        foreground          none
" StatusLine       foreground          background_lighter 
" StatusLineNC     foreground_dimmed   background_lighter
" StatusLineTerm   -> StatusLine
" StatusLineTermNC -> StatusLineNC
" TabLine          foreground          background_lighter
" TabLineFill      foreground          background
" TabLineSel       foreground          background_lighter  underline
" Title            foreground          none
" VertSplit        none                none
" Visual           foreground          background_lighter
" VisualNOS        foreground          none
" WarningMsg       foreground          none
" WildMenu         foreground          background_lighter underline
" Boolean        -> Constant
" Character      -> Constant
" Comment        orange               none     italic
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
