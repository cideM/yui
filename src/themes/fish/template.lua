local interpolate = require("lib/strings").interpolate

return function(colors)
	colors = require("lib/table").mapkv(function(_, v)
		return v:gsub("#", "")
	end, colors)

	return interpolate(
		[[
set fish_color_normal ${fish_normal}
set fish_color_command ${fish_command}
set fish_color_quote ${fish_quote}
set fish_color_redirection ${fish_redirection} --bold
set fish_color_end ${fish_end}
set fish_color_error ${fish_error}
set fish_color_param ${fish_param} --bold
set fish_color_comment ${fish_comment} --italic
set fish_color_history_current ${fish_history_current}
set fish_color_operator ${fish_operator}
set fish_color_escape ${fish_escape}
set fish_color_cwd ${fish_cwd}
set fish_color_cwd_root ${fish_cwd_root}
set fish_color_valid_path --underline
set fish_color_autosuggestion ${fish_autosuggestion}
set fish_color_user ${fish_user}
set fish_color_host ${fish_host}
set fish_color_cancel -r
set fish_color_option ${fish_option}
set fish_color_keyword ${fish_keyword}
set fish_color_host_remote ${fish_host_remote}
set fish_color_status ${fish_status}
set fish_color_match ${fish_match}
set fish_color_selection --background=${fish_selection_background}
set fish_color_search_match --background=${fish_search_match_background}

set fish_pager_color_prefix ${fish_pager_prefix}
set fish_pager_color_selected_prefix ${fish_pager_selected_prefix}
set fish_pager_color_secondary_prefix ${fish_pager_secondary_prefix}

set fish_pager_color_progress ${fish_pager_progress} --background=${fish_pager_progress_background}
set fish_pager_color_selected_background --background=${fish_pager_selected_background}
set fish_pager_color_background normal
set fish_pager_color_secondary_background normal

set fish_pager_color_description ${fish_pager_description}
set fish_pager_color_selected_description ${fish_pager_selected_description}
set fish_pager_color_secondary_description ${fish_pager_secondary_description}

set fish_pager_color_completion ${fish_pager_completion}
set fish_pager_color_secondary_completion ${fish_pager_secondary_completion}
set fish_pager_color_selected_completion ${fish_pager_selected_completion}
	]],
		colors
	)
end
