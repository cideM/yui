local interpolate = require("lib/strings").interpolate

return function(theme_name)
	return interpolate(
		[[
if (!has('gui_running') && &t_Co < 256 && !has('nvim'))
  finish
endif

hi clear

if exists('syntax_on')
  syntax reset
endif

let script_dir = fnamemodify(expand('<sfile>:p'), ':h')
if &background == 'dark'
  execute 'source ' . script_dir . '/${theme_name}_dark.vim'
else
  execute 'source ' . script_dir . '/${theme_name}_light.vim'
endif

let g:colors_name = '${theme_name}'
]],
		{ theme_name = theme_name }
	)
end
