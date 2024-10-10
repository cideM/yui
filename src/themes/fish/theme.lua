local function gen_variant(t, dsl)
	local get = dsl.get
	return {
		fish_normal = get { "Normal", "guifg" },
		fish_command = get { "Normal", "guifg" },
		fish_quote = get { "Normal", "guifg" },
		fish_redirection = get { "Normal", "guifg" },
		fish_end = get { "Normal", "guifg" },
		fish_error = get { "ErrorMsg", "guifg" },
		fish_param = get { "Normal", "guifg" },
		fish_comment = get { "OptionFadedComments", "guifg" },
		fish_operator = get { "Normal", "guifg" },
		fish_history_current = get { "PmenuSel", "guifg" },
		fish_escape = get { "Normal", "guifg" },
		fish_cwd = get { "Normal", "guifg" },
		fish_cwd_root = get { "Normal", "guifg" },
		fish_autosuggestion = get { "CopilotSuggestion", "guifg" },
		fish_user = get { "Normal", "guifg" },
		fish_host = get { "Normal", "guifg" },
		fish_option = get { "Normal", "guifg" },
		fish_keyword = get { "Normal", "guifg" },
		fish_host_remote = get { "Normal", "guifg" },
		fish_status = get { "Normal", "guifg" },
		fish_match = get { "Search", "guifg" },
		fish_selection_background = get { "Visual", "guibg" },
		fish_search_match_background = get { "PmenuSel", "guibg" },
		fish_pager_description = get { "NormalNC", "guifg" },
		fish_pager_secondary_description = get { "NormalNC", "guifg" },
		fish_pager_selected_description = get { "PmenuSel", "guifg" },
		fish_pager_prefix = get { "Search", "guifg" },
		fish_pager_selected_prefix = get { "PmenuSel", "guifg" },
		fish_pager_secondary_prefix = get { "fish_pager_prefix" },
		fish_pager_completion = get { "CopilotSuggestion", "guifg" },
		fish_pager_selected_completion = get { "PmenuSel", "guifg" },
		fish_pager_secondary_completion = get { "fish_pager_completion" },
		fish_pager_progress = get { "Normal", "guifg" },
		fish_pager_progress_background = get { "Normal", "guibg" },
		fish_pager_background = get { "Normal", "guibg" },
		fish_pager_secondary_background = get { "Normal", "guibg" },
		fish_pager_selected_background = get { "PmenuSel", "guibg" },
	}
end

return function(t, dsl)
	return {
		light = gen_variant(t.light, dsl),
		dark = gen_variant(t.dark, dsl),
	}
end
