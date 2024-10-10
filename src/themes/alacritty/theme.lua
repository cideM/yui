local function gen_variant(context, dsl)
	local get = dsl.get
	return {
		primary_fg = get { "Normal", "guifg" },
		primary_bg = get { "Normal", "guibg" },
		primary_dim_fg = context.canvas.fg_muted,
		cursor_fg = get { "Cursor", "guifg" },
		cursor_bg = get { "Cursor", "guibg" },
		vi_cursor_fg = get { "cursor_fg" },
		vi_cursor_bg = get { "cursor_bg" },
		matches_fg = get { "Search", "guifg" },
		matches_bg = get { "Search", "guibg" },
		focused_match_fg = get { "IncSearch", "guifg" },
		focused_match_bg = get { "IncSearch", "guibg" },
		HintsStartForeground = context.info.fg,
		HintsStartBackground = context.info.bg,
		HintsEndForeground = get { "primary_fg" },
		HintsEndBackground = get { "primary_bg" },
		LineIndicatorForeground = get { "CurSearch", "guifg" },
		LineIndicatorBackground = get { "CurSearch", "guibg" },
		footer_fg = get { "StatusLine", "guifg" },
		footer_bg = get { "StatusLine", "guibg" },
		selection_fg = get { "Visual", "guifg" },
		selection_bg = get { "Visual", "guibg" },
		normal_black = get { "TermBlack" },
		normal_red = get { "TermRed" },
		normal_green = get { "TermGreen" },
		normal_yellow = get { "TermYellow" },
		normal_blue = get { "TermBlue" },
		normal_magenta = get { "TermPurple" },
		normal_cyan = get { "TermCyan" },
		normal_white = get { "TermWhite" },
		bright_black = get { "TermBrightBlack" },
		bright_red = get { "TermBrightRed" },
		bright_green = get { "TermBrightGreen" },
		bright_yellow = get { "TermBrightYellow" },
		bright_blue = get { "TermBrightBlue" },
		bright_magenta = get { "TermBrightPurple" },
		bright_cyan = get { "TermBrightCyan" },
		bright_white = get { "TermBrightWhite" },
		-- dim_black= get { "TermB
		-- dim_red= Contrast(-10, get { "TermRed" },
		-- dim_green= Contrast(-10, get { "TermGreen" },
		-- dim_yellow= Contrast(-10, get { "TermYellow" },
		-- dim_blue= Contrast(-10, get { "TermBlue" },
		-- dim_magenta= Contrast(-10, get { "TermPurple" },
		-- dim_cyan= Contrast(-10, get { "TermCyan" },
		-- dim_white= Contrast(-10, get { "TermWhite" },
	}
end

return function(context, dsl)
	return {
		light = gen_variant(context.light, dsl),
		dark = gen_variant(context.dark, dsl),
	}
end
