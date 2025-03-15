let s:p = {'normal': {}, 'inactive': {}, 'insert': {}, 'replace': {}, 'visual': {}, 'tabline': {}}
let s:p.visual.left = [['#69aafd', '#292a3d', 75, 236], ['#c8c8d0', '#2e2e3c', 251, 236]]
let s:p.tabline.tabsel = [['#9fa4a4', '#151717', 247, 233]]
let s:p.tabline.middle = [['#3e4249', '#1c1e22', 238, 234]]
let s:p.tabline.left = [['#3e4249', '#1c1e22', 238, 234]]
let s:p.replace.left = [['#ee5c66', '#2c2737', 203, 236], ['#c8c8d0', '#2e2e3c', 251, 236]]
let s:p.normal.warning = [['#cfb787', '#302b38', 180, 236]]
let s:p.normal.right = [['#c8c8d0', '#373747', 251, 237], ['#c8c8d0', '#2e2e3c', 251, 236], ['#a0a0ad', '#252531', 248, 235]]
let s:p.normal.middle = [['#a0a0ad', '#252531', 248, 235]]
let s:p.normal.left = [['#c8c8d0', '#373747', 251, 237], ['#c8c8d0', '#2e2e3c', 251, 236], ['#a0a0ad', '#252531', 248, 235]]
let s:p.normal.error = [['#ee5c66', '#2c2737', 203, 236]]
let s:p.insert.left = [['#70cf92', '#2a2d35', 78, 236], ['#c8c8d0', '#2e2e3c', 251, 236]]
let s:p.inactive.right = [['#3e4249', '#1c1e22', 238, 234], ['#3e4249', '#1c1e22', 238, 234], ['#3e4249', '#1c1e22', 238, 234]]
let s:p.inactive.middle = [['#3e4249', '#1c1e22', 238, 234]]
let s:p.inactive.left = [['#3e4249', '#1c1e22', 238, 234], ['#3e4249', '#1c1e22', 238, 234], ['#3e4249', '#1c1e22', 238, 234]]
let g:lightline#colorscheme#yui_dark#palette = lightline#colorscheme#fill(s:p)

