# Yui | ユイ

Experimental color scheme without any colors, except what's required to display a meaningful `diff`.
All syntax differentiation is achieved through font styles, so your terminal needs to support bold and italic text.

Shades are used for things like dimming folded text.

This is not yet a finished color scheme. If you spot any issues, please create an issue! Ideally you include an example file and/or screenshot.

## Options

This information can also be found in the help, `:help yui`

### `yui_comments`

Values: `"normal"` `"emphasize"` `"fade"`

* `fade` makes comments less visible
* `emphasize` makes comments more visible and is equivalent to `yui_emphasized_comments = 1`
* `normal` is the default and does not affect comment visibility
* `yui_emphasized_comments` takes precedence for backwards compatibility

### `yui_emphasized_comments`

Values: `0` `1`

* When set to `1`, comments are orange, otherwise they are faded, as before. Defaults to `0`
* *Deprecated* please use `yui_comments`

## Changelog

* 0.6.0: Add purple background for search results (Search and IncSearch)
* 0.5.0: Add @shortname_comments option

## Screenshots

![Screenshot #1](./screenshots/yui_1.png)
![Screenshot #2](./screenshots/yui_2.png)
![Screenshot #3](./screenshots/yui_3.png)
![Screenshot #4](./screenshots/yui_4.png)
![Screenshot #5](./screenshots/yui_5.png)
![Screenshot #6](./screenshots/yui_6.png)
