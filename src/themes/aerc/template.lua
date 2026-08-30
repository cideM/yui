local interpolate = require("lib/strings").interpolate

-- The two resets clear aerc's built-in styling so every object below starts
-- from the terminal default rather than inheriting a colour we never set.
return function(colors)
	return interpolate(
		[[
# vim: ft=dosini

*.default=true
*.normal=true

default.fg=${aerc_fg}
default.bg=${aerc_bg}

error.fg=${aerc_error_fg}
error.bold=true
warning.fg=${aerc_warning_fg}
success.fg=${aerc_success_fg}

title.fg=${aerc_status_fg}
title.bg=${aerc_status_bg}
title.bold=true
header.fg=${aerc_info_fg}
header.bold=true
border.fg=${aerc_border}
spinner.fg=${aerc_accent}

tab.fg=${aerc_tab_fg}
tab.bg=${aerc_tab_bg}
tab.selected.fg=${aerc_fg}
tab.selected.bg=${aerc_bg}
tab.selected.bold=true

statusline_default.fg=${aerc_status_fg}
statusline_default.bg=${aerc_status_bg}
statusline_error.fg=${aerc_status_error_fg}
statusline_error.bg=${aerc_status_error_bg}
statusline_warning.fg=${aerc_status_warning_fg}
statusline_warning.bg=${aerc_status_warning_bg}
statusline_success.fg=${aerc_status_success_fg}
statusline_success.bg=${aerc_status_success_bg}

*.selected.fg=${aerc_selected_fg}
*.selected.bg=${aerc_selected_bg}

msglist_unread.fg=${aerc_accent}
msglist_unread.bold=true
msglist_answered.fg=${aerc_success_fg}
msglist_forwarded.fg=${aerc_success_fg}
msglist_flagged.fg=${aerc_warning_fg}
msglist_flagged.bold=true
msglist_deleted.fg=${aerc_muted}
msglist_deleted.dim=true
msglist_marked.fg=${aerc_marked_fg}
msglist_marked.bg=${aerc_marked_bg}
msglist_result.fg=${aerc_result_fg}
msglist_result.bg=${aerc_result_bg}
msglist_thread_folded.fg=${aerc_info_fg}
msglist_thread_context.fg=${aerc_muted}
msglist_thread_orphan.fg=${aerc_faint}
msglist_gutter.bg=${aerc_gutter_bg}
msglist_pill.fg=${aerc_pill_fg}
msglist_pill.bg=${aerc_pill_bg}

dirlist_unread.fg=${aerc_accent}
dirlist_unread.bold=true
dirlist_recent.fg=${aerc_info_fg}

completion_default.fg=${aerc_status_fg}
completion_default.bg=${aerc_status_bg}
completion_description.fg=${aerc_muted}
completion_description.dim=true
completion_gutter.bg=${aerc_gutter_bg}
completion_pill.fg=${aerc_pill_fg}
completion_pill.bg=${aerc_pill_bg}

selector_focused.fg=${aerc_marked_fg}
selector_focused.bg=${aerc_marked_bg}
selector_focused.bold=true
selector_chooser.bold=true

part_mimetype.fg=${aerc_muted}
part_filename.fg=${aerc_info_fg}
part_filename.selected.bold=true

[viewer]
*.default=true
*.normal=true
header.fg=${aerc_info_fg}
header.bold=true
signature.fg=${aerc_muted}
signature.dim=true
url.fg=${aerc_info_fg}
url.underline=true
diff_meta.fg=${aerc_muted}
diff_meta.bold=true
diff_chunk.fg=${aerc_quote4}
diff_chunk_func.fg=${aerc_quote4}
diff_chunk_func.dim=true
diff_add.fg=${aerc_diff_add}
diff_del.fg=${aerc_diff_del}
diff_whitespace.bg=${aerc_diff_whitespace}
quote_1.fg=${aerc_quote1}
quote_2.fg=${aerc_quote2}
quote_3.fg=${aerc_quote3}
quote_4.fg=${aerc_quote4}
quote_4.dim=true
quote_x.fg=${aerc_muted}
quote_x.dim=true
code.fg=${aerc_code}
]],
		colors
	)
end
