local mapkv = require("lib/table").mapkv
local merge = require("lib/table").merge
local cfg = require "config"
local dsl = require "lib/dsl"

-- These are the functions that are called with the 'context' table we'll
-- define later. That table has all the color values, from the base palette,
-- the layers, the terminal colors, and so on. Each function is called with
-- that table plus the DSL functions and it returns a table that has a 'light'
-- and a 'dark' attribute. The values of these two attributes are k/v pairs,
-- where the keys are used in string interpolation later and the values
-- are, at this point, DSL values (darken, brighten, link to other color,
-- ...) that we'll resolve (~ flatten) later.
local theme_fns = {
	(require "themes/alacritty/theme"),
	(require "themes/ghostty/theme"),
	(require "themes/lightline/theme"),
	(require "themes/fish/theme"),
	(require "themes/css/theme"),
}

-- This function is weird, but you don't really have to understand what it
-- does. In Neovim you can use 'fg' and 'bg' as color values. But in other
-- programs, for example Alacritty, these are meaningless. What if the
-- Alacritty theme function links to a Neovim color value that uses one of
-- those special words though? That's why there is 'replace_special_colors'. It
-- finds these special values in themes that *are not Neovim* and replaces
-- them with the *actual color value* (meaning the foreground or background
-- color used by Neovim, taken from the 'Normal' highlight group).
local replace_special_colors = function(nvim_colors)
	local nvim_redirects = {
		fg = { "Normal", "guifg" },
		bg = { "Normal", "guibg" },
		foreground = { "Normal", "guifg" },
		background = { "Normal", "guibg" },
	}

	return function(k, v)
		if not nvim_colors[k] and nvim_redirects[v] then
			local x = nvim_colors
			for _, path in ipairs(nvim_redirects[v]) do
				x = x[path]
			end
			return x
		end
		return v
	end
end

local context = dsl.flatten(cfg)

local nvim_theme_fn = require "themes/nvim/theme"

local nvim_variants = nvim_theme_fn(context, dsl)

-- I didn't know what else to call it. This table is a grab bag for all the
-- string interpolation keys from all themes. The values are DSL entities
-- that will be flattened later. Having all keys from all themes in a single
-- table is on purpose. That way themes can reference each others keys' and
-- those references can be resolved later through the 'flatten' call. Having
-- all keys in the same table makes resolving references easier.
local kv = {
	light = nvim_variants.light,
	dark = nvim_variants.dark,
}

for _, fn in ipairs(theme_fns) do
	local result = fn(context, dsl)
	kv.light = merge(kv.light, result.light)
	kv.dark = merge(kv.dark, result.dark)
end

kv.light =
	mapkv(replace_special_colors(nvim_variants.light), dsl.flatten(kv.light))

kv.dark =
	mapkv(replace_special_colors(nvim_variants.dark), dsl.flatten(kv.dark))

-- TODO: Make sure that all theme functions accept (context, kv) and return both light and dark

return {
	light = {
		nvim = require "themes/nvim/template"(
			kv.light,
			context.light.theme_name
		),
		alacritty = {
			toml = require("themes/alacritty/template").toml(kv.light),
			yaml = require("themes/alacritty/template").yaml(kv.light),
			msg = require("themes/alacritty/template").msg(kv.light),
		},
		css = require "themes/css/template"(kv),
		lightline = require "themes/lightline/template"(
			kv.light,
			context.light.theme_name
		),
		fish = require "themes/fish/template"(kv.light),
		ghostty = require "themes/ghostty/template"(kv.light),
	},
	dark = {
		nvim = require "themes/nvim/template"(kv.dark, context.dark.theme_name),
		alacritty = {
			toml = require("themes/alacritty/template").toml(kv.dark),
			yaml = require("themes/alacritty/template").yaml(kv.dark),
			msg = require("themes/alacritty/template").msg(kv.dark),
		},
		css = require "themes/css/template"(kv),
		lightline = require "themes/lightline/template"(
			kv.dark,
			context.dark.theme_name
		),
		fish = require "themes/fish/template"(kv.dark),
		ghostty = require "themes/ghostty/template"(kv.dark),
	},
}
