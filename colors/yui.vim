if (!has('gui_running') && &t_Co < 256 && !has('nvim'))
  finish
endif

hi clear

if exists('syntax_on')
  syntax reset
endif

let script_dir = fnamemodify(expand('<sfile>:p'), ':h')
if &background == 'dark'
  execute 'source ' . script_dir . '/yui_dark.vim'
else
  execute 'source ' . script_dir . '/yui_light.vim'
endif

let g:colors_name = 'yui'

