## Background

At the heart of this project is a small domain specific language (DSL) with a few primitives for creating color schemes. What I wanted to do originally was write Lua tables like this...

```lua
colors = {
	foo = brighten(red, 0.1),
	bar = "#ff0000",
	bax = bar,
}
```

... where I can freely refer to other colors in the table, link to them, modify them, and so on. The above Lua code doesn't work though since `red` and `bar` aren't defined anywhere. Replacing them with `foo = brighten(colors.red, 0.1)` also doesn't work. You can't refer to the table itself in the table definition, since the table isn't created yet. Next I tried this...

```lua
local colors = {}
colors.foo = brighten(colors.red, 0.1)
colors.bar = "#ff0000"
colors.bax = colors.bar
```

... which of course also doesn't work, unless you are very, very careful to add and use colors in the right order. I determined that this isn't feasible. No one wants to sort a huge of list values in topological order all the time.

What's missing here is a concept of lazy evaluation. It shouldn't matter if some variable doesn't exist yet, as long as it will exist by the time it's used. I tried various ways to implement this (e.g., with co-routines) in an ergonomic way but nothing worked. And that's how I went back to a more traditional approach of having DSL functions, like `dsl.brighten` which actually return tables. Those tables are effectively deferred function calls.

## Support more than just Neovim

I like to have a consistent setup where a color scheme is applied to Neovim, my terminal emulator, tmux, and so on. I also wanted to avoid having to manually sync these applications. So instead of having the background color of all these apps refer to the same value, I wanted these other apps to link to the Neovim `Normal` background color. Meaning, it should be possible to use the Neovim highlight groups as a source of truth for other applications.

I implemented this by having each application (including Neovim) return a list of key/value pairs from its `theme.lua` file. The keys are arbitrary but often stick closely to the property they represent (HL group for Neovim, Fish syntax for Fish shell, ...). The values are the deferred function calls from the DSL. And these values can refer to values even from other applications. `src/themes/alacritty/theme.lua` consists almost exclusively of links to Neovim colors in the form of ...

```
focused_match_bg = get { "IncSearch", "guibg" },
```

The way this is works is that I take all the key/value pairs and merge them into one big table. This table is then flattened. I run a fold (bottom-up tree catamorphism) over the table and resolve all the links, and eventually all deferred function calls. You can have a color value be a deferred function call to brighten another color. That target color could be a Neovim link to yet another color and that color in turn could also refer to some other color. All of these chains are resolved in the correct order. In the end you're left with a key/value table where the values are strings (hex colors, Vimscript commands, ...). This k/v table is then used for string interpolation in the template files.
