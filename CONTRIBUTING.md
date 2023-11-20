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

## Handling LSP & TS Colors

### Guidelines

- Prefer general over specific; choose `@lsp.typemod.function.declaration` over `@lsp.typemod.function.declaration.lua`
- When overriding colors, link LSP and TS groups when possible

### Details

There are two layers of highlight groups:
- The base colors from Vim that are mentioned in `:h syntax.txt`, such as `Title`
- LSP colors (all the `@lsp.*` tokens), Treesitter colors (such as `@function`) and more specific Vim colors (such as `luaFunc`)

Changing the base colors should be done sparingly, since it affects a lot of languages and it's impossible to properly anticipate the impact of a change.

The other layer is already linked to the first by default. If you change a color in one of the groups, please consider if the other groups should be linked to the first one. Here's an example: say you want to make function declarations underlined. Open a file and check the current HL groups with `:Inspect`. You might discover that this is `@function` in TS and `@lsp.typemod.declaration.function` in LSP. Here it makes sense to treat one of them as the source of truth and link the other (s) to that. So make the LSP color the source of truth and link the other color to it like this:

```lua
{
	["@function"] = hl {
		"@function",
		guifg = d:get("@lsp.typemod.function.declaration", "guifg"),
		guibg = d:get("@lsp.typemod.function.declaration", "guibg"),
		gui = d:get("@lsp.typemod.function.declaration", "gui"),
	}
}
```

The LSP and TS groups are often language specific but you can just remove the last `.lua` part in `@lsp.typemod.function.declaration.lua` and make the declaration more general.

Ideally also locate some of the Vim colors and link them as well. Unfortunately there's no real middle ground here. There's the base syntax which doesn't include anything for function declarations and then there's a myriad of language specific rules. Update as many as you have at hand.
