" Name:         Yui
" Author:       Florian B <yuuki@protonmail.com>
" Maintainer:   Florian B <yuuki@protonmail.com>
" License:      Vim License (see `:help license`)
" Last Updated: Wed 13 Jun 2018 08:47:10 PM CEST

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

" Color similarity table (dark background)
"    grey: GUI=#484848/rgb( 72, 72, 72)  Term=238 #444444/rgb( 68, 68, 68)  [delta=1.342624]
"   white: GUI=#f5f5f5/rgb(245,245,245)  Term=255 #eeeeee/rgb(238,238,238)  [delta=1.455226]
"   black: GUI=#212121/rgb( 33, 33, 33)  Term=234 #1c1c1c/rgb( 28, 28, 28)  [delta=1.570829]
" magenta: GUI=#ba68c8/rgb(186,104,200)  Term=134 #af5fd7/rgb(175, 95,215)  [delta=4.547458]
"    blue: GUI=#90caf9/rgb(144,202,249)  Term=153 #afd7ff/rgb(175,215,255)  [delta=4.757183]
"    cyan: GUI=#80deea/rgb(128,222,234)  Term=116 #87d7d7/rgb(135,215,215)  [delta=4.796140]
"     red: GUI=#e57373/rgb(229,115,115)  Term=167 #d75f5f/rgb(215, 95, 95)  [delta=5.773591]
hi Normal ctermfg=255 ctermbg=234 guifg=#f5f5f5 guibg=#212121 guisp=NONE cterm=NONE gui=NONE
hi ColorColumn ctermfg=fg ctermbg=234 guifg=fg guibg=#212121 guisp=NONE cterm=NONE gui=NONE
hi Conceal ctermfg=238 ctermbg=NONE guifg=#484848 guibg=NONE guisp=NONE cterm=NONE gui=NONE
hi Cursor ctermfg=255 ctermbg=234 guifg=#f5f5f5 guibg=#212121 guisp=NONE cterm=NONE gui=NONE
hi CursorColumn ctermfg=255 ctermbg=234 guifg=#f5f5f5 guibg=#212121 guisp=NONE cterm=NONE gui=NONE
hi CursorLine ctermfg=255 ctermbg=234 guifg=#f5f5f5 guibg=#212121 guisp=NONE cterm=NONE gui=NONE
hi CursorLineNr ctermfg=255 ctermbg=234 guifg=#f5f5f5 guibg=#212121 guisp=NONE cterm=NONE gui=NONE
hi DiffAdd ctermfg=255 ctermbg=234 guifg=#f5f5f5 guibg=#212121 guisp=NONE cterm=NONE,reverse gui=NONE,reverse
hi DiffChange ctermfg=255 ctermbg=234 guifg=#f5f5f5 guibg=#212121 guisp=NONE cterm=NONE,reverse gui=NONE,reverse
hi DiffDelete ctermfg=255 ctermbg=234 guifg=#f5f5f5 guibg=#212121 guisp=NONE cterm=NONE,reverse gui=NONE,reverse
hi DiffText ctermfg=255 ctermbg=234 guifg=#f5f5f5 guibg=#212121 guisp=NONE cterm=NONE,bold,reverse gui=NONE,bold,reverse
hi Directory ctermfg=255 ctermbg=234 guifg=#f5f5f5 guibg=#212121 guisp=NONE cterm=NONE gui=NONE
hi EndOfBuffer ctermfg=255 ctermbg=234 guifg=#f5f5f5 guibg=#212121 guisp=NONE cterm=NONE gui=NONE
hi ErrorMsg ctermfg=255 ctermbg=234 guifg=#f5f5f5 guibg=#212121 guisp=NONE cterm=NONE,reverse gui=NONE,reverse
hi FoldColumn ctermfg=255 ctermbg=234 guifg=#f5f5f5 guibg=#212121 guisp=NONE cterm=NONE gui=NONE
hi Folded ctermfg=255 ctermbg=234 guifg=#f5f5f5 guibg=#212121 guisp=NONE cterm=NONE,italic gui=NONE,italic
hi IncSearch ctermfg=255 ctermbg=234 guifg=#f5f5f5 guibg=#212121 guisp=NONE cterm=NONE,reverse gui=NONE,standout
hi LineNr ctermfg=255 ctermbg=234 guifg=#f5f5f5 guibg=#212121 guisp=NONE cterm=NONE gui=NONE
hi MatchParen ctermfg=255 ctermbg=234 guifg=#f5f5f5 guibg=#212121 guisp=NONE cterm=NONE gui=NONE
hi ModeMsg ctermfg=255 ctermbg=234 guifg=#f5f5f5 guibg=#212121 guisp=NONE cterm=NONE gui=NONE
hi MoreMsg ctermfg=255 ctermbg=234 guifg=#f5f5f5 guibg=#212121 guisp=NONE cterm=NONE gui=NONE
hi NonText ctermfg=255 ctermbg=234 guifg=#f5f5f5 guibg=#212121 guisp=NONE cterm=NONE gui=NONE
hi Pmenu ctermfg=255 ctermbg=234 guifg=#f5f5f5 guibg=#212121 guisp=NONE cterm=NONE gui=NONE
hi PmenuSbar ctermfg=255 ctermbg=234 guifg=#f5f5f5 guibg=#212121 guisp=NONE cterm=NONE gui=NONE
hi PmenuSel ctermfg=255 ctermbg=234 guifg=#f5f5f5 guibg=#212121 guisp=NONE cterm=NONE gui=NONE
hi PmenuThumb ctermfg=255 ctermbg=234 guifg=#f5f5f5 guibg=#212121 guisp=NONE cterm=NONE gui=NONE
hi Question ctermfg=255 ctermbg=234 guifg=#f5f5f5 guibg=#212121 guisp=NONE cterm=NONE gui=NONE
hi! link QuickFixLine Search
hi Search ctermfg=255 ctermbg=234 guifg=#f5f5f5 guibg=#212121 guisp=NONE cterm=NONE gui=NONE
hi SignColumn ctermfg=255 ctermbg=234 guifg=#f5f5f5 guibg=#212121 guisp=NONE cterm=NONE gui=NONE
hi SpecialKey ctermfg=255 ctermbg=234 guifg=#f5f5f5 guibg=#212121 guisp=NONE cterm=NONE gui=NONE
hi SpellBad ctermfg=255 ctermbg=234 guifg=#f5f5f5 guibg=#212121 guisp=#e57373 cterm=NONE gui=NONE
hi SpellCap ctermfg=255 ctermbg=234 guifg=#f5f5f5 guibg=#212121 guisp=#90caf9 cterm=NONE gui=NONE
hi SpellLocal ctermfg=255 ctermbg=234 guifg=#f5f5f5 guibg=#212121 guisp=#ba68c8 cterm=NONE gui=NONE
hi SpellRare ctermfg=255 ctermbg=234 guifg=#f5f5f5 guibg=#212121 guisp=#80deea cterm=NONE,reverse gui=NONE,reverse
hi StatusLine ctermfg=255 ctermbg=234 guifg=#f5f5f5 guibg=#212121 guisp=NONE cterm=NONE gui=NONE
hi StatusLineNC ctermfg=255 ctermbg=234 guifg=#f5f5f5 guibg=#212121 guisp=NONE cterm=NONE gui=NONE
hi! link StatusLineTerm StatusLine
hi! link StatusLineTermNC StatusLineNC
hi TabLine ctermfg=255 ctermbg=234 guifg=#f5f5f5 guibg=#212121 guisp=NONE cterm=NONE gui=NONE
hi TabLineFill ctermfg=255 ctermbg=234 guifg=#f5f5f5 guibg=#212121 guisp=NONE cterm=NONE gui=NONE
hi TabLineSel ctermfg=255 ctermbg=234 guifg=#f5f5f5 guibg=#212121 guisp=NONE cterm=NONE gui=NONE
hi Title ctermfg=255 ctermbg=234 guifg=#f5f5f5 guibg=#212121 guisp=NONE cterm=NONE gui=NONE
hi VertSplit ctermfg=255 ctermbg=234 guifg=#f5f5f5 guibg=#212121 guisp=NONE cterm=NONE gui=NONE
hi Visual ctermfg=255 ctermbg=167 guifg=#f5f5f5 guibg=#e57373 guisp=NONE cterm=NONE gui=NONE
hi VisualNOS ctermfg=255 ctermbg=234 guifg=#f5f5f5 guibg=#212121 guisp=NONE cterm=NONE gui=NONE
hi WarningMsg ctermfg=255 ctermbg=234 guifg=#f5f5f5 guibg=#212121 guisp=NONE cterm=NONE gui=NONE
hi WildMenu ctermfg=255 ctermbg=234 guifg=#f5f5f5 guibg=#212121 guisp=NONE cterm=NONE gui=NONE
hi! link Boolean Constant
hi! link Character Constant
hi Comment ctermfg=255 ctermbg=NONE guifg=#f5f5f5 guibg=NONE guisp=NONE cterm=NONE gui=NONE
hi! link Conditional Statement
hi Constant ctermfg=255 ctermbg=NONE guifg=#f5f5f5 guibg=NONE guisp=NONE cterm=NONE gui=NONE
hi! link Define PreProc
hi! link Debug Special
hi! link Delimiter Special
hi Error ctermfg=255 ctermbg=234 guifg=#f5f5f5 guibg=#212121 guisp=NONE cterm=NONE,reverse gui=NONE,reverse
hi! link Exception Statement
hi! link Float Constant
hi! link Function Identifier
hi Identifier ctermfg=255 ctermbg=NONE guifg=#f5f5f5 guibg=NONE guisp=NONE cterm=NONE gui=NONE
hi Ignore ctermfg=255 ctermbg=NONE guifg=#f5f5f5 guibg=NONE guisp=NONE cterm=NONE gui=NONE
hi! link Include PreProc
hi! link Keyword Statement
hi! link Label Statement
hi! link Macro PreProc
hi! link Number Constant
hi! link Operator Statement
hi! link PreCondit PreProc
hi PreProc ctermfg=255 ctermbg=NONE guifg=#f5f5f5 guibg=NONE guisp=NONE cterm=NONE gui=NONE
hi! link Repeat Statement
hi Special ctermfg=255 ctermbg=NONE guifg=#f5f5f5 guibg=NONE guisp=NONE cterm=NONE gui=NONE
hi! link SpecialChar Special
hi! link SpecialComment Special
hi Statement ctermfg=255 ctermbg=NONE guifg=#f5f5f5 guibg=NONE guisp=NONE cterm=NONE gui=NONE
hi! link StorageClass Type
hi! link String Constant
hi! link Structure Type
hi! link Tag Special
hi Todo ctermfg=255 ctermbg=NONE guifg=#f5f5f5 guibg=NONE guisp=NONE cterm=NONE gui=NONE
hi Type ctermfg=255 ctermbg=NONE guifg=#f5f5f5 guibg=NONE guisp=NONE cterm=NONE gui=NONE
hi! link Typedef Type
hi Underlined ctermfg=255 ctermbg=NONE guifg=#f5f5f5 guibg=NONE guisp=NONE cterm=NONE gui=NONE
hi! link lCursor Cursor
hi CursorIM ctermfg=NONE ctermbg=fg guifg=NONE guibg=fg guisp=NONE cterm=NONE gui=NONE
hi ToolbarLine ctermfg=NONE ctermbg=234 guifg=NONE guibg=#212121 guisp=NONE cterm=NONE gui=NONE
hi ToolbarButton ctermfg=255 ctermbg=234 guifg=#f5f5f5 guibg=#212121 guisp=NONE cterm=NONE,bold gui=NONE,bold
finish

" Background: dark
" Color:            black   #212121    ~
" Color:            white   #f5f5f5    ~
" Color:            grey    #484848    ~
" Color:            red     #e57373    ~
" Color:            blue    #90caf9    ~
" Color:            magenta #ba68c8    ~
" Color:            cyan    #80deea    ~
" Normal               white             black
" ColorColumn          fg                black
" Conceal              grey              none
" Cursor               white             black
" CursorColumn         white             black
" CursorLine           white             black
" CursorLineNr         white             black
" DiffAdd              white             black             reverse
" DiffChange           white             black             reverse
" DiffDelete           white             black             reverse
" DiffText             white             black             bold,reverse
" Directory            white             black
" EndOfBuffer          white             black
" ErrorMsg             white             black             reverse
" FoldColumn           white             black
" Folded               white             black             italic
" IncSearch            white             black             t=reverse g=standout
" LineNr               white             black
" MatchParen           white             black
" ModeMsg              white             black
" MoreMsg              white             black
" NonText              white             black
" Pmenu                white             black
" PmenuSbar            white             black
" PmenuSel             white             black
" PmenuThumb           white             black
" Question             white             black
" QuickFixLine     ->  Search
" Search               white             black
" SignColumn           white             black
" SpecialKey           white             black
" SpellBad             white             black             s=red
" SpellCap             white             black             s=blue
" SpellLocal           white             black             s=magenta
" SpellRare            white             black             s=cyan reverse
" StatusLine           white             black
" StatusLineNC         white             black
" StatusLineTerm    -> StatusLine
" StatusLineTermNC  -> StatusLineNC
" TabLine              white             black
" TabLineFill          white             black
" TabLineSel           white             black
" Title                white             black
" VertSplit            white             black
" Visual               white             red
" VisualNOS            white             black
" WarningMsg           white             black
" WildMenu             white             black
" Boolean           -> Constant
" Character         -> Constant
" Comment              white             none
" Conditional       -> Statement
" Constant             white             none
" Define            -> PreProc
" Debug             -> Special
" Delimiter         -> Special
" Error                white             black             reverse
" Exception         -> Statement
" Float             -> Constant
" Function          -> Identifier
" Identifier           white             none
" Ignore               white             none
" Include           -> PreProc
" Keyword           -> Statement
" Label             -> Statement
" Macro             -> PreProc
" Number            -> Constant
" Operator          -> Statement
" PreCondit         -> PreProc
" PreProc              white             none
" Repeat            -> Statement
" Special              white             none
" SpecialChar       -> Special
" SpecialComment    -> Special
" Statement            white             none
" StorageClass      -> Type
" String            -> Constant
" Structure         -> Type
" Tag               -> Special
" Todo                 white             none
" Type                 white             none
" Typedef           -> Type
" Underlined           white             none
" lCursor           -> Cursor
" CursorIM             none              fg
" ToolbarLine          none              black
" ToolbarButton        white             black             bold
