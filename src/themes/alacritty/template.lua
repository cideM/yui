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
			"text": "${cursor_fg}",
			"cursor": "${cursor_bg}",
		},
		"vi_mode_cursor": {
			"text": "${vi_cursor_fg}",
			"cursor": "${vi_cursor_bg}",
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

M.toml = function(colors)
	return interpolate(
		[[
[colors]
[colors.primary]
foreground = "${primary_fg}"
background = "${primary_bg}"
dim_foreground = "${primary_dim_fg}"
[colors.cursor]
text = "${cursor_fg}"
cursor = "${cursor_bg}"
[colors.vi_mode_cursor]
text = "${vi_cursor_fg}"
cursor = "${vi_cursor_bg}"
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
