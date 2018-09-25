" Name:         Yui
" Author:       Florian B <yuuki@protonmail.com>
" Maintainer:   Florian B <yuuki@protonmail.com>
" License:      Vim License (see `:help license`)
<<<<<<< HEAD
" Last Updated: Tue Sep 25 19:16:32 2018
=======
" Last Updated: Sun 23 Sep 2018 07:08:15 PM CEST
>>>>>>> 88e8586c0a975021c494713a9189b851f42e67d8

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

hi ALEErrorSign ctermfg=196 ctermbg=234 guifg=#ff3d00 guibg=#1b1b1b guisp=NONE cterm=NONE gui=NONE
hi ALEWarningSign ctermfg=220 ctermbg=234 guifg=#ffd740 guibg=#1b1b1b guisp=NONE cterm=NONE gui=NONE
hi Normal ctermfg=255 ctermbg=234 guifg=#efefef guibg=#1b1b1b guisp=NONE cterm=NONE gui=NONE
hi Terminal ctermfg=255 ctermbg=234 guifg=#efefef guibg=#1b1b1b guisp=NONE cterm=NONE gui=NONE
hi ColorColumn ctermfg=fg ctermbg=NONE guifg=fg guibg=NONE guisp=NONE cterm=NONE gui=NONE
hi Conceal ctermfg=242 ctermbg=NONE guifg=#6d6d6d guibg=NONE guisp=NONE cterm=NONE gui=NONE
hi Cursor ctermfg=255 ctermbg=NONE guifg=#efefef guibg=NONE guisp=NONE cterm=NONE gui=NONE
hi CursorColumn ctermfg=255 ctermbg=NONE guifg=#efefef guibg=NONE guisp=NONE cterm=NONE gui=NONE
hi CursorLine ctermfg=255 ctermbg=237 guifg=#efefef guibg=#373737 guisp=NONE cterm=NONE gui=NONE
hi CursorLineNr ctermfg=255 ctermbg=NONE guifg=#efefef guibg=NONE guisp=NONE cterm=NONE gui=NONE
hi DiffAdd ctermfg=114 ctermbg=NONE guifg=#81c784 guibg=NONE guisp=NONE cterm=NONE gui=NONE
hi DiffChange ctermfg=117 ctermbg=NONE guifg=#81d4fa guibg=NONE guisp=NONE cterm=NONE gui=NONE
hi DiffDelete ctermfg=196 ctermbg=NONE guifg=#ff3d00 guibg=NONE guisp=NONE cterm=NONE gui=NONE
hi DiffText ctermfg=220 ctermbg=NONE guifg=#ffd740 guibg=NONE guisp=NONE cterm=NONE gui=NONE
hi Directory ctermfg=255 ctermbg=NONE guifg=#efefef guibg=NONE guisp=NONE cterm=NONE gui=NONE
hi EndOfBuffer ctermfg=234 ctermbg=NONE guifg=#1b1b1b guibg=NONE guisp=NONE cterm=NONE gui=NONE
hi ErrorMsg ctermfg=196 ctermbg=NONE guifg=#ff3d00 guibg=NONE guisp=NONE cterm=NONE gui=NONE
hi FoldColumn ctermfg=255 ctermbg=237 guifg=#efefef guibg=#373737 guisp=NONE cterm=NONE gui=NONE
hi Folded ctermfg=242 ctermbg=NONE guifg=#6d6d6d guibg=NONE guisp=NONE cterm=NONE gui=NONE
hi IncSearch ctermfg=255 ctermbg=237 guifg=#efefef guibg=#373737 guisp=NONE cterm=NONE,underline gui=NONE,underline
hi LineNr ctermfg=242 ctermbg=234 guifg=#6d6d6d guibg=#1b1b1b guisp=NONE cterm=NONE gui=NONE
hi MatchParen ctermfg=255 ctermbg=NONE guifg=#efefef guibg=NONE guisp=NONE cterm=NONE,underline gui=NONE,underline
hi ModeMsg ctermfg=255 ctermbg=NONE guifg=#efefef guibg=NONE guisp=NONE cterm=NONE gui=NONE
hi MoreMsg ctermfg=255 ctermbg=NONE guifg=#efefef guibg=NONE guisp=NONE cterm=NONE gui=NONE
hi NonText ctermfg=255 ctermbg=NONE guifg=#efefef guibg=NONE guisp=NONE cterm=NONE gui=NONE
hi Pmenu ctermfg=255 ctermbg=237 guifg=#efefef guibg=#373737 guisp=NONE cterm=NONE gui=NONE
hi PmenuSbar ctermfg=255 ctermbg=237 guifg=#efefef guibg=#373737 guisp=NONE cterm=NONE gui=NONE
hi PmenuSel ctermfg=255 ctermbg=237 guifg=#efefef guibg=#373737 guisp=NONE cterm=NONE,underline gui=NONE,underline
hi PmenuThumb ctermfg=255 ctermbg=237 guifg=#efefef guibg=#373737 guisp=NONE cterm=NONE gui=NONE
hi Question ctermfg=255 ctermbg=NONE guifg=#efefef guibg=NONE guisp=NONE cterm=NONE gui=NONE
hi! link QuickFixLine Search
hi Search ctermfg=255 ctermbg=237 guifg=#efefef guibg=#373737 guisp=NONE cterm=NONE gui=NONE
hi SignColumn ctermfg=255 ctermbg=234 guifg=#efefef guibg=#1b1b1b guisp=NONE cterm=NONE gui=NONE
hi SpecialKey ctermfg=255 ctermbg=NONE guifg=#efefef guibg=NONE guisp=NONE cterm=NONE gui=NONE
hi SpellBad ctermfg=196 ctermbg=NONE guifg=#ff3d00 guibg=NONE guisp=NONE cterm=NONE gui=NONE
hi SpellCap ctermfg=220 ctermbg=NONE guifg=#ffd740 guibg=NONE guisp=NONE cterm=NONE gui=NONE
hi SpellLocal ctermfg=255 ctermbg=NONE guifg=#efefef guibg=NONE guisp=NONE cterm=NONE gui=NONE
hi SpellRare ctermfg=255 ctermbg=NONE guifg=#efefef guibg=NONE guisp=NONE cterm=NONE gui=NONE
hi StatusLine ctermfg=255 ctermbg=237 guifg=#efefef guibg=#373737 guisp=NONE cterm=NONE gui=NONE
hi StatusLineNC ctermfg=242 ctermbg=237 guifg=#6d6d6d guibg=#373737 guisp=NONE cterm=NONE gui=NONE
hi! link StatusLineTerm StatusLine
hi! link StatusLineTermNC StatusLineNC
hi TabLine ctermfg=255 ctermbg=237 guifg=#efefef guibg=#373737 guisp=NONE cterm=NONE gui=NONE
hi TabLineFill ctermfg=255 ctermbg=234 guifg=#efefef guibg=#1b1b1b guisp=NONE cterm=NONE gui=NONE
hi TabLineSel ctermfg=255 ctermbg=237 guifg=#efefef guibg=#373737 guisp=NONE cterm=NONE,underline gui=NONE,underline
hi Title ctermfg=255 ctermbg=NONE guifg=#efefef guibg=NONE guisp=NONE cterm=NONE gui=NONE
hi VertSplit ctermfg=NONE ctermbg=NONE guifg=NONE guibg=NONE guisp=NONE cterm=NONE gui=NONE
hi Visual ctermfg=255 ctermbg=237 guifg=#efefef guibg=#373737 guisp=NONE cterm=NONE gui=NONE
hi VisualNOS ctermfg=255 ctermbg=NONE guifg=#efefef guibg=NONE guisp=NONE cterm=NONE gui=NONE
hi WarningMsg ctermfg=255 ctermbg=NONE guifg=#efefef guibg=NONE guisp=NONE cterm=NONE gui=NONE
hi WildMenu ctermfg=255 ctermbg=237 guifg=#efefef guibg=#373737 guisp=NONE cterm=NONE,underline gui=NONE,underline
hi! link Boolean Constant
hi! link Character Constant
<<<<<<< HEAD
hi Comment ctermfg=214 ctermbg=NONE guifg=#f9a825 guibg=NONE guisp=NONE cterm=NONE,italic gui=NONE,italic
=======
hi Comment ctermfg=242 ctermbg=NONE guifg=#6d6d6d guibg=NONE guisp=NONE cterm=NONE,italic gui=NONE,italic
>>>>>>> 88e8586c0a975021c494713a9189b851f42e67d8
hi! link Conditional Statement
hi Constant ctermfg=255 ctermbg=NONE guifg=#efefef guibg=NONE guisp=NONE cterm=NONE gui=NONE
hi! link Define PreProc
hi! link Debug Special
hi! link Delimiter Special
hi Error ctermfg=255 ctermbg=NONE guifg=#efefef guibg=NONE guisp=NONE cterm=NONE,reverse gui=NONE,reverse
hi! link Exception Statement
hi! link Float Constant
hi! link Function Identifier
hi Identifier ctermfg=255 ctermbg=NONE guifg=#efefef guibg=NONE guisp=NONE cterm=NONE gui=NONE
hi Ignore ctermfg=255 ctermbg=NONE guifg=#efefef guibg=NONE guisp=NONE cterm=NONE gui=NONE
hi! link Include PreProc
hi! link Keyword Statement
hi! link Label Statement
hi! link Macro PreProc
hi! link Number Constant
hi! link Operator Statement
hi! link PreCondit PreProc
hi PreProc ctermfg=255 ctermbg=NONE guifg=#efefef guibg=NONE guisp=NONE cterm=NONE gui=NONE
hi! link Repeat Statement
hi Special ctermfg=255 ctermbg=NONE guifg=#efefef guibg=NONE guisp=NONE cterm=NONE gui=NONE
hi! link SpecialChar Special
hi! link SpecialComment Comment
hi Statement ctermfg=255 ctermbg=NONE guifg=#efefef guibg=NONE guisp=NONE cterm=NONE gui=NONE
hi! link StorageClass Type
hi String ctermfg=149 ctermbg=NONE guifg=#9ccc65 guibg=NONE guisp=NONE cterm=NONE gui=NONE
hi! link Structure Type
hi! link Tag Special
hi Todo ctermfg=255 ctermbg=NONE guifg=#efefef guibg=NONE guisp=NONE cterm=NONE gui=NONE
hi Type ctermfg=255 ctermbg=NONE guifg=#efefef guibg=NONE guisp=NONE cterm=NONE gui=NONE
hi! link Typedef Type
hi Underlined ctermfg=255 ctermbg=NONE guifg=#efefef guibg=NONE guisp=NONE cterm=NONE gui=NONE
hi! link lCursor Cursor
hi CursorIM ctermfg=NONE ctermbg=fg guifg=NONE guibg=fg guisp=NONE cterm=NONE gui=NONE
hi ToolbarLine ctermfg=NONE ctermbg=NONE guifg=NONE guibg=NONE guisp=NONE cterm=NONE gui=NONE
hi ToolbarButton ctermfg=255 ctermbg=NONE guifg=#efefef guibg=NONE guisp=NONE cterm=NONE gui=NONE
finish

" Background: dark
" Color: background         #1b1b1b    ~
" Color: background_lighter #373737    ~
" Color: foreground         #efefef    ~
" Color: foreground_dimmed  #6d6d6d    ~
" Color: red                #ff3d00    ~
" Color: blue               #81d4fa    ~
" Color: green              #81c784    ~
" Color: yellow             #ffd740    ~
" Color: accent             #ffffc2    ~
" Color: string             #9ccc65    ~
" Color: orange             #f9a825    ~
" ALEErrorSign     red            background
" ALEWarningSign   yellow             background
" Normal           foreground          background
" Terminal         foreground          background
" ColorColumn      fg                  none
" Conceal          foreground_dimmed              none
" Cursor           foreground          none
" CursorColumn     foreground          none
" CursorLine       foreground          background_lighter
" CursorLineNr     foreground          none
" DiffAdd          green               none
" DiffChange       blue                none
" DiffDelete       red            none
" DiffText         yellow             none
" Directory        foreground          none
" EndOfBuffer      background          none
" ErrorMsg         red          none
" FoldColumn       foreground          background_lighter
" Folded           foreground_dimmed              none
" IncSearch        foreground          background_lighter underline
" LineNr           foreground_dimmed              background
" MatchParen       foreground            none underline
" ModeMsg          foreground          none
" MoreMsg          foreground          none
" NonText          foreground          none
" Pmenu            foreground          background_lighter
" PmenuSbar        foreground          background_lighter
" PmenuSel         foreground            background_lighter underline
" PmenuThumb       foreground          background_lighter
" Question         foreground          none
" QuickFixLine     ->  Search
" Search           foreground          background_lighter
" SignColumn       foreground          background
" SpecialKey       foreground          none
" SpellBad         red            none
" SpellCap         yellow             none
" SpellLocal       foreground          none
" SpellRare        foreground          none
" StatusLine       foreground          background_lighter 
" StatusLineNC     foreground_dimmed          background_lighter
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
<<<<<<< HEAD
" Comment        orange               none     italic
=======
" Comment        foreground_dimmed               none     italic
>>>>>>> 88e8586c0a975021c494713a9189b851f42e67d8
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
