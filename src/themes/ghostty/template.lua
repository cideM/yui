local interpolate = require("lib/strings").interpolate

return function(colors)
	return interpolate(
		[[
palette = 0=${palette0}
palette = 1=${palette1}
palette = 2=${palette2}
palette = 3=${palette3}
palette = 4=${palette4}
palette = 5=${palette5}
palette = 6=${palette6}
palette = 7=${palette7}
palette = 8=${palette8}
palette = 9=${palette9}
palette = 10=${palette10}
palette = 11=${palette11}
palette = 12=${palette12}
palette = 13=${palette13}
palette = 14=${palette14}
palette = 15=${palette15}
background = ${background}
foreground = ${foreground}
cursor-color = ${cursor_color}
selection-background = ${selection_background}
selection-foreground = ${selection_foreground}
	]],
		colors
	)
end
