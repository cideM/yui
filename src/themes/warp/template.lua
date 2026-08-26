local interpolate = require("lib/strings").interpolate
local merge = require("lib/table").merge

-- Keys are alphabetical, matching the layout Warp writes itself.
return function(colors, name)
	return interpolate(
		[[
accent: "${warp_accent}"
background: "${warp_background}"
cursor: "${warp_cursor}"
details: ${warp_details}
foreground: "${warp_foreground}"
name: "${theme_name}"
terminal_colors:
  bright:
    black: "${warp_bright_black}"
    blue: "${warp_bright_blue}"
    cyan: "${warp_bright_cyan}"
    green: "${warp_bright_green}"
    magenta: "${warp_bright_magenta}"
    red: "${warp_bright_red}"
    white: "${warp_bright_white}"
    yellow: "${warp_bright_yellow}"
  normal:
    black: "${warp_normal_black}"
    blue: "${warp_normal_blue}"
    cyan: "${warp_normal_cyan}"
    green: "${warp_normal_green}"
    magenta: "${warp_normal_magenta}"
    red: "${warp_normal_red}"
    white: "${warp_normal_white}"
    yellow: "${warp_normal_yellow}"
]],
		merge(colors, { theme_name = name })
	)
end
