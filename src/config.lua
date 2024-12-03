local dsl = require "lib/dsl"

local brighten = dsl.brighter_contrast

return {
	light = {
		theme_name = "yui",
		fg = "#3D3C44",
		bg = "#F1EDED",
		canvas = {
			fg = dsl.get { "light", "fg" },
			bg = dsl.get { "light", "bg" },
			fg_faint = dsl.blend(
				dsl.get { "light", "canvas", "fg" },
				dsl.get { "light", "canvas", "bg" },
				0.9
			),
			fg_muted = dsl.blend(
				dsl.get { "light", "canvas", "fg" },
				dsl.get { "light", "canvas", "bg" },
				0.6
			),
			border = dsl.darker_contrast(
				dsl.get { "light", "canvas", "bg" },
				2
			),
		},
		layer1 = {
			fg = dsl.get { "light", "fg" },
			bg = dsl.darker_contrast(dsl.get { "light", "canvas", "bg" }, 0.6),
			fg_faint = dsl.blend(
				dsl.get { "light", "layer1", "fg" },
				dsl.get { "light", "layer1", "bg" },
				0.8
			),
			fg_muted = dsl.blend(
				dsl.get { "light", "layer1", "fg" },
				dsl.get { "light", "layer1", "bg" },
				0.6
			),
			border = dsl.darker_contrast(
				dsl.get { "light", "layer1", "bg" },
				2
			),
		},
		layer2 = {
			fg = dsl.get { "light", "fg" },
			bg = dsl.darker_contrast(dsl.get { "light", "layer1", "bg" }, 1),
			fg_faint = dsl.blend(
				dsl.get { "light", "layer2", "fg" },
				dsl.get { "light", "layer2", "bg" },
				0.8
			),
			fg_muted = dsl.blend(
				dsl.get { "light", "layer2", "fg" },
				dsl.get { "light", "layer2", "bg" },
				0.6
			),
			border = dsl.darker_contrast(
				dsl.get { "light", "layer2", "bg" },
				2
			),
		},
		layer3 = {
			fg = dsl.get { "light", "fg" },
			bg = dsl.darker_contrast(dsl.get { "light", "layer2", "bg" }, 1),
			fg_faint = dsl.blend(
				dsl.get { "light", "layer3", "fg" },
				dsl.get { "light", "layer3", "bg" },
				0.8
			),
			fg_muted = dsl.blend(
				dsl.get { "light", "layer3", "fg" },
				dsl.get { "light", "layer3", "bg" },
				0.6
			),
			border = dsl.darker_contrast(
				dsl.get { "light", "layer3", "bg" },
				2
			),
		},
		colors = {
			yellow = { fg = "#706700", bg = "#FFEA00", fg_normal = "#b17900" },
			purple = { fg = "#8f35bd", bg = "#f3d1ff", fg_normal = "#8f35bd" },
			blue = { fg = "#3856d1", fg_normal = "#3856d1", bg = "#DDE4F8" },
			green = { fg = "#346e27", fg_normal = "#346e27", bg = "#C5E8BF" },
			red = { fg = "#B22E32", fg_normal = "#B22E32", bg = "#F4D7D7" },
			cyan = { fg = "#2c6a73", fg_normal = "#2c6a73", bg = "#C1E3E6" },
			orange = { fg = "#C43E1C", fg_normal = "#C43E1C", bg = "#FDEFED" },
		},
		success = {
			fg = dsl.darker_contrast(dsl.get { "light", "success", "bg" }, 6),
			bg = dsl.blend(
				brighten(dsl.get { "light", "colors", "green", "fg" }, 4.5),
				dsl.get { "light", "canvas", "bg" },
				0.35
			),
			fg_normal = dsl.get { "light", "colors", "green", "fg_normal" },
		},
		error = {
			fg = dsl.get { "light", "colors", "red", "fg" },
			bg = dsl.blend(
				brighten(dsl.get { "light", "colors", "red", "fg" }, 4.5),
				dsl.get { "light", "canvas", "bg" },
				0.2
			),
			fg_normal = dsl.get { "light", "colors", "red", "fg_normal" },
		},
		warning = {
			fg = dsl.darker_contrast(dsl.get { "light", "warning", "bg" }, 6),
			bg = dsl.blend(
				brighten(dsl.get { "light", "colors", "yellow", "fg" }, 4.5),
				dsl.get { "light", "canvas", "bg" },
				0.1
			),
			fg_normal = dsl.get { "light", "colors", "yellow", "fg_normal" },
		},
		info = {
			fg = dsl.get { "light", "colors", "blue", "fg" },
			bg = dsl.blend(
				brighten(dsl.get { "light", "colors", "blue", "fg" }, 3.5),
				dsl.get { "light", "canvas", "bg" },
				0.1
			),
			fg_normal = dsl.get { "light", "colors", "blue", "fg_normal" },
		},
		accent = {
			fg = dsl.get { "light", "colors", "orange", "fg" },
			bg = dsl.blend(
				brighten(dsl.get { "light", "colors", "orange", "fg" }, 3.5),
				dsl.get { "light", "canvas", "bg" },
				0.3
			),
			fg_normal = dsl.get { "light", "colors", "orange", "fg_normal" },
		},
		term_black = dsl.get { "light", "fg" },
		term_red = dsl.get { "light", "colors", "red", "fg_normal" },
		term_green = dsl.get { "light", "colors", "green", "fg_normal" },
		term_yellow = dsl.get { "light", "colors", "yellow", "fg_normal" },
		term_blue = dsl.get { "light", "colors", "blue", "fg_normal" },
		term_magenta = dsl.get { "light", "colors", "purple", "fg_normal" },
		term_cyan = dsl.get { "light", "colors", "cyan", "fg_normal" },
		term_white = brighten(dsl.get { "light", "fg" }, 3.5),
		term_bright_black = dsl.get { "light", "fg" },
		term_bright_red = dsl.get { "light", "colors", "red", "fg_normal" },
		term_bright_green = dsl.get { "light", "colors", "green", "fg_normal" },
		term_bright_yellow = dsl.get { "light", "colors", "yellow", "fg_normal" },
		term_bright_blue = dsl.get { "light", "colors", "blue", "fg_normal" },
		term_bright_magenta = dsl.get {
			"light",
			"colors",
			"purple",
			"fg_normal",
		},
		term_bright_cyan = dsl.get { "light", "colors", "cyan", "fg_normal" },
		term_bright_white = dsl.get { "light", "term_white" },
	},
	dark = {
		theme_name = "yui_dark",
		fg = "#DCDBDB",
		bg = "#23212C",
		canvas = {
			fg = dsl.get { "dark", "fg" },
			bg = dsl.get { "dark", "bg" },
			fg_faint = dsl.blend(
				dsl.get { "dark", "canvas", "fg" },
				dsl.get { "dark", "canvas", "bg" },
				0.9
			),
			fg_muted = dsl.blend(
				dsl.get { "dark", "canvas", "fg" },
				dsl.get { "dark", "canvas", "bg" },
				0.6
			),
			border = brighten(dsl.get { "dark", "canvas", "bg" }, 2),
		},
		layer1 = {
			fg = dsl.get { "dark", "fg" },
			bg = brighten(dsl.get { "dark", "canvas", "bg" }, 1.3),
			fg_faint = dsl.blend(
				dsl.get { "dark", "layer1", "fg" },
				dsl.get { "dark", "layer1", "bg" },
				0.8
			),
			fg_muted = dsl.blend(
				dsl.get { "dark", "layer1", "fg" },
				dsl.get { "dark", "layer1", "bg" },
				0.6
			),
			border = brighten(dsl.get { "dark", "layer1", "bg" }, 2),
		},
		layer2 = {
			fg = dsl.get { "dark", "fg" },
			bg = brighten(dsl.get { "dark", "layer1", "bg" }, 1.3),
			fg_faint = dsl.blend(
				dsl.get { "dark", "layer2", "fg" },
				dsl.get { "dark", "layer2", "bg" },
				0.8
			),
			fg_muted = dsl.blend(
				dsl.get { "dark", "layer2", "fg" },
				dsl.get { "dark", "layer2", "bg" },
				0.6
			),
			border = brighten(dsl.get { "dark", "layer2", "bg" }, 2),
		},
		layer3 = {
			fg = dsl.get { "dark", "fg" },
			bg = brighten(dsl.get { "dark", "layer2", "bg" }, 1.3),
			fg_faint = dsl.blend(
				dsl.get { "dark", "layer3", "fg" },
				dsl.get { "dark", "layer3", "bg" },
				0.8
			),
			fg_muted = dsl.blend(
				dsl.get { "dark", "layer3", "fg" },
				dsl.get { "dark", "layer3", "bg" },
				0.6
			),
			border = brighten(dsl.get { "dark", "layer3", "bg" }, 2),
		},
		colors = {
			yellow = { fg = "#cfb787", bg = "#473f50", fg_normal = "#cfb787" },
			purple = { fg = "#b5a0ff", bg = "#3f3a52", fg_normal = "#b5a0ff" },
			blue = { fg = "#69aafd", fg_normal = "#69aafd", bg = "#3d3b51" },
			green = { fg = "#70cf92", fg_normal = "#70cf92", bg = "#373f39" },
			red = { fg = "#ee5c66", fg_normal = "#F55661", bg = "#443C51" },
			cyan = { fg = "#58c2c9", fg_normal = "#18c6ce", bg = "#2d3e3f" },
			orange = { fg = "#E66F51", fg_normal = "#E66F51", bg = "#30241C" },
			pink = { fg = "#ED82BD", fg_normal = "#ED82BD", bg = "#290519" },
		},
		success = {
			fg = dsl.get { "dark", "colors", "green", "fg" },
			bg = dsl.blend(
				dsl.get { "dark", "colors", "green", "fg" },
				dsl.get { "dark", "canvas", "bg" },
				0.9
			),
			fg_normal = dsl.get { "dark", "colors", "green", "fg_normal" },
		},
		error = {
			fg = dsl.get { "dark", "colors", "red", "fg" },
			bg = dsl.blend(
				dsl.get { "dark", "colors", "red", "fg" },
				dsl.get { "dark", "canvas", "bg" },
				0.9
			),
			fg_normal = dsl.get { "dark", "colors", "red", "fg_normal" },
		},
		warning = {
			fg = dsl.get { "dark", "colors", "yellow", "fg" },
			bg = dsl.blend(
				dsl.get { "dark", "colors", "yellow", "fg" },
				dsl.get { "dark", "canvas", "bg" },
				0.9
			),
			fg_normal = dsl.get { "dark", "colors", "yellow", "fg_normal" },
		},
		info = {
			fg = dsl.get { "dark", "colors", "blue", "fg" },
			bg = dsl.blend(
				dsl.get { "dark", "colors", "blue", "fg" },
				dsl.get { "dark", "canvas", "bg" },
				0.9
			),
			fg_normal = dsl.get { "dark", "colors", "blue", "fg_normal" },
		},
		accent = {
			fg = dsl.get { "dark", "colors", "orange", "fg" },
			bg = dsl.blend(
				dsl.get { "dark", "colors", "orange", "fg" },
				dsl.get { "dark", "canvas", "bg" },
				0.85
			),
			fg_normal = dsl.get { "dark", "colors", "orange", "fg_normal" },
		},
		term_black = dsl.get { "dark", "fg" },
		term_red = dsl.get { "dark", "colors", "red", "fg_normal" },
		term_green = dsl.get { "dark", "colors", "green", "fg_normal" },
		term_yellow = dsl.get { "dark", "colors", "yellow", "fg_normal" },
		term_blue = dsl.get { "dark", "colors", "blue", "fg_normal" },
		term_magenta = dsl.get { "dark", "colors", "purple", "fg_normal" },
		term_cyan = dsl.get { "dark", "colors", "cyan", "fg_normal" },
		term_white = brighten(dsl.get { "dark", "fg" }, 3.5),
		term_bright_black = dsl.get { "dark", "fg" },
		term_bright_red = dsl.get { "dark", "colors", "red", "fg_normal" },
		term_bright_green = dsl.get { "dark", "colors", "green", "fg_normal" },
		term_bright_yellow = dsl.get { "dark", "colors", "yellow", "fg_normal" },
		term_bright_blue = dsl.get { "dark", "colors", "blue", "fg_normal" },
		term_bright_magenta = dsl.get {
			"dark",
			"colors",
			"purple",
			"fg_normal",
		},
		term_bright_cyan = dsl.get { "dark", "colors", "cyan", "fg_normal" },
		term_bright_white = dsl.get { "dark", "term_white" },
	},
}
