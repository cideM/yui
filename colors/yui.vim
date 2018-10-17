" Name:         Yui
" Author:       Florian B <yuuki@protonmail.com>
" Maintainer:   Florian B <yuuki@protonmail.com>
" License:      Vim License (see `:help license`)
" Last Updated: Wed Oct 17 23:31:57 2018

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

hi ALEErrorSign ctermfg=196 ctermbg=234 guifg=#e04d24 guibg=#202020 guisp=NONE cterm=NONE gui=NONE
hi ALEWarningSign ctermfg=222 ctermbg=234 guifg=#f9df8b guibg=#202020 guisp=NONE cterm=NONE gui=NONE
hi Normal ctermfg=248 ctermbg=234 guifg=#a6a6a6 guibg=#202020 guisp=NONE cterm=NONE gui=NONE
hi Terminal ctermfg=248 ctermbg=234 guifg=#a6a6a6 guibg=#202020 guisp=NONE cterm=NONE gui=NONE
hi ColorColumn ctermfg=fg ctermbg=NONE guifg=fg guibg=NONE guisp=NONE cterm=NONE gui=NONE
hi Conceal ctermfg=241 ctermbg=NONE guifg=#626262 guibg=NONE guisp=NONE cterm=NONE gui=NONE
hi Cursor ctermfg=248 ctermbg=NONE guifg=#a6a6a6 guibg=NONE guisp=NONE cterm=NONE gui=NONE
hi CursorColumn ctermfg=248 ctermbg=NONE guifg=#a6a6a6 guibg=NONE guisp=NONE cterm=NONE gui=NONE
hi CursorLine ctermfg=248 ctermbg=236 guifg=#a6a6a6 guibg=#303030 guisp=NONE cterm=NONE gui=NONE
hi CursorLineNr ctermfg=248 ctermbg=NONE guifg=#a6a6a6 guibg=NONE guisp=NONE cterm=NONE gui=NONE
hi DiffAdd ctermfg=234 ctermbg=79 guifg=#202020 guibg=#57d8a7 guisp=NONE cterm=NONE gui=NONE
hi DiffChange ctermfg=234 ctermbg=222 guifg=#202020 guibg=#f9df8b guisp=NONE cterm=NONE gui=NONE
hi DiffDelete ctermfg=234 ctermbg=196 guifg=#202020 guibg=#e04d24 guisp=NONE cterm=NONE gui=NONE
hi DiffText ctermfg=234 ctermbg=222 guifg=#202020 guibg=#f9df8b guisp=NONE cterm=NONE,underline gui=NONE,underline
hi Directory ctermfg=248 ctermbg=NONE guifg=#a6a6a6 guibg=NONE guisp=NONE cterm=NONE gui=NONE
hi EndOfBuffer ctermfg=234 ctermbg=NONE guifg=#202020 guibg=NONE guisp=NONE cterm=NONE gui=NONE
hi ErrorMsg ctermfg=196 ctermbg=NONE guifg=#e04d24 guibg=NONE guisp=NONE cterm=NONE gui=NONE
hi FoldColumn ctermfg=248 ctermbg=236 guifg=#a6a6a6 guibg=#303030 guisp=NONE cterm=NONE gui=NONE
hi Folded ctermfg=241 ctermbg=NONE guifg=#626262 guibg=NONE guisp=NONE cterm=NONE gui=NONE
hi IncSearch ctermfg=248 ctermbg=236 guifg=#a6a6a6 guibg=#303030 guisp=NONE cterm=NONE,underline gui=NONE,underline
hi LineNr ctermfg=241 ctermbg=234 guifg=#626262 guibg=#202020 guisp=NONE cterm=NONE gui=NONE
hi MatchParen ctermfg=231 ctermbg=NONE guifg=#ffffff guibg=NONE guisp=NONE cterm=NONE,bold gui=NONE,bold
hi ModeMsg ctermfg=248 ctermbg=NONE guifg=#a6a6a6 guibg=NONE guisp=NONE cterm=NONE gui=NONE
hi MoreMsg ctermfg=248 ctermbg=NONE guifg=#a6a6a6 guibg=NONE guisp=NONE cterm=NONE gui=NONE
hi NonText ctermfg=248 ctermbg=NONE guifg=#a6a6a6 guibg=NONE guisp=NONE cterm=NONE gui=NONE
hi Pmenu ctermfg=248 ctermbg=236 guifg=#a6a6a6 guibg=#303030 guisp=NONE cterm=NONE gui=NONE
hi PmenuSbar ctermfg=248 ctermbg=236 guifg=#a6a6a6 guibg=#303030 guisp=NONE cterm=NONE gui=NONE
hi PmenuSel ctermfg=248 ctermbg=236 guifg=#a6a6a6 guibg=#303030 guisp=NONE cterm=NONE,underline gui=NONE,underline
hi PmenuThumb ctermfg=248 ctermbg=236 guifg=#a6a6a6 guibg=#303030 guisp=NONE cterm=NONE gui=NONE
hi Question ctermfg=248 ctermbg=NONE guifg=#a6a6a6 guibg=NONE guisp=NONE cterm=NONE gui=NONE
hi! link QuickFixLine Search
hi Search ctermfg=248 ctermbg=236 guifg=#a6a6a6 guibg=#303030 guisp=NONE cterm=NONE gui=NONE
hi SignColumn ctermfg=248 ctermbg=234 guifg=#a6a6a6 guibg=#202020 guisp=NONE cterm=NONE gui=NONE
hi SpecialKey ctermfg=248 ctermbg=NONE guifg=#a6a6a6 guibg=NONE guisp=NONE cterm=NONE gui=NONE
hi SpellBad ctermfg=196 ctermbg=NONE guifg=#e04d24 guibg=NONE guisp=NONE cterm=NONE gui=NONE
hi SpellCap ctermfg=222 ctermbg=NONE guifg=#f9df8b guibg=NONE guisp=NONE cterm=NONE gui=NONE
hi SpellLocal ctermfg=248 ctermbg=NONE guifg=#a6a6a6 guibg=NONE guisp=NONE cterm=NONE gui=NONE
hi SpellRare ctermfg=248 ctermbg=NONE guifg=#a6a6a6 guibg=NONE guisp=NONE cterm=NONE gui=NONE
hi StatusLine ctermfg=248 ctermbg=236 guifg=#a6a6a6 guibg=#303030 guisp=NONE cterm=NONE gui=NONE
hi StatusLineNC ctermfg=241 ctermbg=236 guifg=#626262 guibg=#303030 guisp=NONE cterm=NONE gui=NONE
hi! link StatusLineTerm StatusLine
hi! link StatusLineTermNC StatusLineNC
hi TabLine ctermfg=248 ctermbg=236 guifg=#a6a6a6 guibg=#303030 guisp=NONE cterm=NONE gui=NONE
hi TabLineFill ctermfg=248 ctermbg=234 guifg=#a6a6a6 guibg=#202020 guisp=NONE cterm=NONE gui=NONE
hi TabLineSel ctermfg=248 ctermbg=236 guifg=#a6a6a6 guibg=#303030 guisp=NONE cterm=NONE,underline gui=NONE,underline
hi Title ctermfg=248 ctermbg=NONE guifg=#a6a6a6 guibg=NONE guisp=NONE cterm=NONE gui=NONE
hi VertSplit ctermfg=241 ctermbg=NONE guifg=#626262 guibg=NONE guisp=NONE cterm=NONE gui=NONE
hi Visual ctermfg=248 ctermbg=236 guifg=#a6a6a6 guibg=#303030 guisp=NONE cterm=NONE gui=NONE
hi VisualNOS ctermfg=248 ctermbg=NONE guifg=#a6a6a6 guibg=NONE guisp=NONE cterm=NONE gui=NONE
hi WarningMsg ctermfg=248 ctermbg=NONE guifg=#a6a6a6 guibg=NONE guisp=NONE cterm=NONE gui=NONE
hi WildMenu ctermfg=248 ctermbg=236 guifg=#a6a6a6 guibg=#303030 guisp=NONE cterm=NONE,underline gui=NONE,underline
hi! link Boolean Constant
hi! link Character Constant
hi Comment ctermfg=231 ctermbg=NONE guifg=#ffffff guibg=NONE guisp=NONE cterm=NONE,italic gui=NONE,italic
hi! link Conditional Statement
hi Constant ctermfg=248 ctermbg=NONE guifg=#a6a6a6 guibg=NONE guisp=NONE cterm=NONE gui=NONE
hi! link Define PreProc
hi! link Debug Special
hi! link Delimiter Special
hi Error ctermfg=248 ctermbg=NONE guifg=#a6a6a6 guibg=NONE guisp=NONE cterm=NONE,reverse gui=NONE,reverse
hi! link Exception Statement
hi! link Float Constant
hi! link Function Identifier
hi Identifier ctermfg=248 ctermbg=NONE guifg=#a6a6a6 guibg=NONE guisp=NONE cterm=NONE gui=NONE
hi Ignore ctermfg=248 ctermbg=NONE guifg=#a6a6a6 guibg=NONE guisp=NONE cterm=NONE gui=NONE
hi! link Include PreProc
hi! link Keyword Statement
hi! link Label Statement
hi! link Macro PreProc
hi! link Number Constant
hi! link Operator Statement
hi! link PreCondit PreProc
hi PreProc ctermfg=248 ctermbg=NONE guifg=#a6a6a6 guibg=NONE guisp=NONE cterm=NONE gui=NONE
hi! link Repeat Statement
hi Special ctermfg=248 ctermbg=NONE guifg=#a6a6a6 guibg=NONE guisp=NONE cterm=NONE gui=NONE
hi! link SpecialChar Special
hi! link SpecialComment Comment
hi Statement ctermfg=248 ctermbg=NONE guifg=#a6a6a6 guibg=NONE guisp=NONE cterm=NONE gui=NONE
hi! link StorageClass Type
hi String ctermfg=231 ctermbg=NONE guifg=#ffffff guibg=NONE guisp=NONE cterm=NONE gui=NONE
hi! link Structure Type
hi! link Tag Special
hi Todo ctermfg=248 ctermbg=NONE guifg=#a6a6a6 guibg=NONE guisp=NONE cterm=NONE gui=NONE
hi Type ctermfg=248 ctermbg=NONE guifg=#a6a6a6 guibg=NONE guisp=NONE cterm=NONE gui=NONE
hi! link Typedef Type
hi Underlined ctermfg=248 ctermbg=NONE guifg=#a6a6a6 guibg=NONE guisp=NONE cterm=NONE gui=NONE
hi! link lCursor Cursor
hi CursorIM ctermfg=NONE ctermbg=fg guifg=NONE guibg=fg guisp=NONE cterm=NONE gui=NONE
hi ToolbarLine ctermfg=NONE ctermbg=NONE guifg=NONE guibg=NONE guisp=NONE cterm=NONE gui=NONE
hi ToolbarButton ctermfg=248 ctermbg=NONE guifg=#a6a6a6 guibg=NONE guisp=NONE cterm=NONE gui=NONE
finish

" Background: dark
" Color: background         #202020    ~
" Color: background_alt     #303030    ~
" Color: foreground         #a6a6a6    ~
" Color: foreground_alt     #626262    ~
" Color: red                #e04d24    ~
" Color: white              #ffffff    ~
" Color: green              #57d8a7    ~
" Color: yellow             #f9df8b    ~
" ALEErrorSign         red                        background
" ALEWarningSign       yellow                     background
" Normal               foreground                 background
" Terminal             foreground                 background
" ColorColumn          fg                         none
" Conceal              foreground_alt             none
" Cursor               foreground                 none
" CursorColumn         foreground                 none
" CursorLine           foreground                 background_alt
" CursorLineNr         foreground                 none
" DiffAdd              background                 green
" DiffChange           background                 yellow
" DiffDelete           background                 red
" DiffText             background                 yellow          underline
" Directory            foreground                 none
" EndOfBuffer          background                 none
" ErrorMsg             red                        none
" FoldColumn           foreground                 background_alt
" Folded               foreground_alt             none
" IncSearch            foreground                 background_alt  underline
" LineNr               foreground_alt             background
" MatchParen           white                      none            bold
" ModeMsg              foreground                 none
" MoreMsg              foreground                 none
" NonText              foreground                 none
" Pmenu                foreground                 background_alt
" PmenuSbar            foreground                 background_alt
" PmenuSel             foreground                 background_alt  underline
" PmenuThumb           foreground                 background_alt
" Question             foreground                 none
" QuickFixLine     ->  Search
" Search               foreground                 background_alt
" SignColumn           foreground                 background
" SpecialKey           foreground                 none
" SpellBad             red                        none
" SpellCap             yellow                     none
" SpellLocal           foreground                 none
" SpellRare            foreground                 none
" StatusLine           foreground                 background_alt 
" StatusLineNC         foreground_alt             background_alt
" StatusLineTerm   ->  StatusLine
" StatusLineTermNC ->  StatusLineNC
" TabLine              foreground                 background_alt
" TabLineFill          foreground                 background
" TabLineSel           foreground                 background_alt  underline
" Title                foreground                 none
" VertSplit            foreground_alt             none
" Visual               foreground                 background_alt
" VisualNOS            foreground                 none
" WarningMsg           foreground                 none
" WildMenu             foreground                 background_alt  underline
" Boolean        ->    Constant
" Character      ->    Constant
" Comment              white                      none            italic
" Conditional    ->    Statement
" Constant             foreground                 none
" Define         ->    PreProc
" Debug          ->    Special
" Delimiter      ->    Special
" Error                foreground                 none            reverse
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
" String               white                      none  
" Structure      ->    Type
" Tag            ->    Special
" Todo                 foreground                 none
" Type                 foreground                 none
" Typedef        ->    Type
" Underlined           foreground                 none
" lCursor          ->  Cursor
" CursorIM             none                       fg
" ToolbarLine          none                       none
" ToolbarButton        foreground                 none
