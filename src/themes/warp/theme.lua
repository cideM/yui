-- Warp reads 'details' to decide whether its own chrome sits lighter or
-- darker than the terminal background, so it tracks the variant, not a color.
local function gen_variant(context, dsl, details)
	local get = dsl.get
	return {
		warp_details = details,
		warp_accent = context.accent.fg_normal,
		warp_background = get { "Normal", "guibg" },
		warp_foreground = get { "Normal", "guifg" },
		warp_cursor = context.accent.fg_normal,
		warp_normal_black = get { "TermBlack" },
		warp_normal_red = get { "TermRed" },
		warp_normal_green = get { "TermGreen" },
		warp_normal_yellow = get { "TermYellow" },
		warp_normal_blue = get { "TermBlue" },
		warp_normal_magenta = get { "TermPurple" },
		warp_normal_cyan = get { "TermCyan" },
		warp_normal_white = get { "TermWhite" },
		warp_bright_black = get { "TermBrightBlack" },
		warp_bright_red = get { "TermBrightRed" },
		warp_bright_green = get { "TermBrightGreen" },
		warp_bright_yellow = get { "TermBrightYellow" },
		warp_bright_blue = get { "TermBrightBlue" },
		warp_bright_magenta = get { "TermBrightPurple" },
		warp_bright_cyan = get { "TermBrightCyan" },
		warp_bright_white = get { "TermBrightWhite" },
	}
end

return function(context, dsl)
	return {
		light = gen_variant(context.light, dsl, "lighter"),
		dark = gen_variant(context.dark, dsl, "darker"),
	}
end
