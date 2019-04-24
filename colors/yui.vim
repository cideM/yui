" Name:         Yui
" Author:       Florian B <yuuki@protonmail.com>
" Maintainer:   Florian B <yuuki@protonmail.com>
" License:      Vim License (see `:help license`)
" Last Updated: Wed Apr 24 20:14:33 2019

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

hi Normal ctermfg=238 ctermbg=255 guifg=#404040 guibg=#efeae5 guisp=NONE cterm=NONE gui=NONE
hi Terminal ctermfg=238 ctermbg=255 guifg=#404040 guibg=#efeae5 guisp=NONE cterm=NONE gui=NONE
hi ColorColumn ctermfg=238 ctermbg=NONE guifg=#404040 guibg=NONE guisp=NONE cterm=NONE gui=NONE
hi Conceal ctermfg=243 ctermbg=NONE guifg=#737373 guibg=NONE guisp=NONE cterm=NONE gui=NONE
hi Cursor ctermfg=238 ctermbg=NONE guifg=#404040 guibg=NONE guisp=NONE cterm=NONE gui=NONE
hi CursorColumn ctermfg=NONE ctermbg=255 guifg=NONE guibg=#f3f2ec guisp=NONE cterm=NONE gui=NONE
hi CursorLine ctermfg=NONE ctermbg=255 guifg=NONE guibg=#f3f2ec guisp=NONE cterm=NONE gui=NONE
hi CursorLineNr ctermfg=NONE ctermbg=255 guifg=NONE guibg=#f3f2ec guisp=NONE cterm=NONE gui=NONE
hi DiffAdd ctermfg=29 ctermbg=NONE guifg=#007a41 guibg=NONE guisp=NONE cterm=NONE gui=NONE
hi! link diffAdded DiffAdd
hi DiffChange ctermfg=127 ctermbg=NONE guifg=#af0bc1 guibg=NONE guisp=NONE cterm=NONE gui=NONE
hi! link diffChanged DiffChange
hi DiffDelete ctermfg=160 ctermbg=NONE guifg=#d50711 guibg=NONE guisp=NONE cterm=NONE gui=NONE
hi! link diffRemoved DiffDelete
hi DiffText ctermfg=25 ctermbg=NONE guifg=#0067c2 guibg=NONE guisp=NONE cterm=NONE gui=NONE
hi Directory ctermfg=238 ctermbg=NONE guifg=#404040 guibg=NONE guisp=NONE cterm=NONE gui=NONE
hi EndOfBuffer ctermfg=243 ctermbg=NONE guifg=#737373 guibg=NONE guisp=NONE cterm=NONE gui=NONE
hi ErrorMsg ctermfg=160 ctermbg=NONE guifg=#d50711 guibg=NONE guisp=NONE cterm=NONE gui=NONE
hi FoldColumn ctermfg=243 ctermbg=NONE guifg=#737373 guibg=NONE guisp=NONE cterm=NONE gui=NONE
hi Folded ctermfg=243 ctermbg=NONE guifg=#737373 guibg=NONE guisp=NONE cterm=NONE gui=NONE
hi IncSearch ctermfg=231 ctermbg=202 guifg=#ffffff guibg=#e96c3e guisp=NONE cterm=NONE gui=NONE
hi Search ctermfg=NONE ctermbg=231 guifg=NONE guibg=#ffffff guisp=NONE cterm=NONE gui=NONE
hi LineNr ctermfg=NONE ctermbg=NONE guifg=NONE guibg=NONE guisp=NONE cterm=NONE gui=NONE
hi MatchParen ctermfg=NONE ctermbg=NONE guifg=NONE guibg=NONE guisp=NONE cterm=NONE,bold,underline gui=NONE,bold,underline
hi ModeMsg ctermfg=238 ctermbg=NONE guifg=#404040 guibg=NONE guisp=NONE cterm=NONE gui=NONE
hi MoreMsg ctermfg=238 ctermbg=NONE guifg=#404040 guibg=NONE guisp=NONE cterm=NONE gui=NONE
hi NonText ctermfg=238 ctermbg=NONE guifg=#404040 guibg=NONE guisp=NONE cterm=NONE gui=NONE
hi Pmenu ctermfg=238 ctermbg=231 guifg=#404040 guibg=#ffffff guisp=NONE cterm=NONE gui=NONE
hi PmenuSbar ctermfg=238 ctermbg=249 guifg=#404040 guibg=#bbb5af guisp=NONE cterm=NONE gui=NONE
hi PmenuSel ctermfg=202 ctermbg=231 guifg=#e96c3e guibg=#ffffff guisp=NONE cterm=NONE gui=NONE
hi PmenuThumb ctermfg=238 ctermbg=231 guifg=#404040 guibg=#ffffff guisp=NONE cterm=NONE gui=NONE
hi Question ctermfg=238 ctermbg=NONE guifg=#404040 guibg=NONE guisp=NONE cterm=NONE gui=NONE
hi! link QuickFixLine Search
hi SignColumn ctermfg=238 ctermbg=255 guifg=#404040 guibg=#efeae5 guisp=NONE cterm=NONE gui=NONE
hi SpecialKey ctermfg=238 ctermbg=NONE guifg=#404040 guibg=NONE guisp=NONE cterm=NONE gui=NONE
hi SpellBad ctermfg=160 ctermbg=NONE guifg=#d50711 guibg=NONE guisp=NONE cterm=NONE gui=NONE
hi SpellCap ctermfg=127 ctermbg=NONE guifg=#af0bc1 guibg=NONE guisp=NONE cterm=NONE gui=NONE
hi SpellLocal ctermfg=238 ctermbg=NONE guifg=#404040 guibg=NONE guisp=NONE cterm=NONE gui=NONE
hi SpellRare ctermfg=238 ctermbg=NONE guifg=#404040 guibg=NONE guisp=NONE cterm=NONE gui=NONE
hi StatusLine ctermfg=231 ctermbg=242 guifg=#ffffff guibg=#7a6b66 guisp=NONE cterm=NONE gui=NONE
hi StatusLineNC ctermfg=243 ctermbg=231 guifg=#737373 guibg=#ffffff guisp=NONE cterm=NONE gui=NONE
hi! link StatusLineTerm StatusLine
hi! link StatusLineTermNC StatusLineNC
hi TabLine ctermfg=238 ctermbg=231 guifg=#404040 guibg=#ffffff guisp=NONE cterm=NONE gui=NONE
hi TabLineFill ctermfg=NONE ctermbg=231 guifg=NONE guibg=#ffffff guisp=NONE cterm=NONE gui=NONE
hi TabLineSel ctermfg=231 ctermbg=242 guifg=#ffffff guibg=#7a6b66 guisp=NONE cterm=NONE gui=NONE
hi Title ctermfg=NONE ctermbg=NONE guifg=NONE guibg=NONE guisp=NONE cterm=NONE gui=NONE
hi VertSplit ctermfg=243 ctermbg=NONE guifg=#737373 guibg=NONE guisp=NONE cterm=NONE gui=NONE
hi Visual ctermfg=16 ctermbg=231 guifg=#000000 guibg=#ffffff guisp=NONE cterm=NONE gui=NONE
hi VisualNOS ctermfg=16 ctermbg=231 guifg=#000000 guibg=#ffffff guisp=NONE cterm=NONE gui=NONE
hi WarningMsg ctermfg=238 ctermbg=NONE guifg=#404040 guibg=NONE guisp=NONE cterm=NONE gui=NONE
hi WildMenu ctermfg=202 ctermbg=231 guifg=#e96c3e guibg=#ffffff guisp=NONE cterm=NONE gui=NONE
hi! link Boolean Constant
hi! link Character Constant
hi Comment ctermfg=202 ctermbg=NONE guifg=#e96c3e guibg=NONE guisp=NONE cterm=NONE gui=NONE
hi! link Conditional Statement
hi Constant ctermfg=238 ctermbg=NONE guifg=#404040 guibg=NONE guisp=NONE cterm=NONE gui=NONE
hi! link Define PreProc
hi! link Debug Special
hi! link Delimiter Special
hi Error ctermfg=160 ctermbg=NONE guifg=#d50711 guibg=NONE guisp=NONE cterm=NONE gui=NONE
hi! link Exception Statement
hi! link Float Constant
hi! link Function Identifier
hi Identifier ctermfg=238 ctermbg=NONE guifg=#404040 guibg=NONE guisp=NONE cterm=NONE gui=NONE
hi Ignore ctermfg=238 ctermbg=NONE guifg=#404040 guibg=NONE guisp=NONE cterm=NONE gui=NONE
hi! link Include PreProc
hi! link Keyword Statement
hi! link Label Statement
hi! link Macro PreProc
hi! link Number Constant
hi! link Operator Statement
hi! link PreCondit PreProc
hi PreProc ctermfg=238 ctermbg=NONE guifg=#404040 guibg=NONE guisp=NONE cterm=NONE gui=NONE
hi! link Repeat Statement
hi Special ctermfg=238 ctermbg=NONE guifg=#404040 guibg=NONE guisp=NONE cterm=NONE gui=NONE
hi! link SpecialChar Special
hi! link SpecialComment Comment
hi Statement ctermfg=238 ctermbg=NONE guifg=#404040 guibg=NONE guisp=NONE cterm=NONE gui=NONE
hi! link StorageClass Type
hi String ctermfg=25 ctermbg=NONE guifg=#0067c2 guibg=NONE guisp=NONE cterm=NONE gui=NONE
hi! link Structure Type
hi! link Tag Special
hi Todo ctermfg=202 ctermbg=NONE guifg=#e96c3e guibg=NONE guisp=NONE cterm=NONE gui=NONE
hi Type ctermfg=238 ctermbg=NONE guifg=#404040 guibg=NONE guisp=NONE cterm=NONE gui=NONE
hi! link Typedef Type
hi Underlined ctermfg=238 ctermbg=NONE guifg=#404040 guibg=NONE guisp=NONE cterm=NONE gui=NONE
hi! link lCursor Cursor
hi CursorIM ctermfg=NONE ctermbg=fg guifg=NONE guibg=fg guisp=NONE cterm=NONE gui=NONE
hi ToolbarLine ctermfg=NONE ctermbg=NONE guifg=NONE guibg=NONE guisp=NONE cterm=NONE gui=NONE
hi ToolbarButton ctermfg=238 ctermbg=NONE guifg=#404040 guibg=NONE guisp=NONE cterm=NONE gui=NONE
finish

" Background: light
" Color: background         #efeae5    ~
" Color: background_alt     #f3f2ec    ~
" Color: status_active      #7a6b66    ~
" Color: status_inactive    #bbb5af    ~
" Color: foreground         #404040    ~
" Color: foreground_alt     #737373    ~
" Color: red                #d50711    ~
" Color: white              #ffffff    ~
" Color: green              #007a41    ~
" Color: orange             #e96c3e    ~
" Color: blue               #0067c2    ~
" Color: purple             #af0bc1    ~
" Color: black              #000000    ~
" Normal               foreground                 background
" Terminal             foreground                 background
" ColorColumn          foreground                 none
" Conceal              foreground_alt             none
" Cursor               foreground                 none
" CursorColumn         none                       background_alt
" CursorLine           none                       background_alt 
" CursorLineNr         none                       background_alt
" DiffAdd              green                      none
" diffAdded   -> DiffAdd
" DiffChange           purple none
" diffChanged -> DiffChange
" DiffDelete           red    none
" diffRemoved -> DiffDelete
" DiffText             blue                       none
" Directory            foreground                 none
" EndOfBuffer          foreground_alt             none
" ErrorMsg             red                        none
" FoldColumn           foreground_alt             none
" Folded               foreground_alt             none
" IncSearch            white                      orange
" Search               none                       white
" LineNr               none                       none
" MatchParen           none                       none            underline bold
" ModeMsg              foreground                 none
" MoreMsg              foreground                 none
" NonText              foreground                 none
" Pmenu                foreground                 white
" PmenuSbar            foreground                 status_inactive
" PmenuSel             orange                     white
" PmenuThumb           foreground                 white
" Question             foreground                 none
" QuickFixLine     ->  Search
" SignColumn           foreground                 background
" SpecialKey           foreground                 none
" SpellBad             red                        none
" SpellCap             purple                     none
" SpellLocal           foreground                 none
" SpellRare            foreground                 none
" StatusLine           white                      status_active
" StatusLineNC         foreground_alt             white
" StatusLineTerm   ->  StatusLine
" StatusLineTermNC ->  StatusLineNC
" TabLine              foreground                 white
" TabLineFill          none                       white
" TabLineSel           white                      status_active
" Title                none                       none
" VertSplit            foreground_alt             none
" Visual               black                      white
" VisualNOS            black                      white
" WarningMsg           foreground                 none
" WildMenu             orange                     white
" Boolean        ->    Constant
" Character      ->    Constant
" Comment              orange                     none
" Conditional    ->    Statement
" Constant             foreground                 none
" Define         ->    PreProc
" Debug          ->    Special
" Delimiter      ->    Special
" Error                red                        none
" Exception      ->    Statement
" Float          ->    Constant
" Function       ->    Identifier
" Identifier           foreground                 none
" Ignore               foreground                 none
" Include        ->    PreProc
" Keyword        ->    Statement
" Label          ->    Statement
" Macro          ->    PreProc
" Number         ->    Constant
" Operator       ->    Statement
" PreCondit      ->    PreProc
" PreProc              foreground                 none
" Repeat         ->    Statement
" Special              foreground                 none
" SpecialChar    ->    Special
" SpecialComment ->    Comment
" Statement            foreground                 none
" StorageClass   ->    Type
" String               blue                       none
" Structure      ->    Type
" Tag            ->    Special
" Todo                 orange                     none
" Type                 foreground                 none
" Typedef        ->    Type
" Underlined           foreground                 none
" lCursor          ->  Cursor
" CursorIM             none                       fg
" ToolbarLine          none                       none
" ToolbarButton        foreground                 none
