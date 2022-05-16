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

- 0.32: Fix bug
- 0.31: Add conflict-marker.vim support
- 0.30: Add lightline support
- 0.29: Fix typo where DiagnosticWarning was used instead of DiagnosticWarn
- 0.28: Update Diagnostic colors for Neovim 0.6
- 0.27: Link Exception, Operator, Label, Keyword and Repeat to Normal to remove italic
- 0.26: Make ColorColumn visible and make Visual bg a bit lighter
- 0.25: Link LspDiagnosticsDefaultInformation to DiffText so it can be better
  differentiated from the surrounding text
- 0.24: link HlSearchNear to Search, otherwise cursor is inverted and hard to
  see
- 0.23: Add colors for nvim-hlslens
- 0.22: Don't force BG colors for markdown because it doesn't work well with
        Neovim popup windows
- 0.21: Force LSP popup background to NONE
- 0.20: Add LspDiagnosticsDefaultHint and LspDiagnosticsDefaultInformation
- 0.19: Start adding some XML groups
- 0.18: Overhaul entire theme
		- Better contrast for Normal
		- Active StatusLine is now dark
		- Use purple for all selection things (Visual, Search, 
		  PMenu, WildMenu, TabLine)
		- Get rid of some duplicate but slightly different colors
		- Make MatchParen stand out more
		- Make sure all colors have a 256 color value
		- Add 'bg' option to comments
- 0.17: Remove Colortemplate
- 0.16: Add magenta and cyan and use for Term colors
- 0.15: Add signcolumn customization option
- 0.14: Add vim-dirvish colors
- 0.13: Adjust LspDiagnostics colors
- 0.12: Adjust WhichKeySeperator color so it's normal FG without bg
- 0.11: Add some WhichKey colors and fix typo in WhichKeySeperator
- 0.10: Add colors for neovim LSP
- 0.9:  Fix Cursor color which did not specify a background
        Add yui_folds option and overhaul folded text in general
- 0.8:  Add Whitespace and SpecialKey and link to LineNr
- 0.7:  Use Constant for helpCommand and helpBacktick (makes both bold) instead of
        defaulting to Comments
- 0.6:  Add purple background for search results (Search and IncSearch)
- 0.5:  Add `yui_comments` option

## Screenshots

![Screenshot #1](./screenshots/yui_1.png)
![Screenshot #2](./screenshots/yui_2.png)
![Screenshot #3](./screenshots/yui_3.png)
![Screenshot #4](./screenshots/yui_4.png)
![Screenshot #5](./screenshots/yui_5.png)
![Screenshot #6](./screenshots/yui_6.png)
![Screenshot #7](./screenshots/yui_7.png)
