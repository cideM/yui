# YUI

## Intro

Experimental color scheme without any colors, except what's required to display a meaningful `diff`.
All syntax differentiation is achieved through font styles, so your terminal needs to support bold and italic text.

Shades are used for things like dimming folded text.

## Supported Plugins

- `nvim-hlslens`
- `lightline`: if you use `lightline` and have `yui` set as a color scheme,
  `yui` will automatically set the `lightline` color palette (see `yui_lightline` option)
- `dirvish`
- `vim-sneak`
- `gitsigns`
- `conflict-marker.vim`

## Options

This information can also be found in the help, `:help yui`

### `g:yui_lightline`

- `v:false` (**default**): do not register the `yui` palette with `lightline`
- `v:true`: register the `yui` palette with `lightline`. You still need
  to set the lightline color scheme to `yui`.

```vimscript
let g:yui_lightline = v:true
colorscheme yui
let g:lightline = {
  \ 'colorscheme': 'yui'
  \ }
```

### `g:yui_folds`

- `fade` (**default**): makes folded text less visible
- `emphasize`: gives folded text a distinct background color

### `g:yui_line_numbers`

- `fade` (**default**): makes line numbers and signcolumn text less visible
- `emphasize`: gives line numbers and signcolumn text a distinct background color

### `g:yui_comments`

`g:yui_emphasized_comments` takes precedence for backwards compatibility

- `fade`: makes comments less visible
- `emphasize`: makes comments more visible and is equivalent to `yui_emphasized_comments = 1`
- `normal` (**default**): does not affect comment visibility
- `bg`: make comments stand out by giving them a background. Text is not italic.

### `g:yui_emphasized_comments`

**DEPRECATED**: Use `g:yui_comments` instead

- `1`: comments are orange
- `0` (**default**): comments are faded, as before

## Changelog

- Fix bug
- Add conflict-marker.vim support
- Add lightline support
- Fix typo where DiagnosticWarning was used instead of DiagnosticWarn
- Update Diagnostic colors for Neovim 0.6
- Link Exception, Operator, Label, Keyword and Repeat to Normal to remove italic
- Make ColorColumn visible and make Visual bg a bit lighter
- Link LspDiagnosticsDefaultInformation to DiffText so it can be better
  differentiated from the surrounding text
- link HlSearchNear to Search, otherwise cursor is inverted and hard to see
- Add colors for nvim-hlslens
- Don't force BG colors for markdown because it doesn't work well with
  Neovim popup windows
- Force LSP popup background to NONE
- Add LspDiagnosticsDefaultHint and LspDiagnosticsDefaultInformation
- Start adding some XML groups
- Overhaul entire theme
    - Better contrast for Normal
    - Active StatusLine is now dark
    - Use purple for all selection things (Visual, Search, 
      PMenu, WildMenu, TabLine)
    - Get rid of some duplicate but slightly different colors
    - Make MatchParen stand out more
    - Make sure all colors have a 256 color value
    - Add 'bg' option to comments
- Remove Colortemplate
- Add magenta and cyan and use for Term colors
- Add signcolumn customization option
- Add vim-dirvish colors
- Adjust LspDiagnostics colors
- Adjust WhichKeySeperator color so it's normal FG without bg
- Add some WhichKey colors and fix typo in WhichKeySeperator
- Add colors for neovim LSP
- Fix Cursor color which did not specify a background
  Add yui_folds option and overhaul folded text in general
- Add Whitespace and SpecialKey and link to LineNr
- Use Constant for helpCommand and helpBacktick (makes both bold) instead of
  defaulting to Comments
- Add purple background for search results (Search and IncSearch)
- Add `yui_comments` option

## Screenshots

![Screenshot #1](./screenshots/yui_1.png)
![Screenshot #2](./screenshots/yui_2.png)
![Screenshot #3](./screenshots/yui_3.png)
![Screenshot #4](./screenshots/yui_4.png)
![Screenshot #5](./screenshots/yui_5.png)
![Screenshot #6](./screenshots/yui_6.png)
![Screenshot #7](./screenshots/yui_7.png)
