local merge = require("lib/table").merge
local mapkv = require("lib/table").mapkv
local cfg = require "config"
local fold = require("lib/table").fold
local dsl = require "lib/dsl"
local palette = require "lib/palette"

local function invert_contrasts(t, sub_forest_results)
	if type(t) == "table" and t.__type == dsl.contrast_type then
		local out = {}
		for k, v in pairs(sub_forest_results) do
			if k == "delta" then
				out[k] = v * -1
			else
				out[k] = v
			end
		end
		return out
	end
	return type(t) == "table" and sub_forest_results or t
end

local nvim_redirects = {
	fg = { "Normal", "guifg" },
	bg = { "Normal", "guibg" },
	foreground = { "Normal", "guifg" },
	background = { "Normal", "guibg" },
}

local function make_themes(colors, theme_name)
	-- Flatten only the "get" calls of the Neovim theme. We're
	-- then left with a table of all the colors that the Neovim theme
	-- uses, but the values are still tables with color values instead of
	-- Vimscript strings.
	local nvim_hlgroups =
		dsl.flatten(require "themes/nvim/theme"(colors, dsl), {
			[dsl.get_type] = dsl.flatten_get,
		})

	-- Now replace special color values in non-Neovim themes (like 'fg' or 'bg') with
	-- the actual color values from the partially flattened Neovim theme. We don't do this
	-- for the Neovim theme itself, since 'fg' and 'bg' are valid Vimscript values.
	local replace_special_colors = function(k, v)
		if not nvim_hlgroups[k] and nvim_redirects[v] then
			local x = nvim_hlgroups
			for _, path in ipairs(nvim_redirects[v]) do
				x = x[path]
			end
			return x
		end
		return v
	end

	-- We can only flatten the other themes if they're in a table that
	-- also has all the Neovim theme colors (since the other themes
	-- refer to Neovim colors). So we merge them together.
	local kv = mapkv(
		replace_special_colors,
		dsl.flatten(
			merge(
				nvim_hlgroups,
				(require "themes/alacritty/theme")(colors, dsl),
				(require "themes/lightline/theme")(colors, dsl),
				(require "themes/fish/theme")(colors, dsl)
			)
		)
	)

	return {
		nvim = require "themes/nvim/template"(kv, theme_name),
		alacritty = {
			toml = require("themes/alacritty/template").toml(kv),
			yaml = require("themes/alacritty/template").yaml(kv),
		},
		lightline = require "themes/lightline/template"(kv, theme_name),
		fish = require "themes/fish/template"(kv),
	}
end

return {
	light = make_themes(
		dsl.flatten(
			merge(
				palette.gen_canvases(cfg.light),
				palette.gen_status_colors(cfg.light),
				palette.gen_term_colors(cfg.light)
			)
		),
		cfg.light.theme_name
	),
	dark = make_themes(
		dsl.flatten(
			merge(
				fold(invert_contrasts, palette.gen_canvases(cfg.dark)),
				palette.gen_status_colors(cfg.dark),
				palette.gen_term_colors(cfg.dark)
			)
		),
		cfg.dark.theme_name
	),
}
