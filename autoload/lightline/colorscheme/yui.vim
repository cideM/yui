let s:p = {'normal': {}, 'inactive': {}, 'insert': {}, 'replace': {}, 'visual': {}, 'tabline': {}}
let s:p.visual.left = [['#2D199F', '#c3c3ea', 19, 252], ['#4c3b3b', '#dbcfcf', 238, 252]]
let s:p.tabline.tabsel = [['#423333', '#d2c3c3', 237, 251]]
let s:p.tabline.middle = [['#655b5b', '#dfd5d5', 59, 188]]
let s:p.tabline.left = [['#655b5b', '#dfd5d5', 59, 188]]
let s:p.replace.left = [['#ffebeb', '#A50303', 255, 124], ['#4c3b3b', '#dbcfcf', 238, 252]]
let s:p.normal.warning = [['#fee264', '#554717', 221, 58]]
let s:p.normal.right = [['#574444', '#e4dbdb', 239, 253], ['#4c3b3b', '#dbcfcf', 238, 252], ['#423333', '#d2c3c3', 237, 251]]
let s:p.normal.middle = [['#423333', '#d2c3c3', 237, 251]]
let s:p.normal.left = [['#574444', '#e4dbdb', 239, 253], ['#4c3b3b', '#dbcfcf', 238, 252], ['#423333', '#d2c3c3', 237, 251]]
let s:p.normal.error = [['#ffebeb', '#A50303', 255, 124]]
let s:p.insert.left = [['#daf3c5', '#38551E', 194, 237], ['#4c3b3b', '#dbcfcf', 238, 252]]
let s:p.inactive.right = [['#665e57', '#f1eded', 59, 255], ['#615953', '#ede7e7', 240, 255], ['#5c544f', '#e8e1e1', 240, 254]]
let s:p.inactive.middle = [['#574f4b', '#e3dbdb', 239, 253]]
let s:p.inactive.left = [['#665e57', '#f1eded', 59, 255], ['#615953', '#ede7e7', 240, 255], ['#5c544f', '#e8e1e1', 240, 254]]
let g:lightline#colorscheme#yui#palette = lightline#colorscheme#fill(s:p)

