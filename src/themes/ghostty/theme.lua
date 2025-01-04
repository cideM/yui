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
		palette9 = get { "TermBrightBlack" },
		palette10 = get { "TermBrightRed" },
		palette11 = get { "TermBrightGreen" },
		palette12 = get { "TermBrightYellow" },
		palette13 = get { "TermBrightBlue" },
		palette14 = get { "TermBrightPurple" },
		palette15 = get { "TermBrightCyan" },
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
