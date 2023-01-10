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

## Screenshots

![Screenshot #1](./screenshots/yui_1.png)
![Screenshot #2](./screenshots/yui_2.png)
![Screenshot #3](./screenshots/yui_3.png)
![Screenshot #4](./screenshots/yui_4.png)
![Screenshot #5](./screenshots/yui_5.png)
![Screenshot #6](./screenshots/yui_6.png)
![Screenshot #7](./screenshots/yui_7.png)
