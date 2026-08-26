local function gen_variant(context, dsl)
	local get = dsl.get
	return {
		aerc_fg = get { "Normal", "guifg" },
		aerc_bg = get { "Normal", "guibg" },
		aerc_muted = context.canvas.fg_muted,
		aerc_faint = context.canvas.fg_faint,
		aerc_border = context.canvas.border,
		aerc_accent = context.accent.fg_normal,
		aerc_error_fg = context.error.fg_normal,
		aerc_warning_fg = context.warning.fg_normal,
		aerc_success_fg = context.success.fg_normal,
		aerc_info_fg = context.info.fg_normal,
		aerc_marked_fg = context.info.fg,
		aerc_marked_bg = context.info.bg,
		aerc_status_fg = context.layer2.fg,
		aerc_status_bg = context.layer2.bg,
		aerc_status_error_fg = context.error.fg,
		aerc_status_error_bg = context.error.bg,
		aerc_status_warning_fg = context.warning.fg,
		aerc_status_warning_bg = context.warning.bg,
		aerc_status_success_fg = context.success.fg,
		aerc_status_success_bg = context.success.bg,
		aerc_tab_fg = context.layer1.fg_muted,
		aerc_tab_bg = context.layer1.bg,
		aerc_pill_fg = context.layer3.fg,
		aerc_pill_bg = context.layer3.bg,
		aerc_gutter_bg = context.layer1.bg,
		aerc_selected_fg = get { "Visual", "guifg" },
		aerc_selected_bg = get { "Visual", "guibg" },
		aerc_result_fg = get { "CurSearch", "guifg" },
		aerc_result_bg = get { "CurSearch", "guibg" },
		aerc_diff_add = context.success.fg_normal,
		aerc_diff_del = context.error.fg_normal,
		aerc_diff_whitespace = context.error.bg,
		aerc_quote1 = get { "TermBlue" },
		aerc_quote2 = get { "TermGreen" },
		aerc_quote3 = get { "TermPurple" },
		aerc_quote4 = get { "TermCyan" },
		aerc_code = get { "TermCyan" },
	}
end

return function(context, dsl)
	return {
		light = gen_variant(context.light, dsl),
		dark = gen_variant(context.dark, dsl),
	}
end
