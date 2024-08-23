# Contributing

## Setup

If you have Nix then you can just add enter the provided dev shell. If you don't then you need:

- Make
- Lua 5.3 and above
- Neovim (and ideally Vim to make sure the theme works there too)

## Getting Started

For the common case of changing a color or adding a missing highlight group, you'll be working with `src/themes/nvim/theme.lua` and `src/themes/nvim/template.lua`. `theme.lua` is where we define key/value pairs, where the keys are arbitrary and the values are typically highlight groups or links (think `hi! link foo bar`). Even though the keys are arbitrary, it's good practice to name them after the highlight group they represent.

Here's an excerpt from the file showing what this typically looks like. The key is `Normal` and the value is a highlight group. The `name` field is what is rendered into Vimscript for the `hi` command. If we changed `name = "Normal"` to `name = "Foo"`, then the `hi` command would be `hi Foo ...`. The rest of the values are the same as what you'd expect from a `hi` command (e.g. `guifg`, `guibg`, etc.).

The values for e.g., `guifg` should always come from `t` value here, which is the set of available, semantic colors. Here's the full list of values:

- term_black
- term_red
- term_green
- term_yellow
- term_blue
- term_magenta
- term_cyan
- term_white
- term_bright_black
- term_bright_red
- term_bright_green
- term_bright_yellow
- term_bright_blue
- term_bright_magenta
- term_bright_cyan
- term_bright_white
- success.fg, success.bg, success.fg_normal
- error.fg, error.bg, error.fg_normal
- warning.fg, warning.bg, warning.fg_normal
- info.fg, info.bg, info.fg_normal
- accent.fg, accent.bg, accent.fg_normal
- canvas.fg, canvas.bg, canvas.fg_faint, canvas.fg_muted, canvas.border
- layer{1,2,3,4}.fg, layer{1,2,3,4}.bg, layer{1,2,3,4}.fg_faint, layer{1,2,3,4}.fg_muted, layer{1,2,3,4}.border

The status colors (success, error, ...) have two different foreground colors. `fg` should only ever be used in conjunction with the `bg` color from the same status color. Otherwise the contrast between fg and bg might not be high enough. `fg_normal` can be used with the normal editor background. Generally not all possible combinations will have sufficient contrast (e.g., `fg_normal` might not work well with `layer4.bg`) but it mostly works.

Canvas and the 4 layers are essentially fg and bg colors for UI elements, ranging from the most basic editor background to popups, sidebars, status bars, etc.

```lua
Normal = hlgroup {
	name = "Normal",
	guifg = t.canvas.fg,
	guibg = t.canvas.bg,
}
```

The key/value pairs from `theme.lua` are used for string interpolation in `template.lua`. If you change an existing color, you don't need to open `template.lua`. If you add a new color, you'll need to add a corresponding line in the template. The syntax is `${Normal}` where `Normal` is the **key** from `theme.lua` (not the `name` field). The template files are written in the language of the application they're for (Vimscript, YAML, ...).

For more information, see ARCHITECTURE.md.

## Guidelines

- Prefer general over specific; choose `@lsp.typemod.function.declaration` over `@lsp.typemod.function.declaration.lua`

