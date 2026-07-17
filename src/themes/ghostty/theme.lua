local function gen_variant(context, dsl)
	local get = dsl.get
	return {
		palette0 = get { "TermBlack" },
		palette1 = get { "TermRed" },
		palette2 = get { "TermGreen" },
		palette3 = get { "TermYellow" },
		palette4 = get { "TermBlue" },
		palette5 = get { "TermPurple" },
		palette6 = get { "TermCyan" },
		palette7 = get { "TermWhite" },
		palette8 = get { "TermBrightBlack" },
		palette9 = get { "TermBrightRed" },
		palette10 = get { "TermBrightGreen" },
		palette11 = get { "TermBrightYellow" },
		palette12 = get { "TermBrightBlue" },
		palette13 = get { "TermBrightPurple" },
		palette14 = get { "TermBrightCyan" },
		palette15 = get { "TermBrightWhite" },
		background = get { "Normal", "guibg" },
		foreground = get { "Normal", "guifg" },
		cursor_color = context.accent.fg_normal,
		selection_background = get { "Visual", "guibg" },
		selection_foreground = get { "Visual", "guifg" },
	}
end

return function(context, dsl)
	return {
		light = gen_variant(context.light, dsl),
		dark = gen_variant(context.dark, dsl),
	}
end
