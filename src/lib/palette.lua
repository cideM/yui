--[[
Palette has functions to translate a color palette (red, green, ...) into a set
of colors that is a bit more specific to Neovim. Instead of color values like
red or green, we have semantically meaningful colors like term_red or success.

color palette => semantic colors => application colors (DiffAdd -> success)
--]]

local table = require "lib/table"
local dsl = require "lib/dsl"

local function gen_term_colors(cfg)
	local colors = cfg.colors
	local fg = cfg.fg
	return {
		term_black = fg,
		term_red = colors.red.fg_normal,
		term_green = colors.green.fg_normal,
		term_yellow = colors.yellow.fg_normal,
		term_blue = colors.blue.fg_normal,
		term_magenta = colors.purple.fg_normal,
		term_cyan = colors.cyan.fg_normal,
		term_white = dsl.brighter_contrast(fg, 3.5),
		term_bright_black = fg,
		term_bright_red = colors.red.fg_normal,
		term_bright_green = colors.green.fg_normal,
		term_bright_yellow = colors.yellow.fg_normal,
		term_bright_blue = colors.blue.fg_normal,
		term_bright_magenta = colors.purple.fg_normal,
		term_bright_cyan = colors.cyan.fg_normal,
		term_bright_white = dsl.get { "term_white" },
	}
end

-- gen_status_colors generates colors used for status messages and user
-- feedback. Examples include Git diffs, error messages, LSP inlay hints,
-- LSP diagnostics, etc.
local function gen_status_colors(cfg)
	local colors = cfg.colors
	return {
		success = {
			fg = colors.green.fg,
			bg = colors.green.bg,
			fg_normal = colors.green.fg_normal,
		},
		error = {
			fg = colors.red.fg,
			bg = colors.red.bg,
			fg_normal = colors.red.fg_normal,
		},
		warning = {
			fg = colors.yellow.fg,
			bg = colors.yellow.bg,
			fg_normal = colors.yellow.fg_normal,
		},
		info = {
			fg = colors.blue.fg,
			bg = colors.blue.bg,
			fg_normal = colors.blue.fg_normal,
		},
		accent = {
			fg = colors.orange.fg,
			bg = colors.orange.bg,
			fg_normal = colors.orange.fg_normal,
		},
	}
end

-- gen_canvases generates a set of canvases with different brightness
-- levels. Think of a canvas like a piece of paper with a background
-- and a foreground color, a border color (for UI elements) and
-- two increasingly less contrasted foreground colors. The idea is
-- that a typical UI has a few layers of canvases. There's the base
-- canvas showing your code but also popups, sidebars, status bars, etc.
local function gen_canvases(cfg)
	local fg = cfg.fg
	local bg = cfg.bg
	local canvas = {
		fg_faint = dsl.brighter_contrast(dsl.get { "canvas", "fg" }, 5),
		fg_muted = dsl.brighter_contrast(dsl.get { "canvas", "fg" }, 3),
		fg = fg,
		bg = bg,
		border = dsl.darker_contrast(dsl.get { "canvas", "bg" }, 1.5),
	}

	local layers = {}

	local prev = canvas
	for i = 1, 4 do
		local layer = {
			fg_faint = dsl.darker_contrast(prev.fg_faint, 1.2),
			fg_muted = dsl.darker_contrast(prev.fg_muted, 1.1),
			fg = dsl.darker_contrast(prev.fg, 1.1),
			bg = dsl.darker_contrast(prev.bg, 1.1),
			border = dsl.darker_contrast(prev.bg, 1.5),
		}
		layers[string.format("layer%d", i)] = layer
		prev = layer
	end

	return table.merge({ canvas = canvas }, layers)
end

return {
	gen_canvases = gen_canvases,
	gen_status_colors = gen_status_colors,
	gen_term_colors = gen_term_colors,
}
