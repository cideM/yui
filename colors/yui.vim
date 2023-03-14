" https://hslpicker.com/
" | Color             | HEX    | Number | HSL                  | Notes      |
" | ----------------- | ------ | ------ | -------------------- | ---------- |
" | black_15          | 292523 | 236    | hsl(20°,  8%,   15%) |            |
" | black_36          | 635954 | 241    | hsl(20°,  8%,   36%) | FOREGROUND |
" | black_46          | 7f726c | 246    | hsl(20°,  8%,   46%) |            |
" | black_68          | b4aba7 | 249    | hsl(20°,  8%,   68%) |            |
" | green_25          | 408000 | 70     | hsl(90°,  100%, 25%) |            |
" | green_91          | e8ffd1 | 193    | hsl(90°,  100%, 91%) |            |
" | orange_51         | E44C22 | 166    | hsl(13°,  78%,  51%) |            |
" | red_36            | a7111d | 124    | hsl(355°, 82%,  36%) |            |
" | red_94            | fce3e5 | 224    | hsl(355°, 82%,  94%) |            |
" | yellow_26         | 7c8500 | 94     | hsl(64°,  100%, 26%) |            |
" | yellow_82         | f9ffa3 | 229    | hsl(64°,  100%, 82%) |            |
" | purple_45         | 371ec8 | 19     | hsl(249°, 74%,  45%) |            |
" | purple_55         | 5137e1 | 62     | hsl(249°, 74%,  55%) |            |
" | purple_65         | 7864e8 | 99     | hsl(249°, 74%,  65%) |            |
" | purple_87         | cdc5f6 | 147    | hsl(249,  74%,  87%) |            |
" | purple_91         | DCD7F9 | 189    | hsl(249°, 74%,  91%) |            |
" | blue_91           | d8ebf8 | 195    | hsl(205°, 69%,  91%) |            |
" | blue_28           | 165079 | 25     | hsl(205°, 69%,  28%) |            |
" | white_75          | cfbfb0 | 251    | hsl(30°,  24%,  75%) |            |
" | white_82          | dcd1c6 | 252    | hsl(30°,  24%,  82%) |            |
" | white_88          | e8e0d9 | 253    | hsl(30°,  24%,  88%) |            |
" | white_92          | efeae5 | 254    | hsl(30°,  24%,  92%) | BACKGROUND |
" | white_98          | fbfaf9 | 255    | hsl(30°,  24%,  98%) |            |
" | cyan_23           | 007575 | 66     | hsl(180°, 100%, 23%) |            |

set background=light

if !has('gui_running') && &t_Co < 256 && !has('nvim')
  finish
endif

hi clear
if exists('syntax_on')
  syntax reset
endif

let g:colors_name = 'yui'

"===============================
"=       BUILT IN COLORS       =
"===============================

if has('nvim')
  let g:terminal_color_0 = '#635954'
  let g:terminal_color_1 = '#a7111d'
  let g:terminal_color_2 = '#408000'
  let g:terminal_color_3 = '#7c8500'
  let g:terminal_color_4 = '#00588f'
  let g:terminal_color_5 = '#5137e1'
  let g:terminal_color_6 = '#007575'
  let g:terminal_color_7 = '#efeae5'
  let g:terminal_color_8 = '#635954'
  let g:terminal_color_9 = '#a7111d'
  let g:terminal_color_10 = '#408000'
  let g:terminal_color_11 = '#7c8500'
  let g:terminal_color_12 = '#00588f'
  let g:terminal_color_13 = '#7864e8'
  let g:terminal_color_14 = '#007575'
  let g:terminal_color_15 = '#efeae5'
else
  let g:terminal_ansi_colors = [
  \'#635954',
  \'#a7111d',
  \'#408000',
  \'#7c8500',
  \'#00588f',
  \'#5137e1',
  \'#007575',
  \'#efeae5',
  \'#635954',
  \'#a7111d',
  \'#408000',
  \'#7c8500',
  \'#00588f',
  \'#7864e8',
  \'#007575',
  \'#efeae5']
endif

"======== UI COLORS =========

hi        Normal                      guifg=#635954 ctermfg=241  guibg=#efeae5 ctermbg=254  guisp=NONE    gui=NONE      cterm=NONE
hi        MsgArea                     guifg=#7f726c ctermfg=246  guibg=#e8e0d9 ctermbg=253  guisp=NONE    gui=NONE      cterm=NONE
hi        ColorColumn                 guifg=fg      ctermfg=fg   guibg=#e8e0d9 ctermbg=NONE guisp=NONE    gui=NONE      cterm=NONE
hi        Conceal                     guifg=#cfbfb0 ctermfg=251  guibg=NONE    ctermbg=NONE guisp=NONE    gui=NONE      cterm=NONE
hi        Constant                    guifg=#292523 ctermfg=236  guibg=NONE    ctermbg=NONE guisp=NONE    gui=NONE      cterm=NONE
hi        CursorColumn                guifg=NONE    ctermfg=NONE guibg=#fbfaf9 ctermbg=255  guisp=NONE    gui=NONE      cterm=NONE
hi        Cursor                      guifg=bg      ctermfg=bg   guibg=fg      ctermbg=fg   guisp=NONE    gui=NONE      cterm=NONE
hi        CursorIM                    guifg=NONE    ctermfg=NONE guibg=fg      ctermbg=fg   guisp=NONE    gui=NONE      cterm=NONE
hi        CursorLine                  guifg=fg      ctermfg=fg   guibg=#fbfaf9 ctermbg=255  guisp=NONE    gui=NONE      cterm=NONE
hi        CursorLineNr                guifg=fg      ctermfg=fg   guibg=#fbfaf9 ctermbg=255  guisp=NONE    gui=NONE      cterm=NONE
hi        DiffAdd                     guifg=#408000 ctermfg=70   guibg=#e8ffd1 ctermbg=193  guisp=NONE    gui=NONE      cterm=NONE
hi        DiffChange                  guifg=#7c8500 ctermfg=94   guibg=#f9ffa3 ctermbg=229  guisp=NONE    gui=NONE      cterm=NONE
hi        DiffDelete                  guifg=#a7111d ctermfg=124  guibg=#fce3e5 ctermbg=224  guisp=NONE    gui=NONE      cterm=NONE
hi        DiffText                    guifg=#165079 ctermfg=25   guibg=#d8ebf8 ctermbg=195  guisp=NONE    gui=NONE      cterm=NONE
hi        Directory                   guifg=fg      ctermfg=fg   guibg=NONE    ctermbg=NONE guisp=NONE    gui=NONE      cterm=NONE
hi        Error                       guifg=#a7111d ctermfg=124  guibg=#fce3e5 ctermbg=224  guisp=NONE    gui=NONE      cterm=NONE
hi        ErrorMsg                    guifg=#a7111d ctermfg=124  guibg=#fce3e5 ctermbg=224  guisp=NONE    gui=NONE      cterm=NONE
hi        Identifier                  guifg=fg      ctermfg=fg   guibg=NONE    ctermbg=NONE guisp=NONE    gui=NONE      cterm=NONE
hi        Ignore                      guifg=fg      ctermfg=fg   guibg=NONE    ctermbg=NONE guisp=NONE    gui=NONE      cterm=NONE
hi        IncSearch                   guifg=#DCD7F9 ctermfg=189  guibg=#5137e1 ctermbg=62   guisp=NONE    gui=NONE      cterm=NONE
hi        InfoMsg                     guifg=#5137e1 ctermfg=62   guibg=#DCD7F9 ctermbg=189  guisp=NONE    gui=NONE      cterm=NONE
hi        MatchParen                  guifg=NONE    ctermfg=NONE guibg=#dcd1c6 ctermbg=252  guisp=NONE    gui=bold      cterm=bold
hi        TabLine                     guifg=fg      ctermfg=fg   guibg=bg      ctermbg=bg   guisp=NONE    gui=NONE      cterm=NONE
hi        ModeMsg                     guifg=fg      ctermfg=fg   guibg=NONE    ctermbg=NONE guisp=NONE    gui=NONE      cterm=NONE
hi        MoreMsg                     guifg=fg      ctermfg=fg   guibg=NONE    ctermbg=NONE guisp=NONE    gui=NONE      cterm=NONE
hi        NonText                     guifg=fg      ctermfg=fg   guibg=NONE    ctermbg=NONE guisp=NONE    gui=NONE      cterm=NONE
hi        Pmenu                       guifg=NONE    ctermfg=NONE guibg=#e8e0d9 ctermbg=253  guisp=NONE    gui=NONE      cterm=NONE
hi        PmenuThumb                  guifg=NONE    ctermfg=NONE guibg=fg      ctermbg=fg   guisp=NONE    gui=NONE      cterm=NONE
hi        PreProc                     guifg=fg      ctermfg=fg   guibg=NONE    ctermbg=NONE guisp=NONE    gui=NONE      cterm=NONE
hi        Question                    guifg=fg      ctermfg=fg   guibg=NONE    ctermbg=NONE guisp=NONE    gui=NONE      cterm=NONE
hi        Search                      guifg=#5137e1 ctermfg=62   guibg=#DCD7F9 ctermbg=189  guisp=NONE    gui=NONE      cterm=NONE
hi        CurSearch                   guifg=#DCD7F9 ctermfg=189  guibg=#7864e8 ctermbg=99   guisp=NONE    gui=NONE      cterm=NONE
hi        Visual                      guifg=#371ec8 ctermfg=19   guibg=#cdc5f6 ctermbg=147  guisp=NONE    gui=NONE      cterm=NONE
hi        Special                     guifg=fg      ctermfg=fg   guibg=NONE    ctermbg=NONE guisp=NONE    gui=NONE      cterm=NONE
hi        SpecialKey                  guifg=#b4aba7 ctermfg=249  guibg=NONE    ctermbg=NONE guisp=NONE    gui=NONE      cterm=NONE
hi        SpellBad                    guifg=#a7111d ctermfg=124  guibg=#fce3e5 ctermbg=224  guisp=NONE    gui=NONE      cterm=NONE
hi        SpellCap                    guifg=NONE    ctermfg=NONE guibg=NONE    ctermbg=NONE guisp=#a7111d gui=undercurl cterm=undercurl
hi        SpellLocal                  guifg=fg      ctermfg=fg   guibg=NONE    ctermbg=NONE guisp=NONE    gui=NONE      cterm=NONE
hi        SpellRare                   guifg=fg      ctermfg=NONE guibg=NONE    ctermbg=NONE guisp=NONE    gui=NONE      cterm=NONE
hi        Statement                   guifg=fg      ctermfg=fg   guibg=NONE    ctermbg=NONE guisp=NONE    gui=italic    cterm=italic
hi        StatusLine                  guifg=bg      ctermfg=bg   guibg=fg      ctermbg=fg   guisp=NONE    gui=bold      cterm=NONE
hi        StatusLineNC                guifg=fg      ctermfg=fg   guibg=#dcd1c6 ctermbg=252  guisp=NONE    gui=NONE      cterm=NONE
hi        Terminal                    guifg=fg      ctermfg=fg   guibg=bg      ctermbg=bg   guisp=NONE    gui=NONE      cterm=NONE
hi        Todo                        guifg=NONE    ctermfg=NONE guibg=NONE    ctermbg=NONE guisp=NONE    gui=underline cterm=underline
hi        ToolbarButton               guifg=fg      ctermfg=fg   guibg=NONE    ctermbg=NONE guisp=NONE    gui=NONE      cterm=NONE
hi        ToolbarLine                 guifg=NONE    ctermfg=NONE guibg=NONE    ctermbg=NONE guisp=NONE    gui=NONE      cterm=NONE
hi        Type                        guifg=NONE    ctermfg=NONE guibg=NONE    ctermbg=NONE guisp=NONE    gui=italic    cterm=italic
hi        Underlined                  guifg=fg      ctermfg=fg   guibg=NONE    ctermbg=NONE guisp=NONE    gui=NONE      cterm=NONE
hi        VertSplit                   guifg=#cfbfb0 ctermfg=251  guibg=NONE    ctermbg=NONE guisp=NONE    gui=NONE      cterm=NONE
hi        VisualNOS                   guifg=NONE    ctermfg=NONE guibg=#fbfaf9 ctermbg=255  guisp=NONE    gui=NONE      cterm=NONE
hi        WarningMsg                  guifg=#7c8500 ctermfg=94   guibg=#f9ffa3 ctermbg=229  guisp=NONE    gui=NONE      cterm=NONE
hi        Whitespace                  guifg=#b4aba7 ctermfg=249  guibg=NONE    ctermbg=NONE guisp=NONE    gui=NONE      cterm=NONE
hi        Tooltip                     guifg=fg                   guibg=#e8e0d9
hi        Menu                        guifg=fg                   guibg=#e8e0d9
hi        Scrollbar                   guifg=NONE                 guibg=#e8e0d9
hi        Title                       guifg=fg ctermfg=fg        guibg=NONE    ctermbg=NONE guisp=NONE    gui=NONE      cterm=NONE
hi!  link NormalNC         Normal
hi!  link WinBar           TabLineSel
hi!  link WinBarNC         TabLine
hi!  link MsgSeparator     VertSplit
hi!  link EndOfBuffer      NonText
hi!  link QuickFixLine     Search
hi!  link diffAdded        DiffAdd
hi!  link diffChanged      DiffChange
hi!  link diffRemoved      DiffDelete
hi!  link diffComment      Comment
hi!  link PmenuSel         WildMenu
hi!  link StatusLineTerm   StatusLine
hi!  link StatusLineTermNC StatusLineNC
hi!  link TabLineSel       Search
hi!  link TabLineFill      TabLine
hi!  link lCursor          Cursor
hi!  link PmenuSbar        Pmenu
hi!  link WildMenu         Visual

let folds = get(g:, 'yui_folds', 'fade')
if folds ==? 'emphasize'
  hi FoldColumn               guifg=#7f726c ctermfg=243  guibg=#dcd1c6 ctermbg=254  guisp=NONE    gui=NONE      cterm=NONE
  hi Folded                   guifg=#7f726c ctermfg=243  guibg=#dcd1c6 ctermbg=254  guisp=NONE    gui=NONE      cterm=NONE
elseif folds ==? 'fade'
  hi FoldColumn               guifg=#b4aba7 ctermfg=181  guibg=NONE    ctermbg=NONE guisp=NONE    gui=NONE      cterm=NONE
  hi Folded                   guifg=#b4aba7 ctermfg=181  guibg=NONE    ctermbg=NONE guisp=NONE    gui=NONE      cterm=NONE
endif

let linenr = get(g:, 'yui_line_numbers', 'fade')
if linenr ==? 'emphasize'
  hi SignColumn               guifg=#7f726c ctermfg=243  guibg=#dcd1c6 ctermbg=254  guisp=NONE    gui=NONE      cterm=NONE
  hi LineNr                   guifg=#7f726c ctermfg=243  guibg=#dcd1c6 ctermbg=254  guisp=NONE    gui=NONE      cterm=NONE
elseif linenr ==? 'fade'
  hi SignColumn               guifg=fg      ctermfg=fg   guibg=bg      ctermbg=255  guisp=NONE    gui=NONE      cterm=NONE
  hi LineNr                   guifg=#b4aba7 ctermfg=181  guibg=NONE    ctermbg=NONE guisp=NONE    gui=NONE      cterm=NONE
endif

let comments = get(g:, 'yui_comments', 'normal')
if comments ==? 'emphasize' || get(g:, 'yui_emphasized_comments', 0)
  hi Comment                  guifg=#E44C22 ctermfg=196  guibg=NONE    ctermbg=NONE guisp=NONE    gui=italic    cterm=italic
elseif comments ==? 'fade'
  hi Comment                  guifg=#7f726c ctermfg=181  guibg=NONE    ctermbg=NONE guisp=NONE    gui=italic    cterm=italic
elseif comments ==? 'normal'
  hi Comment                  guifg=#7f726c ctermfg=241  guibg=NONE    ctermbg=NONE guisp=NONE    gui=italic    cterm=italic
elseif comments ==? 'bg'
  hi Comment                  guifg=fg      ctermfg=fg  guibg=#e8e0d9 ctermbg=NONE guisp=NONE    gui=NONE      cterm=NONE
endif

"======== LSP ===============
" Check :help diagnostic-highlights
"
" > By default, highlights for signs, floating windows, and virtual text are
" > linked to the corresponding default highlight. Underline highlights are
" > not linked and use their own default highlight groups.
"
" > For example, the default highlighting for |hl-DiagnosticSignError| is linked
" > to |hl-DiagnosticError|.

hi! link DiagnosticError           Error
hi! link DiagnosticWarn             WarningMsg
hi! link DiagnosticInfo             DiffText
hi DiagnosticHint                                guifg=#635954 ctermfg=241  guibg=NONE ctermbg=NONE  guisp=NONE    gui=NONE      cterm=NONE
hi! link DiagnosticUnderlineError   Error
hi! link DiagnosticUnderlineWarn    WarningMsg
hi! link DiagnosticUnderlineInfo    DiffText
hi! link DiagnosticUnderlineHint    Normal
hi! link LspSignatureActiveParameter Search

"======== SYNTAX ============

hi! link Boolean          Constant
hi! link Character        Constant
hi! link Conditional      Statement
hi! link Define           PreProc
hi! link Debug            Special
hi! link Delimiter        Special
hi! link Float            Number
hi! link Function         Identifier
hi! link Include          PreProc
hi! link Macro            PreProc
hi! link Number           Constant
hi! link PreCondit        PreProc
hi! link SpecialChar      Special
hi! link SpecialComment   Special
hi! link StorageClass     Type
hi! link String           Constant
hi! link Structure        Type
hi! link Tag              Special
hi! link Typedef          Type
hi! link Substitute       IncSearch
hi       Operator                     guifg=fg ctermfg=fg  guibg=NONE ctermbg=NONE  guisp=NONE gui=NONE cterm=NONE
hi       Repeat                       guifg=fg ctermfg=fg  guibg=NONE ctermbg=NONE  guisp=NONE gui=NONE cterm=NONE
hi       jsParensError                guifg=fg ctermfg=fg  guibg=NONE ctermbg=NONE  guisp=NONE gui=NONE cterm=NONE
hi       Exception                    guifg=fg ctermfg=fg  guibg=NONE ctermbg=NONE  guisp=NONE gui=NONE cterm=NONE
hi       Keyword                      guifg=fg ctermfg=fg  guibg=NONE ctermbg=NONE  guisp=NONE gui=NONE cterm=NONE
hi       Label                        guifg=fg ctermfg=fg  guibg=NONE ctermbg=NONE  guisp=NONE gui=NONE cterm=NONE

"======== Vim Script ========
" v-- Some of these are normally linked to Type, which is italicized, leading
" to lots of italics in this file
hi! link vimGroup                     Normal
hi! link vimHiGui                     Normal
hi! link vimHiKeyList                 Normal
hi! link vimHiGroup                   Normal
hi! link vimHiCTerm                   Normal
hi! link vimHiCTermFgBg               Normal
hi!  link                     vimHiGuiFgBg  Normal

"======== Markdown ==========
hi  mkdHeading               guifg=NONE    ctermfg=NONE guibg=NONE    ctermbg=NONE guisp=NONE    gui=underline cterm=underline
hi  mkdItalic                guifg=NONE    ctermfg=NONE guibg=NONE    ctermbg=NONE guisp=NONE    gui=italic    cterm=italic
hi  markdownBold             guifg=NONE    ctermfg=NONE guibg=NONE    ctermbg=NONE guisp=NONE    gui=bold      cterm=bold
hi  markdownUrl              guifg=NONE    ctermfg=NONE guibg=NONE    ctermbg=NONE guisp=NONE    gui=underline cterm=underline
hi  markdownHeadingDelimiter guifg=NONE    ctermfg=NONE guibg=NONE    ctermbg=NONE guisp=NONE    gui=underline cterm=NONE
hi  mkdCode                           guifg=fg ctermfg=fg  guibg=NONE ctermbg=NONE  guisp=NONE    gui=NONE      cterm=NONE
hi  mkdCodeDelimiter                  guifg=fg ctermfg=fg  guibg=NONE ctermbg=NONE  guisp=NONE    gui=NONE      cterm=NONE
hi! link markdownItalic               mkdItalic
hi  markdownLinkText                  guifg=fg ctermfg=fg  guibg=NONE ctermbg=NONE  guisp=NONE    gui=NONE      cterm=NONE
hi! link markdownH1                   mkdHeading
hi! link markdownH1Delimiter          markdownHeadingDelimiter
hi! link markdownH2                   mkdHeading
hi! link markdownH3                   mkdHeading
hi! link markdownH4                   mkdHeading
hi! link markdownCodeDelimiter        folded
hi! link markdownBoldDelimiter        folded
hi! link markdownItalicDelimiter      folded
hi! link markdownBoldItalicDelimiter  folded
hi! link markdownLinkDelimiter        folded
hi! link markdownLinkTextDelimiter    folded

"======== Help Text =========
hi   helpHyperTextJump        guifg=NONE    ctermfg=NONE guibg=NONE    ctermbg=NONE guisp=NONE    gui=underline cterm=underline
hi   helpHeadline             guifg=NONE    ctermfg=NONE guibg=NONE    ctermbg=NONE guisp=NONE    gui=bold      cterm=bold
hi! link helpExample                  Normal
hi! link helpCommand                  Constant
hi! link helpBacktick                 Constant

"======== XML ===============
hi! link xmlProcessingDelim Normal
hi xmlTagName guifg=NONE ctermfg=NONE guibg=NONE ctermbg=NONE guisp=NONE gui=NONE cterm=NONE

"===============================
"=           PLUGINS           =
"===============================

"======== gitsigns ==========
hi! link GitSignsAdd                  DiffAdd
hi! link GitSignsAddNr                DiffAdd
hi! link GitSignsAddLn                DiffAdd
hi! link GitSignsChange               DiffChange
hi! link GitSignsChangeNr             DiffChange
hi! link GitSignsChangeLn             DiffChange
hi! link GitSignsDelete               DiffDelete
hi! link GitSignsDeleteNr             DiffDelete
hi! link GitSignsDeleteLn             DiffDelete

"======== indentline ========
hi! link IndentBlanklineChar          VertSplit

"======== vim-sneak =========
hi! link Sneak                        Visual
hi! link SneakScope                   IncSearch
  " v-- For all matches except the first, where the cursor currently resides
hi! link SneakLabel                   Search

"======== dirvish ===========
hi   DirvishPathTail          guifg=NONE    guibg=NONE   guisp=NONE    gui=bold     ctermfg=NONE  ctermbg=NONE  cterm=bold
hi! link DirvishArg                   Search

"======== nvim-hlslens ======
hi! link HlSearchLensNear StatusLine
hi! link HlSearchLens StatusLineNC
hi! link HlSearchNear Search

"======== lightline =========
let lightline_enabled = get(g:, 'yui_lightline', v:false)
if lightline_enabled == v:true
  let s:p = {'normal': {}, 'inactive': {}, 'insert': {}, 'replace': {}, 'visual': {}, 'tabline': {}}
  let s:p.normal.left = [
        \['#e8ffd1', '#408000', 241, 254],
        \['#efeae5', '#7f726c', 241, 254]
        \]
  let s:p.normal.right = [
        \['#efeae5', '#635954', 241, 254],
        \['#efeae5', '#7f726c', 241, 254],
        \['#292523', '#b4aba7', 245, 236]
        \]
  let s:p.normal.middle = [
        \[ '#635954', '#b4aba7', 245, 236]
        \]
  let s:p.insert.left =  [ 
        \['#d8ebf8', '#165079', 195, 25],
        \['#efeae5', '#7f726c', 241, 254]
        \]
  let s:p.visual.left = [
        \['#DCD7F9', '#5137e1', 124, 231],
        \['#efeae5', '#7f726c', 241, 254]
        \]
  let s:p.replace.left = [
        \['#ffffff', '#e44c22', 57, 231],
        \['#efeae5', '#7f726c', 241, 254]
        \]
  let s:p.normal.error = [
        \['#fce3e5', '#a7111d', 224, 124]
        \]
  let s:p.normal.warning = [
        \['#f9ffa3', '#7c8500', 229, 94]
        \]
  let s:p.inactive.right = [
        \['#7f726c', '#cfbfb0', 233, 235],
        \['#7f726c', '#cfbfb0', 233, 235],
        \['#7f726c', '#cfbfb0', 233, 235]
        \]
  let s:p.inactive.left = s:p.inactive.right[1:]
  let s:p.inactive.middle = [
        \['#7f726c', '#dcd1c6', 233, 235]
        \]
  let s:p.tabline.left = s:p.inactive.middle
  let s:p.tabline.tabsel = s:p.normal.left[1:]
  let s:p.tabline.middle = [
        \['#635954', '#efeae5', 254, 241]
        \]
  let s:p.tabline.right = s:p.normal.left[1:]

  let g:lightline#colorscheme#yui#palette = s:p
endif

"== conflict-marker.vim =====
hi! link ConflictMarkerBegin DiffAdd
hi! link ConflictMarkerOurs DiffAdd
" hi! link ConflictMarkerCommonAncestors
" ConflictMarkerCommonAncestors |||||||
" ConflictMarkerCommonAncestorsHunk actual diff content
" ConflictMarkerSeparator ========
hi! link ConflictMarkerTheirs DiffText
hi! link ConflictMarkerEnd DiffText

"==== treesitter-context ====
" The foreground colors are taken from actual Treesitter highlight groups. You
" can only set the background color. On the other hand, setting guifg on the
" TreesitterContextBottom group also seems to affect some of the other color?
" It's unclear to me how this is supposed to work.
hi TreesitterContextBottom gui=underline
hi! link TreesitterContext Pmenu

"==== which-key =============
hi       WhichKeySeperator guifg=fg ctermfg=fg guibg=NONE ctermbg=NONE guisp=NONE gui=NONE cterm=NONE
hi! link WhichKeyFloating  Pmenu
