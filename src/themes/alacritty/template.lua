local interpolate = require("lib/strings").interpolate

local M = {}

M.yaml = function(colors)
	return interpolate(
		[[
{ 
	"colors": {
		"primary": {
			"foreground": "${primary_fg}",
			"background": "${primary_bg}",
			"dim_foreground": "${primary_dim_fg}",
		},
		"cursor": {
			"text": "CellBackground",
			"cursor": "CellForeground",
		},
		"vi_mode_cursor": {
			"text": "CellBackground",
			"cursor": "CellForeground",
		},
		"search": {
			"matches": {
				"foreground": "${matches_fg}",
				"background": "${matches_bg}",
			},
			"focused_match": {
				"foreground": "${focused_match_fg}",
				"background": "${focused_match_bg}",
			},
		},
		"hints": {
			"start": {
				"foreground": "${HintsStartForeground}",
				"background": "${HintsStartBackground}",
			},
			"end": {
				"foreground": "${HintsEndForeground}",
				"background": "${HintsEndBackground}",
			},
		},
		"line_indicator": {
			"foreground": "${LineIndicatorForeground}",
			"background": "${LineIndicatorBackground}",
		},
		"footer_bar": {
			"foreground": "${footer_fg}",
			"background": "${footer_bg}",
		},
		"selection": {
			"text": "${selection_fg}",
			"background": "${selection_bg}",
		},
		"normal": {
			"black": "${normal_black}",
			"red": "${normal_red}",
			"green": "${normal_green}",
			"yellow": "${normal_yellow}",
			"blue": "${normal_blue}",
			"magenta": "${normal_magenta}",
			"cyan": "${normal_cyan}",
			"white": "${normal_white}",
		},
		"bright": {
			"black": "${bright_black}",
			"red": "${bright_red}",
			"green": "${bright_green}",
			"yellow": "${bright_yellow}",
			"blue": "${bright_blue}",
			"magenta": "${bright_magenta}",
			"cyan": "${bright_cyan}",
			"white": "${bright_white}",
		}
	}
}
		]],
		colors
	)
end

M.msg = function(colors)
	-- alacritty msg config -w -1 'colors.primary.background="#CCCCCC"' 'colors.primary.foreground="#FF0000"'
	-- https://github.com/alacritty/alacritty/issues/8225
	-- can't use colors.cursor.text and other aliases

	return interpolate(
		[[
		alacritty msg config -w -1\
			'colors.primary.foreground="${primary_fg}"'\
			'colors.primary.background="${primary_bg}"'\
			'colors.primary.dim_foreground="${primary_dim_fg}"'\
			'colors.cursor.foreground="CellBackground"'\
			'colors.cursor.background="CellForeground"'\
			'colors.vi_mode_cursor.foreground="CellBackground"'\
			'colors.vi_mode_cursor.background="CellForeground"'\
			'colors.search.matches.foreground="${matches_fg}"'\
			'colors.search.matches.background="${matches_bg}"'\
			'colors.search.focused_match.foreground="${focused_match_fg}"'\
			'colors.search.focused_match.background="${focused_match_bg}"'\
			'colors.hints.start.foreground="${HintsStartForeground}"'\
			'colors.hints.start.background="${HintsStartBackground}"'\
			'colors.hints.end.foreground="${HintsEndForeground}"'\
			'colors.hints.end.background="${HintsEndBackground}"'\
			'colors.line_indicator.foreground="${LineIndicatorForeground}"'\
			'colors.line_indicator.background="${LineIndicatorBackground}"'\
			'colors.footer_bar.foreground="${footer_fg}"'\
			'colors.footer_bar.background="${footer_bg}"'\
			'colors.selection.foreground="${selection_fg}"'\
			'colors.selection.background="${selection_bg}"'\
			'colors.normal.black="${normal_black}"'\
			'colors.normal.red="${normal_red}"'\
			'colors.normal.green="${normal_green}"'\
			'colors.normal.yellow="${normal_yellow}"'\
			'colors.normal.blue="${normal_blue}"'\
			'colors.normal.magenta="${normal_magenta}"'\
			'colors.normal.cyan="${normal_cyan}"'\
			'colors.normal.white="${normal_white}"'\
			'colors.bright.black="${normal_black}"'\
			'colors.bright.red="${normal_red}"'\
			'colors.bright.green="${normal_green}"'\
			'colors.bright.yellow="${normal_yellow}"'\
			'colors.bright.blue="${normal_blue}"'\
			'colors.bright.magenta="${normal_magenta}"'\
			'colors.bright.cyan="${normal_cyan}"'\
			'colors.bright.white="${normal_white}"'
	]],
		colors
	)
end

M.toml = function(colors)
	return interpolate(
		[[
[colors]
[colors.primary]
foreground = "${primary_fg}"
background = "${primary_bg}"
dim_foreground = "${primary_dim_fg}"
[colors.cursor]
text = "CellBackground"
cursor = "CellForeground"
[colors.vi_mode_cursor]
text = "CellBackground"
cursor = "CellForeground"
[colors.search]
[colors.search.matches]
foreground = "${matches_fg}"
background = "${matches_bg}"
[colors.search.focused_match]
foreground = "${focused_match_fg}"
background = "${focused_match_bg}"
[colors.hints]
[colors.hints.start]
foreground = "${HintsStartForeground}"
background = "${HintsStartBackground}"
[colors.hints.end]
foreground = "${HintsEndForeground}"
background = "${HintsEndBackground}"
[colors.line_indicator]
foreground = "${LineIndicatorForeground}"
background = "${LineIndicatorBackground}"
[colors.footer_bar]
foreground = "${footer_fg}"
background = "${footer_bg}"
[colors.selection]
text = "${selection_fg}"
background = "${selection_bg}"
[colors.normal]
black = "${normal_black}"
red = "${normal_red}"
green = "${normal_green}"
yellow = "${normal_yellow}"
blue = "${normal_blue}"
magenta = "${normal_magenta}"
cyan = "${normal_cyan}"
white = "${normal_white}"
[colors.bright]
black = "${bright_black}"
red = "${bright_red}"
green = "${bright_green}"
yellow = "${bright_yellow}"
blue = "${bright_blue}"
magenta = "${bright_magenta}"
cyan = "${bright_cyan}"
white = "${bright_white}"
]],
		colors
	)
end

return M
