" Name:         Yui
" Author:       Florian B <yuuki@protonmail.com>
" Maintainer:   Florian B <yuuki@protonmail.com>
" License:      Vim License (see `:help license`)
" Last Updated: Sat 04 May 2019 03:30:45 PM CEST

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
hi DiffAdd ctermfg=NONE ctermbg=194 guifg=NONE guibg=#e8ffd1 guisp=NONE cterm=NONE gui=NONE
hi! link diffAdded DiffAdd
hi DiffChange ctermfg=NONE ctermbg=229 guifg=NONE guibg=#f9ffa3 guisp=NONE cterm=NONE gui=NONE
hi! link diffChanged DiffChange
hi DiffDelete ctermfg=NONE ctermbg=224 guifg=NONE guibg=#ffe5db guisp=NONE cterm=NONE gui=NONE
hi! link diffRemoved DiffDelete
hi DiffText ctermfg=NONE ctermbg=255 guifg=NONE guibg=#e0f3ff guisp=NONE cterm=NONE gui=NONE
hi Directory ctermfg=241 ctermbg=NONE guifg=#72645f guibg=NONE guisp=NONE cterm=NONE gui=NONE
hi EndOfBuffer ctermfg=246 ctermbg=NONE guifg=#9f918c guibg=NONE guisp=NONE cterm=NONE gui=NONE
hi ErrorMsg ctermfg=NONE ctermbg=224 guifg=NONE guibg=#ffe5db guisp=NONE cterm=NONE gui=NONE
hi FoldColumn ctermfg=246 ctermbg=NONE guifg=#9f918c guibg=NONE guisp=NONE cterm=NONE gui=NONE
hi Folded ctermfg=181 ctermbg=NONE guifg=#d2bdb7 guibg=NONE guisp=NONE cterm=NONE gui=NONE
hi IncSearch ctermfg=231 ctermbg=202 guifg=#ffffff guibg=#e96c3e guisp=NONE cterm=NONE gui=NONE
hi Search ctermfg=202 ctermbg=231 guifg=#e96c3e guibg=#ffffff guisp=NONE cterm=NONE gui=NONE
hi LineNr ctermfg=181 ctermbg=NONE guifg=#d2bdb7 guibg=NONE guisp=NONE cterm=NONE gui=NONE
hi MatchParen ctermfg=NONE ctermbg=NONE guifg=NONE guibg=NONE guisp=NONE cterm=NONE,bold,underline gui=NONE,bold,underline
hi ModeMsg ctermfg=241 ctermbg=NONE guifg=#72645f guibg=NONE guisp=NONE cterm=NONE gui=NONE
hi MoreMsg ctermfg=241 ctermbg=NONE guifg=#72645f guibg=NONE guisp=NONE cterm=NONE gui=NONE
hi NonText ctermfg=241 ctermbg=NONE guifg=#72645f guibg=NONE guisp=NONE cterm=NONE gui=NONE
hi Pmenu ctermfg=241 ctermbg=231 guifg=#72645f guibg=#ffffff guisp=NONE cterm=NONE gui=NONE
hi PmenuSbar ctermfg=231 ctermbg=241 guifg=#ffffff guibg=#72645f guisp=NONE cterm=NONE gui=NONE
hi PmenuSel ctermfg=202 ctermbg=231 guifg=#e96c3e guibg=#ffffff guisp=NONE cterm=NONE gui=NONE
hi PmenuThumb ctermfg=241 ctermbg=231 guifg=#72645f guibg=#ffffff guisp=NONE cterm=NONE gui=NONE
hi Question ctermfg=241 ctermbg=NONE guifg=#72645f guibg=NONE guisp=NONE cterm=NONE gui=NONE
hi! link QuickFixLine Search
hi SignColumn ctermfg=241 ctermbg=255 guifg=#72645f guibg=#efeae5 guisp=NONE cterm=NONE gui=NONE
hi SpecialKey ctermfg=241 ctermbg=NONE guifg=#72645f guibg=NONE guisp=NONE cterm=NONE gui=NONE
hi SpellBad ctermfg=NONE ctermbg=224 guifg=NONE guibg=#ffe5db guisp=NONE cterm=NONE gui=NONE
hi SpellCap ctermfg=NONE ctermbg=NONE guifg=NONE guibg=NONE guisp=NONE cterm=NONE,undercurl gui=NONE,undercurl
hi SpellLocal ctermfg=241 ctermbg=NONE guifg=#72645f guibg=NONE guisp=NONE cterm=NONE gui=NONE
hi SpellRare ctermfg=241 ctermbg=NONE guifg=#72645f guibg=NONE guisp=NONE cterm=NONE gui=NONE
hi StatusLine ctermfg=231 ctermbg=241 guifg=#ffffff guibg=#72645f guisp=NONE cterm=NONE gui=NONE
hi StatusLineNC ctermfg=246 ctermbg=231 guifg=#9f918c guibg=#ffffff guisp=NONE cterm=NONE gui=NONE
hi! link StatusLineTerm StatusLine
hi! link StatusLineTermNC StatusLineNC
hi TabLine ctermfg=241 ctermbg=231 guifg=#72645f guibg=#ffffff guisp=NONE cterm=NONE gui=NONE
hi TabLineFill ctermfg=NONE ctermbg=231 guifg=NONE guibg=#ffffff guisp=NONE cterm=NONE gui=NONE
hi TabLineSel ctermfg=231 ctermbg=241 guifg=#ffffff guibg=#72645f guisp=NONE cterm=NONE gui=NONE
hi Title ctermfg=NONE ctermbg=NONE guifg=NONE guibg=NONE guisp=NONE cterm=NONE gui=NONE
hi VertSplit ctermfg=246 ctermbg=NONE guifg=#9f918c guibg=NONE guisp=NONE cterm=NONE gui=NONE
hi Visual ctermfg=NONE ctermbg=231 guifg=NONE guibg=#ffffff guisp=NONE cterm=NONE gui=NONE
hi VisualNOS ctermfg=NONE ctermbg=231 guifg=NONE guibg=#ffffff guisp=NONE cterm=NONE gui=NONE
hi WarningMsg ctermfg=241 ctermbg=NONE guifg=#72645f guibg=NONE guisp=NONE cterm=NONE gui=NONE
hi WildMenu ctermfg=202 ctermbg=231 guifg=#e96c3e guibg=#ffffff guisp=NONE cterm=NONE gui=NONE
hi! link Boolean Constant
hi! link Character Constant
hi Comment ctermfg=246 ctermbg=NONE guifg=#9f918c guibg=NONE guisp=NONE cterm=NONE,italic gui=NONE,italic
hi! link Conditional Statement
hi Constant ctermfg=241 ctermbg=NONE guifg=#72645f guibg=NONE guisp=NONE cterm=NONE gui=NONE
hi! link Define PreProc
hi! link Debug Special
hi! link Delimiter Special
hi Error ctermfg=NONE ctermbg=224 guifg=NONE guibg=#ffe5db guisp=NONE cterm=NONE,undercurl gui=NONE,undercurl
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
hi String ctermfg=202 ctermbg=NONE guifg=#e96c3e guibg=NONE guisp=NONE cterm=NONE gui=NONE
hi! link Structure Type
hi! link Tag Special
hi Todo ctermfg=NONE ctermbg=NONE guifg=NONE guibg=NONE guisp=NONE cterm=NONE,underline gui=NONE,underline
hi Type ctermfg=241 ctermbg=NONE guifg=#72645f guibg=NONE guisp=NONE cterm=NONE,italic gui=NONE,italic
hi! link Typedef Type
hi Underlined ctermfg=241 ctermbg=NONE guifg=#72645f guibg=NONE guisp=NONE cterm=NONE gui=NONE
hi! link lCursor Cursor
hi CursorIM ctermfg=NONE ctermbg=fg guifg=NONE guibg=fg guisp=NONE cterm=NONE gui=NONE
hi ToolbarLine ctermfg=NONE ctermbg=NONE guifg=NONE guibg=NONE guisp=NONE cterm=NONE gui=NONE
hi ToolbarButton ctermfg=241 ctermbg=NONE guifg=#72645f guibg=NONE guisp=NONE cterm=NONE gui=NONE
" Normal black
let g:terminal_color_0    = "#72645f"
" Red
let g:terminal_color_1    = "#d50711"
" Green
let g:terminal_color_2    = "#336f15"
" Yellow (Theme uses orange because yellow isn't legible on the light background)
let g:terminal_color_3    = "#e96c3e"
" Blue
let g:terminal_color_4    = "#125ea9"

let a = 5

while a <= 256
  execute "let g:terminal_color_" . a . ' = "#72645f"'
  let a += 1
endwhile
finish

" Background: light
" Color: black                   #72645f    ~
" Color: red                     #d50711    ~
" Color: green                   #336f15    ~
" Color: blue                    #125ea9    ~
" Color: green_background        #e8ffd1    ~
" Color: red_background          #ffe5db    ~
" Color: yellow_background       #f9ffa3    ~
" Color: blue_background         #e0f3ff    ~
" Color: white                   #efeae5    ~
" Color: brightblack             #9f918c    ~
" Color: brightwhite             #ffffff    ~
" Color: orange                  #e96c3e    ~
" Color: brightestblack          #d2bdb7    ~
" Normal               black                      white
" Terminal             black                      white
" ColorColumn          black                      none
" Conceal              brightblack                none
" Cursor               black                      none
" CursorColumn         none                       brightwhite
" CursorLine           none                       brightwhite 
" CursorLineNr         none                       brightwhite
" DiffAdd              none                       green_background
" diffAdded   -> DiffAdd
" DiffChange           none                       yellow_background
" diffChanged -> DiffChange
" DiffDelete           none                       red_background    
" diffRemoved -> DiffDelete
" DiffText             none                       blue_background
" Directory            black                      none
" EndOfBuffer          brightblack                none
" ErrorMsg             none                       red_background
" FoldColumn           brightblack                none
" Folded               brightestblack             none
" IncSearch            brightwhite                orange
" Search               orange                     brightwhite
" LineNr               brightestblack             none
" MatchParen           none                       none                           underline,bold
" ModeMsg              black                      none
" MoreMsg              black                      none
" NonText              black                      none
" Pmenu                black                      brightwhite
" PmenuSbar            brightwhite                black
" PmenuSel             orange                     brightwhite
" PmenuThumb           black                      brightwhite
" Question             black                      none
" QuickFixLine     ->  Search
" SignColumn           black                      white
" SpecialKey           black                      none
" SpellBad             none                       red_background
" SpellCap             none                       none                           undercurl
" SpellLocal           black                      none
" SpellRare            black                      none
" StatusLine           brightwhite                black
" StatusLineNC         brightblack                brightwhite
" StatusLineTerm   ->  StatusLine
" StatusLineTermNC ->  StatusLineNC
" TabLine              black                      brightwhite
" TabLineFill          none                       brightwhite
" TabLineSel           brightwhite                black
" Title                none                       none
" VertSplit            brightblack             none
" Visual               none                       brightwhite
" VisualNOS            none                       brightwhite
" WarningMsg           black                 none
" WildMenu             orange                     brightwhite
" Boolean        ->    Constant
" Character      ->    Constant
" Comment              brightblack                 none                          italic
" Conditional    ->    Statement
" Constant             black                       none
" Define         ->    PreProc
" Debug          ->    Special
" Delimiter      ->    Special
" Error                none                        red_background                undercurl
" Exception      ->    Statement
" Float          ->    Constant
" Function       ->    Identifier
" Identifier           black                       none
" Ignore               black                       none
" Include        ->    PreProc
" Keyword        ->    Statement
" Label          ->    Statement
" Macro          ->    PreProc
" Number         ->    Constant
" Operator       ->    Statement
" PreCondit      ->    PreProc
" PreProc              black                       none
" Repeat         ->    Statement
" Special              black                       none
" SpecialChar    ->    Special
" SpecialComment ->    Comment
" Statement            black                       none
" StorageClass   ->    Type
" String               orange                      none
" Structure      ->    Type
" Tag            ->    Special
" Todo                 none                        none                          underline
" Type                 black                       none                          italic
" Typedef        ->    Type
" Underlined           black                       none
" lCursor          ->  Cursor
" CursorIM             none                        fg
" ToolbarLine          none                        none
" ToolbarButton        black                       none
