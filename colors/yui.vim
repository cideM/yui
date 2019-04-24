" Name:         Yui
" Author:       Florian B <yuuki@protonmail.com>
" Maintainer:   Florian B <yuuki@protonmail.com>
" License:      Vim License (see `:help license`)
" Last Updated: Wed Apr 24 20:58:45 2019

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

let g:colors_name = 'yui'

hi Normal ctermfg=241 ctermbg=255 guifg=#72645f guibg=#efeae5 guisp=NONE cterm=NONE gui=NONE
hi Terminal ctermfg=241 ctermbg=255 guifg=#72645f guibg=#efeae5 guisp=NONE cterm=NONE gui=NONE
hi ColorColumn ctermfg=241 ctermbg=NONE guifg=#72645f guibg=NONE guisp=NONE cterm=NONE gui=NONE
hi Conceal ctermfg=246 ctermbg=NONE guifg=#9f918c guibg=NONE guisp=NONE cterm=NONE gui=NONE
hi Cursor ctermfg=241 ctermbg=NONE guifg=#72645f guibg=NONE guisp=NONE cterm=NONE gui=NONE
hi CursorColumn ctermfg=NONE ctermbg=231 guifg=NONE guibg=#ffffff guisp=NONE cterm=NONE gui=NONE
hi CursorLine ctermfg=NONE ctermbg=231 guifg=NONE guibg=#ffffff guisp=NONE cterm=NONE gui=NONE
hi CursorLineNr ctermfg=NONE ctermbg=231 guifg=NONE guibg=#ffffff guisp=NONE cterm=NONE gui=NONE
hi DiffAdd ctermfg=22 ctermbg=NONE guifg=#336f15 guibg=NONE guisp=NONE cterm=NONE gui=NONE
hi! link diffAdded DiffAdd
hi DiffChange ctermfg=127 ctermbg=NONE guifg=#af0bc1 guibg=NONE guisp=NONE cterm=NONE gui=NONE
hi! link diffChanged DiffChange
hi DiffDelete ctermfg=160 ctermbg=NONE guifg=#d50711 guibg=NONE guisp=NONE cterm=NONE gui=NONE
hi! link diffRemoved DiffDelete
hi DiffText ctermfg=25 ctermbg=NONE guifg=#0067c2 guibg=NONE guisp=NONE cterm=NONE gui=NONE
hi Directory ctermfg=241 ctermbg=NONE guifg=#72645f guibg=NONE guisp=NONE cterm=NONE gui=NONE
hi EndOfBuffer ctermfg=246 ctermbg=NONE guifg=#9f918c guibg=NONE guisp=NONE cterm=NONE gui=NONE
hi ErrorMsg ctermfg=160 ctermbg=NONE guifg=#d50711 guibg=NONE guisp=NONE cterm=NONE gui=NONE
hi FoldColumn ctermfg=246 ctermbg=NONE guifg=#9f918c guibg=NONE guisp=NONE cterm=NONE gui=NONE
hi Folded ctermfg=181 ctermbg=NONE guifg=#d2bdb7 guibg=NONE guisp=NONE cterm=NONE gui=NONE
hi IncSearch ctermfg=231 ctermbg=202 guifg=#ffffff guibg=#e96c3e guisp=NONE cterm=NONE gui=NONE
hi Search ctermfg=NONE ctermbg=231 guifg=NONE guibg=#ffffff guisp=NONE cterm=NONE gui=NONE
hi LineNr ctermfg=181 ctermbg=NONE guifg=#d2bdb7 guibg=NONE guisp=NONE cterm=NONE gui=NONE
hi MatchParen ctermfg=NONE ctermbg=NONE guifg=NONE guibg=NONE guisp=NONE cterm=NONE,bold,underline gui=NONE,bold,underline
hi ModeMsg ctermfg=241 ctermbg=NONE guifg=#72645f guibg=NONE guisp=NONE cterm=NONE gui=NONE
hi MoreMsg ctermfg=241 ctermbg=NONE guifg=#72645f guibg=NONE guisp=NONE cterm=NONE gui=NONE
hi NonText ctermfg=241 ctermbg=NONE guifg=#72645f guibg=NONE guisp=NONE cterm=NONE gui=NONE
hi Pmenu ctermfg=241 ctermbg=231 guifg=#72645f guibg=#ffffff guisp=NONE cterm=NONE gui=NONE
hi PmenuSbar ctermfg=241 ctermbg=242 guifg=#72645f guibg=#7a6b66 guisp=NONE cterm=NONE gui=NONE
hi PmenuSel ctermfg=202 ctermbg=231 guifg=#e96c3e guibg=#ffffff guisp=NONE cterm=NONE gui=NONE
hi PmenuThumb ctermfg=241 ctermbg=231 guifg=#72645f guibg=#ffffff guisp=NONE cterm=NONE gui=NONE
hi Question ctermfg=241 ctermbg=NONE guifg=#72645f guibg=NONE guisp=NONE cterm=NONE gui=NONE
hi! link QuickFixLine Search
hi SignColumn ctermfg=241 ctermbg=255 guifg=#72645f guibg=#efeae5 guisp=NONE cterm=NONE gui=NONE
hi SpecialKey ctermfg=241 ctermbg=NONE guifg=#72645f guibg=NONE guisp=NONE cterm=NONE gui=NONE
hi SpellBad ctermfg=160 ctermbg=NONE guifg=#d50711 guibg=NONE guisp=NONE cterm=NONE gui=NONE
hi SpellCap ctermfg=127 ctermbg=NONE guifg=#af0bc1 guibg=NONE guisp=NONE cterm=NONE gui=NONE
hi SpellLocal ctermfg=241 ctermbg=NONE guifg=#72645f guibg=NONE guisp=NONE cterm=NONE gui=NONE
hi SpellRare ctermfg=241 ctermbg=NONE guifg=#72645f guibg=NONE guisp=NONE cterm=NONE gui=NONE
hi StatusLine ctermfg=231 ctermbg=242 guifg=#ffffff guibg=#7a6b66 guisp=NONE cterm=NONE gui=NONE
hi StatusLineNC ctermfg=246 ctermbg=231 guifg=#9f918c guibg=#ffffff guisp=NONE cterm=NONE gui=NONE
hi! link StatusLineTerm StatusLine
hi! link StatusLineTermNC StatusLineNC
hi TabLine ctermfg=241 ctermbg=231 guifg=#72645f guibg=#ffffff guisp=NONE cterm=NONE gui=NONE
hi TabLineFill ctermfg=NONE ctermbg=231 guifg=NONE guibg=#ffffff guisp=NONE cterm=NONE gui=NONE
hi TabLineSel ctermfg=231 ctermbg=242 guifg=#ffffff guibg=#7a6b66 guisp=NONE cterm=NONE gui=NONE
hi Title ctermfg=NONE ctermbg=NONE guifg=NONE guibg=NONE guisp=NONE cterm=NONE gui=NONE
hi VertSplit ctermfg=246 ctermbg=NONE guifg=#9f918c guibg=NONE guisp=NONE cterm=NONE gui=NONE
hi Visual ctermfg=NONE ctermbg=231 guifg=NONE guibg=#ffffff guisp=NONE cterm=NONE gui=NONE
hi VisualNOS ctermfg=NONE ctermbg=231 guifg=NONE guibg=#ffffff guisp=NONE cterm=NONE gui=NONE
hi WarningMsg ctermfg=241 ctermbg=NONE guifg=#72645f guibg=NONE guisp=NONE cterm=NONE gui=NONE
hi WildMenu ctermfg=202 ctermbg=231 guifg=#e96c3e guibg=#ffffff guisp=NONE cterm=NONE gui=NONE
hi! link Boolean Constant
hi! link Character Constant
hi Comment ctermfg=202 ctermbg=NONE guifg=#e96c3e guibg=NONE guisp=NONE cterm=NONE gui=NONE
hi! link Conditional Statement
hi Constant ctermfg=241 ctermbg=NONE guifg=#72645f guibg=NONE guisp=NONE cterm=NONE gui=NONE
hi! link Define PreProc
hi! link Debug Special
hi! link Delimiter Special
hi Error ctermfg=160 ctermbg=NONE guifg=#d50711 guibg=NONE guisp=NONE cterm=NONE gui=NONE
hi! link Exception Statement
hi! link Float Constant
hi! link Function Identifier
hi Identifier ctermfg=241 ctermbg=NONE guifg=#72645f guibg=NONE guisp=NONE cterm=NONE gui=NONE
hi Ignore ctermfg=241 ctermbg=NONE guifg=#72645f guibg=NONE guisp=NONE cterm=NONE gui=NONE
hi! link Include PreProc
hi! link Keyword Statement
hi! link Label Statement
hi! link Macro PreProc
hi! link Number Constant
hi! link Operator Statement
hi! link PreCondit PreProc
hi PreProc ctermfg=241 ctermbg=NONE guifg=#72645f guibg=NONE guisp=NONE cterm=NONE gui=NONE
hi! link Repeat Statement
hi Special ctermfg=241 ctermbg=NONE guifg=#72645f guibg=NONE guisp=NONE cterm=NONE gui=NONE
hi! link SpecialChar Special
hi! link SpecialComment Comment
hi Statement ctermfg=241 ctermbg=NONE guifg=#72645f guibg=NONE guisp=NONE cterm=NONE gui=NONE
hi! link StorageClass Type
hi String ctermfg=25 ctermbg=NONE guifg=#0067c2 guibg=NONE guisp=NONE cterm=NONE gui=NONE
hi! link Structure Type
hi! link Tag Special
hi Todo ctermfg=202 ctermbg=NONE guifg=#e96c3e guibg=NONE guisp=NONE cterm=NONE gui=NONE
hi Type ctermfg=241 ctermbg=NONE guifg=#72645f guibg=NONE guisp=NONE cterm=NONE gui=NONE
hi! link Typedef Type
hi Underlined ctermfg=241 ctermbg=NONE guifg=#72645f guibg=NONE guisp=NONE cterm=NONE gui=NONE
hi! link lCursor Cursor
hi CursorIM ctermfg=NONE ctermbg=fg guifg=NONE guibg=fg guisp=NONE cterm=NONE gui=NONE
hi ToolbarLine ctermfg=NONE ctermbg=NONE guifg=NONE guibg=NONE guisp=NONE cterm=NONE gui=NONE
hi ToolbarButton ctermfg=241 ctermbg=NONE guifg=#72645f guibg=NONE guisp=NONE cterm=NONE gui=NONE
let g:terminal_color_0    = "#72645f"
let g:terminal_color_8    = "#9f918c"
let g:terminal_color_1    = "#e96c3e"
let g:terminal_color_9    = "#e96c3e"
let g:terminal_color_2    = "#336f15"
let g:terminal_color_10   = "#336f15"
let g:terminal_color_3    = "#0067c2"
let g:terminal_color_11   = "#0067c2"
let g:terminal_color_4    = "#af0bc1"
let g:terminal_color_12   = "#af0bc1"
let g:terminal_color_5    = "#72645f"
let g:terminal_color_13   = "#72645f"
let g:terminal_color_6    = "#72645f"
let g:terminal_color_14   = "#72645f"
let g:terminal_color_7    = "#efeae5"
let g:terminal_color_15   = "#ffffff"
finish

" Background: light
" Color: black                   #72645f    ~
" Color: red                     #d50711    ~
" Color: green                   #336f15    ~
" Color: purple                  #af0bc1    ~
" Color: blue                    #0067c2    ~
" Color: white                   #efeae5    ~
" Color: brightblack             #9f918c    ~
" Color: brightwhite             #ffffff    ~
" Color: orange                  #e96c3e    ~
" Color: brown                   #7a6b66    ~
" Color: brightestblack          #d2bdb7    ~
" Normal               black                 white
" Terminal             black                 white
" ColorColumn          black                 none
" Conceal              brightblack             none
" Cursor               black                 none
" CursorColumn         none                       brightwhite
" CursorLine           none                       brightwhite 
" CursorLineNr         none                       brightwhite
" DiffAdd              green                      none
" diffAdded   -> DiffAdd
" DiffChange           purple none
" diffChanged -> DiffChange
" DiffDelete           red    none
" diffRemoved -> DiffDelete
" DiffText             blue                       none
" Directory            black                 none
" EndOfBuffer          brightblack             none
" ErrorMsg             red                        none
" FoldColumn           brightblack             none
" Folded               brightestblack    none
" IncSearch            brightwhite                      orange
" Search               none                       brightwhite
" LineNr               brightestblack    none
" MatchParen           none                       none            underline bold
" ModeMsg              black                 none
" MoreMsg              black                 none
" NonText              black                 none
" Pmenu                black                 brightwhite
" PmenuSbar            black                 brown
" PmenuSel             orange                     brightwhite
" PmenuThumb           black                 brightwhite
" Question             black                 none
" QuickFixLine     ->  Search
" SignColumn           black                 white
" SpecialKey           black                 none
" SpellBad             red                        none
" SpellCap             purple                     none
" SpellLocal           black                 none
" SpellRare            black                 none
" StatusLine           brightwhite                      brown
" StatusLineNC         brightblack             brightwhite
" StatusLineTerm   ->  StatusLine
" StatusLineTermNC ->  StatusLineNC
" TabLine              black                 brightwhite
" TabLineFill          none                       brightwhite
" TabLineSel           brightwhite                      brown
" Title                none                       none
" VertSplit            brightblack             none
" Visual               none                       brightwhite
" VisualNOS            none                       brightwhite
" WarningMsg           black                 none
" WildMenu             orange                     brightwhite
" Boolean        ->    Constant
" Character      ->    Constant
" Comment              orange                     none
" Conditional    ->    Statement
" Constant             black                 none
" Define         ->    PreProc
" Debug          ->    Special
" Delimiter      ->    Special
" Error                red                        none
" Exception      ->    Statement
" Float          ->    Constant
" Function       ->    Identifier
" Identifier           black                 none
" Ignore               black                 none
" Include        ->    PreProc
" Keyword        ->    Statement
" Label          ->    Statement
" Macro          ->    PreProc
" Number         ->    Constant
" Operator       ->    Statement
" PreCondit      ->    PreProc
" PreProc              black                 none
" Repeat         ->    Statement
" Special              black                 none
" SpecialChar    ->    Special
" SpecialComment ->    Comment
" Statement            black                 none
" StorageClass   ->    Type
" String               blue                       none
" Structure      ->    Type
" Tag            ->    Special
" Todo                 orange                     none
" Type                 black                 none
" Typedef        ->    Type
" Underlined           black                 none
" lCursor          ->  Cursor
" CursorIM             none                       fg
" ToolbarLine          none                       none
" ToolbarButton        black                 none
