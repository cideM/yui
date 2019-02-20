" Name:         Yui
" Author:       Florian B <yuuki@protonmail.com>
" Maintainer:   Florian B <yuuki@protonmail.com>
" License:      Vim License (see `:help license`)
" Last Updated: Wed Feb 20 13:51:31 2019

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

hi ALEErrorSign ctermfg=196 ctermbg=NONE guifg=#e04d24 guibg=NONE guisp=NONE cterm=NONE gui=NONE
hi ALEWarningSign ctermfg=222 ctermbg=NONE guifg=#f9df8b guibg=NONE guisp=NONE cterm=NONE gui=NONE
hi Normal ctermfg=251 ctermbg=234 guifg=#c3c3c3 guibg=#202020 guisp=NONE cterm=NONE gui=NONE
hi Terminal ctermfg=251 ctermbg=234 guifg=#c3c3c3 guibg=#202020 guisp=NONE cterm=NONE gui=NONE
hi ColorColumn ctermfg=fg ctermbg=NONE guifg=fg guibg=NONE guisp=NONE cterm=NONE gui=NONE
hi Conceal ctermfg=243 ctermbg=NONE guifg=#737373 guibg=NONE guisp=NONE cterm=NONE gui=NONE
hi Cursor ctermfg=251 ctermbg=NONE guifg=#c3c3c3 guibg=NONE guisp=NONE cterm=NONE gui=NONE
hi CursorColumn ctermfg=NONE ctermbg=238 guifg=NONE guibg=#404040 guisp=NONE cterm=NONE gui=NONE
hi CursorLine ctermfg=NONE ctermbg=NONE guifg=NONE guibg=NONE guisp=NONE cterm=NONE,underline gui=NONE,underline
hi CursorLineNr ctermfg=NONE ctermbg=NONE guifg=NONE guibg=NONE guisp=NONE cterm=NONE,underline gui=NONE,underline
hi DiffAdd ctermfg=79 ctermbg=NONE guifg=#57d8a7 guibg=NONE guisp=NONE cterm=NONE gui=NONE
hi! link diffAdded DiffAdd
hi DiffChange ctermfg=222 ctermbg=NONE guifg=#f9df8b guibg=NONE guisp=NONE cterm=NONE gui=NONE
hi! link diffChanged DiffChange
hi DiffDelete ctermfg=196 ctermbg=NONE guifg=#e04d24 guibg=NONE guisp=NONE cterm=NONE gui=NONE
hi! link diffRemoved DiffDelete
hi DiffText ctermfg=111 ctermbg=NONE guifg=#8fbcff guibg=NONE guisp=NONE cterm=NONE gui=NONE
hi Directory ctermfg=251 ctermbg=NONE guifg=#c3c3c3 guibg=NONE guisp=NONE cterm=NONE gui=NONE
hi EndOfBuffer ctermfg=243 ctermbg=NONE guifg=#737373 guibg=NONE guisp=NONE cterm=NONE gui=NONE
hi ErrorMsg ctermfg=196 ctermbg=NONE guifg=#e04d24 guibg=NONE guisp=NONE cterm=NONE gui=NONE
hi FoldColumn ctermfg=243 ctermbg=NONE guifg=#737373 guibg=NONE guisp=NONE cterm=NONE gui=NONE
hi Folded ctermfg=243 ctermbg=NONE guifg=#737373 guibg=NONE guisp=NONE cterm=NONE gui=NONE
hi IncSearch ctermfg=234 ctermbg=231 guifg=#202020 guibg=#ffffff guisp=NONE cterm=NONE gui=NONE
hi Search ctermfg=231 ctermbg=243 guifg=#ffffff guibg=#737373 guisp=NONE cterm=NONE gui=NONE
hi LineNr ctermfg=243 ctermbg=NONE guifg=#737373 guibg=NONE guisp=NONE cterm=NONE gui=NONE
hi MatchParen ctermfg=231 ctermbg=NONE guifg=#ffffff guibg=NONE guisp=NONE cterm=NONE,underline gui=NONE,underline
hi ModeMsg ctermfg=251 ctermbg=NONE guifg=#c3c3c3 guibg=NONE guisp=NONE cterm=NONE gui=NONE
hi MoreMsg ctermfg=251 ctermbg=NONE guifg=#c3c3c3 guibg=NONE guisp=NONE cterm=NONE gui=NONE
hi NonText ctermfg=251 ctermbg=NONE guifg=#c3c3c3 guibg=NONE guisp=NONE cterm=NONE gui=NONE
hi Pmenu ctermfg=251 ctermbg=238 guifg=#c3c3c3 guibg=#404040 guisp=NONE cterm=NONE gui=NONE
hi PmenuSbar ctermfg=251 ctermbg=238 guifg=#c3c3c3 guibg=#404040 guisp=NONE cterm=NONE gui=NONE
hi PmenuSel ctermfg=234 ctermbg=251 guifg=#202020 guibg=#c3c3c3 guisp=NONE cterm=NONE gui=NONE
hi PmenuThumb ctermfg=251 ctermbg=238 guifg=#c3c3c3 guibg=#404040 guisp=NONE cterm=NONE gui=NONE
hi Question ctermfg=251 ctermbg=NONE guifg=#c3c3c3 guibg=NONE guisp=NONE cterm=NONE gui=NONE
hi! link QuickFixLine Search
hi SignColumn ctermfg=251 ctermbg=234 guifg=#c3c3c3 guibg=#202020 guisp=NONE cterm=NONE gui=NONE
hi SpecialKey ctermfg=251 ctermbg=NONE guifg=#c3c3c3 guibg=NONE guisp=NONE cterm=NONE gui=NONE
hi SpellBad ctermfg=196 ctermbg=NONE guifg=#e04d24 guibg=NONE guisp=NONE cterm=NONE gui=NONE
hi SpellCap ctermfg=222 ctermbg=NONE guifg=#f9df8b guibg=NONE guisp=NONE cterm=NONE gui=NONE
hi SpellLocal ctermfg=251 ctermbg=NONE guifg=#c3c3c3 guibg=NONE guisp=NONE cterm=NONE gui=NONE
hi SpellRare ctermfg=251 ctermbg=NONE guifg=#c3c3c3 guibg=NONE guisp=NONE cterm=NONE gui=NONE
hi StatusLine ctermfg=234 ctermbg=231 guifg=#202020 guibg=#ffffff guisp=NONE cterm=NONE gui=NONE
hi StatusLineNC ctermfg=234 ctermbg=251 guifg=#202020 guibg=#c3c3c3 guisp=NONE cterm=NONE gui=NONE
hi! link StatusLineTerm StatusLine
hi! link StatusLineTermNC StatusLineNC
hi TabLine ctermfg=251 ctermbg=NONE guifg=#c3c3c3 guibg=NONE guisp=NONE cterm=NONE gui=NONE
hi TabLineFill ctermfg=251 ctermbg=NONE guifg=#c3c3c3 guibg=NONE guisp=NONE cterm=NONE gui=NONE
hi TabLineSel ctermfg=234 ctermbg=231 guifg=#202020 guibg=#ffffff guisp=NONE cterm=NONE gui=NONE
hi Title ctermfg=251 ctermbg=NONE guifg=#c3c3c3 guibg=NONE guisp=NONE cterm=NONE gui=NONE
hi VertSplit ctermfg=243 ctermbg=NONE guifg=#737373 guibg=NONE guisp=NONE cterm=NONE gui=NONE
hi Visual ctermfg=234 ctermbg=251 guifg=#202020 guibg=#c3c3c3 guisp=NONE cterm=NONE gui=NONE
hi VisualNOS ctermfg=251 ctermbg=NONE guifg=#c3c3c3 guibg=NONE guisp=NONE cterm=NONE gui=NONE
hi WarningMsg ctermfg=251 ctermbg=NONE guifg=#c3c3c3 guibg=NONE guisp=NONE cterm=NONE gui=NONE
hi WildMenu ctermfg=234 ctermbg=231 guifg=#202020 guibg=#ffffff guisp=NONE cterm=NONE,bold,reverse gui=NONE,bold,reverse
hi! link Boolean Constant
hi! link Character Constant
hi Comment ctermfg=143 ctermbg=NONE guifg=#a7b544 guibg=NONE guisp=NONE cterm=NONE,italic gui=NONE,italic
hi! link Conditional Statement
hi Constant ctermfg=251 ctermbg=NONE guifg=#c3c3c3 guibg=NONE guisp=NONE cterm=NONE gui=NONE
hi! link Define PreProc
hi! link Debug Special
hi! link Delimiter Special
hi Error ctermfg=196 ctermbg=NONE guifg=#e04d24 guibg=NONE guisp=NONE cterm=NONE gui=NONE
hi! link Exception Statement
hi! link Float Constant
hi! link Function Identifier
hi Identifier ctermfg=251 ctermbg=NONE guifg=#c3c3c3 guibg=NONE guisp=NONE cterm=NONE gui=NONE
hi Ignore ctermfg=251 ctermbg=NONE guifg=#c3c3c3 guibg=NONE guisp=NONE cterm=NONE gui=NONE
hi! link Include PreProc
hi! link Keyword Statement
hi! link Label Statement
hi! link Macro PreProc
hi! link Number Constant
hi! link Operator Statement
hi! link PreCondit PreProc
hi PreProc ctermfg=251 ctermbg=NONE guifg=#c3c3c3 guibg=NONE guisp=NONE cterm=NONE gui=NONE
hi! link Repeat Statement
hi Special ctermfg=251 ctermbg=NONE guifg=#c3c3c3 guibg=NONE guisp=NONE cterm=NONE gui=NONE
hi! link SpecialChar Special
hi! link SpecialComment Comment
hi Statement ctermfg=251 ctermbg=NONE guifg=#c3c3c3 guibg=NONE guisp=NONE cterm=NONE gui=NONE
hi! link StorageClass Type
hi String ctermfg=231 ctermbg=NONE guifg=#ffffff guibg=NONE guisp=NONE cterm=NONE,italic gui=NONE,italic
hi! link Structure Type
hi! link Tag Special
hi Todo ctermfg=143 ctermbg=NONE guifg=#a7b544 guibg=NONE guisp=NONE cterm=NONE,italic,underline gui=NONE,italic,underline
hi Type ctermfg=251 ctermbg=NONE guifg=#c3c3c3 guibg=NONE guisp=NONE cterm=NONE gui=NONE
hi! link Typedef Type
hi Underlined ctermfg=251 ctermbg=NONE guifg=#c3c3c3 guibg=NONE guisp=NONE cterm=NONE gui=NONE
hi! link lCursor Cursor
hi CursorIM ctermfg=NONE ctermbg=fg guifg=NONE guibg=fg guisp=NONE cterm=NONE gui=NONE
hi ToolbarLine ctermfg=NONE ctermbg=NONE guifg=NONE guibg=NONE guisp=NONE cterm=NONE gui=NONE
hi ToolbarButton ctermfg=251 ctermbg=NONE guifg=#c3c3c3 guibg=NONE guisp=NONE cterm=NONE gui=NONE
finish

" Background: dark
" Color: background         #202020    ~
" Color: background_alt     #404040    ~
" Color: foreground         #c3c3c3    ~
" Color: foreground_alt     #737373    ~
" Color: red                #e04d24    ~
" Color: white              #ffffff    ~
" Color: green              #57d8a7    ~
" Color: yellow             #f9df8b    ~
" Color: comment            #a7b544    ~
" Color: blue               #8fbcff    ~
" ALEErrorSign         red                        none
" ALEWarningSign       yellow                     none
" Normal               foreground                 background
" Terminal             foreground                 background
" ColorColumn          fg                         none
" Conceal              foreground_alt             none
" Cursor               foreground                 none
" CursorColumn         none                       background_alt
" CursorLine           none                       none underline
" CursorLineNr         none                       none underline
" DiffAdd              green                      none
" diffAdded   -> DiffAdd
" DiffChange           yellow none
" diffChanged -> DiffChange
" DiffDelete           red    none
" diffRemoved -> DiffDelete
" DiffText             blue                       none
" Directory            foreground                 none
" EndOfBuffer          foreground_alt             none
" ErrorMsg             red                        none
" FoldColumn           foreground_alt             none
" Folded               foreground_alt             none
" IncSearch            background                 white
" Search               white                      foreground_alt
" LineNr               foreground_alt             none
" MatchParen           white                      none            underline
" ModeMsg              foreground                 none
" MoreMsg              foreground                 none
" NonText              foreground                 none
" Pmenu                foreground                 background_alt
" PmenuSbar            foreground                 background_alt
" PmenuSel             background                 foreground
" PmenuThumb           foreground                 background_alt
" Question             foreground                 none
" QuickFixLine     ->  Search
" SignColumn           foreground                 background
" SpecialKey           foreground                 none
" SpellBad             red                        none
" SpellCap             yellow                     none
" SpellLocal           foreground                 none
" SpellRare            foreground                 none
" StatusLine           background                 white
" StatusLineNC         background                 foreground
" StatusLineTerm   ->  StatusLine
" StatusLineTermNC ->  StatusLineNC
" TabLine              foreground                 none
" TabLineFill          foreground                 none
" TabLineSel           background                 white
" Title                foreground                 none
" VertSplit            foreground_alt             none
" Visual               background                 foreground
" VisualNOS            foreground                 none
" WarningMsg           foreground                 none
" WildMenu             background                 white  bold reverse
" Boolean        ->    Constant
" Character      ->    Constant
" Comment              comment                      none            italic
" Conditional    ->    Statement
" Constant             foreground                 none
" Define         ->    PreProc
" Debug          ->    Special
" Delimiter      ->    Special
" Error                red                 none
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
" String               white                      none italic
" Structure      ->    Type
" Tag            ->    Special
" Todo                 comment                       none italic underline
" Type                 foreground                 none
" Typedef        ->    Type
" Underlined           foreground                 none
" lCursor          ->  Cursor
" CursorIM             none                       fg
" ToolbarLine          none                       none
" ToolbarButton        foreground                 none
