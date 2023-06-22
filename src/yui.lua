local Theme = require("theme")
local Lightline = require("lightline")
local TerminalColors = require("terminal_colors").TerminalColors
local contrast = require("colour").contrast
local Report = require("report")
local lighten = require("colour").lightness

local colors = {
	black = "#504944",
	purple = "#2D199F",
	dark_blue = "#1E5571",
	dark_green = "#38551E",
	dark_red = "#A50303",
	dark_yellow = "#605001",
	dark_cyan = "#29574E",
}

local rating_to_contrast = {
	AA = 4.5,
	AAA = 7,
}

local function find_bg(color, rating)
	local target_contrast = rating_to_contrast[rating]
	if not target_contrast then
		error("invalid rating: " .. rating)
		os.exit(1)
	end

	local bg = color
	while contrast(color, bg) < target_contrast and bg ~= "#ffffff" do
		bg = lighten(bg, 0.5):lower()
	end

	return bg, bg ~= "#ffffff"
end

local report = Report {}

for _, x in ipairs {
	{ "black", "white" },
	{ "purple", "light_purple" },
	{ "dark_blue", "light_blue" },
	{ "dark_green", "light_green" },
	{ "dark_red", "light_red" },
	{ "dark_yellow", "light_yellow" },
	{ "dark_cyan", "light_cyan" },
} do
	local old, new = x[1], x[2]
	local bg, valid = find_bg(colors[old], "AAA")
	if not valid then
		print("couldn't find bg for " .. old)
		os.exit(1)
	end

	colors[new] = bg

	report:add(string.format("%s - %s", old, new), colors[old], bg)
end

local palette = {
	fg = colors.black,
	fg_muted = lighten(colors.black, 14),
	fg_dim = lighten(colors.white, -12),
	bg = lighten(colors.white, 3),
	menu_fg = colors.black,
	menu_bg = lighten(colors.white, -2),
	statusline_fg = lighten(colors.black, -7),
	statusline_bg = lighten(colors.white, -7),
	success_bg = colors.light_green,
	success_fg = colors.dark_green,
	warning_bg = colors.light_yellow,
	warning_fg = colors.dark_yellow,
	error_bg = colors.light_red,
	error_fg = colors.dark_red,
	info_bg = colors.light_blue,
	info_fg = colors.dark_blue,
	focus_fg = colors.purple,
	focus_bg = colors.light_purple,
}

local term_colors = TerminalColors {
	palette.fg,
	palette.error_fg,
	palette.success_fg,
	palette.warning_fg,
	palette.info_fg,
	palette.focus_fg,
	colors.dark_cyan,
	palette.bg,
	palette.fg,
	palette.error_fg,
	palette.success_fg,
	palette.warning_fg,
	palette.info_fg,
	palette.focus_fg,
	colors.dark_cyan,
	palette.bg,
}

-- empty colors to force lookups to use the __index metamethod, which can
-- then exit and warn you that you should from now on use the "palette" colors.
colors = {}
setmetatable(colors, {
	__index = function()
		print("get colors from palette instead")
		os.exit(1)
	end,
})

local theme = Theme {
	name = "yui",
	palette = palette,
	colors = {
		[[" Terminal Colors ]],
		term_colors,
		table.unpack(require("make_hl")(palette)),
	},
}

for x in theme:hlgroup_iter() do
	if x.guifg and x.guifg:sub(0, 1) == "#" and x.guibg and x.guibg:sub(0, 1) == "#" then
		report:add(x.name, x.guifg, x.guibg)
	end
end

for x in theme:termcolors_iter() do
	for _, hex in ipairs(x) do
		if hex ~= palette.bg then
			report:add(string.format("%s %s", hex, palette.bg), hex, palette.bg)
		end
	end
end

local lightline = Lightline(palette)

return {
	theme = theme,
	report = tostring(report),
	lightline = lightline,
}
