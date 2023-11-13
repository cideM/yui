# Contributing

## Setup

If you have Nix then you can just add enter the provided dev shell. If you don't then you need:

- Make
- Lua 5.3 and above
- Neovim
- Vim
- Git
- Alacritty only if you want to work on the Alacritty theme

## Getting Started

The most likely scenario is that you want to add or modify highlights. This all happens in `yui.lua`. It's basically a long list of highlight group definitions. The most likely place you'll work in is the table passed to `add_hlgroups`.

You can refer to the color of another HL group through `d:get("Normal", "guifg")`. The path is a little different for HL groups that are introduced through `interpolate` calls. Here you replace the HL group name with the key of the HL group in the table that's passed to `interpolate`. For example, among the various Neovim options there's one that determines how folds are rendered. If you'd like to copy the value of the "fade folds out" option you can do `d:get("fold_column_fade", "guifg")`.

You can also go a step further and modify the color that you are copying. Replace  `d:get("Normal", "guifg")` with  `d:call("Normal", "guifg", colour.lighten, 5)`. This makes the color lighter. Supported values for `colour.lighten` are positive and negative integers and `-aa`, `-aaa`, `aa` and  `aaa`. These refer to pre-determined contrast ratios of the W3C.

That's it!
