# Yui | ユイ
<!-- vim-markdown-toc GFM -->

* [Intro](#intro)
* [Options](#options)
    * [`g:yui_folds`](#gyui_folds)
    * [`g:yui_comments`](#gyui_comments)
    * [`g:yui_emphasized_comments`](#gyui_emphasized_comments)
* [Changelog](#changelog)
* [Screenshots](#screenshots)

<!-- vim-markdown-toc -->

## Intro

Experimental color scheme without any colors, except what's required to display a meaningful `diff`.
All syntax differentiation is achieved through font styles, so your terminal needs to support bold and italic text.

Shades are used for things like dimming folded text.

This is not yet a finished color scheme. If you spot any issues, please create an issue! Ideally you include an example file and/or screenshot.

## Options

This information can also be found in the help, `:help yui`

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

### `g:yui_emphasized_comments`

**DEPRECATED**: Use `g:yui_comments` instead

- `1`: comments are orange
- `0` (**default**): comments are faded, as before

## Changelog

- 0.14.0: Add vim-dirvish colors
- 0.13.0: Adjust LspDiagnostics colors
- 0.12.0: Adjust WhichKeySeperator color so it's normal FG without bg
- 0.11.1: Fix typo in WhichKeySeperator
- 0.11.0: Add some WhichKey colors
- 0.10.0: Add colors for neovim LSP
- 0.9.1: Fix Cursor color which did not specify a background
- 0.9.0: Add `g:yui_folds` option and overhaul folded text in general
- 0.8.0: Add Whitespace and SpecialKey and link to LineNr
- 0.7.0: Use Constant for helpCommand and helpBacktick (makes both bold)
  instead of defaulting to Comments
- 0.6.0: Add purple background for search results (Search and IncSearch)
- 0.5.0: Add `g:yui_comments` option

## Screenshots

![Screenshot #1](./screenshots/yui_1.png)
![Screenshot #2](./screenshots/yui_2.png)
![Screenshot #3](./screenshots/yui_3.png)
![Screenshot #4](./screenshots/yui_4.png)
![Screenshot #5](./screenshots/yui_5.png)
![Screenshot #6](./screenshots/yui_6.png)
![Screenshot #7](./screenshots/yui_7.png)
