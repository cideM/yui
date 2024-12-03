let s:p = {'normal': {}, 'inactive': {}, 'insert': {}, 'replace': {}, 'visual': {}, 'tabline': {}}
let s:p.visual.left = [['#69aafd', '#2e2b42', 75, 236], ['#DCDBDB', '#474356', 253, 239]]
let s:p.tabline.tabsel = [['#DCDBDB', '#353342', 253, 237]]
let s:p.tabline.middle = [['#7b6f7a', '#353342', 243, 237]]
let s:p.tabline.left = [['#7b6f7a', '#353342', 243, 237]]
let s:p.replace.left = [['#ee5c66', '#30293a', 203, 236], ['#DCDBDB', '#474356', 253, 239]]
let s:p.normal.warning = [['#cfb787', '#342d3a', 180, 236]]
let s:p.normal.right = [['#DCDBDB', '#575369', 253, 59], ['#DCDBDB', '#474356', 253, 239], ['#DCDBDB', '#353342', 253, 237]]
let s:p.normal.middle = [['#DCDBDB', '#353342', 253, 237]]
let s:p.normal.left = [['#DCDBDB', '#575369', 253, 59], ['#DCDBDB', '#474356', 253, 239], ['#DCDBDB', '#353342', 253, 237]]
let s:p.normal.error = [['#ee5c66', '#30293a', 203, 236]]
let s:p.insert.left = [['#70cf92', '#2c2f3c', 78, 236], ['#DCDBDB', '#474356', 253, 239]]
let s:p.inactive.right = [['#7b6f7a', '#353342', 243, 237], ['#7b6f7a', '#353342', 243, 237], ['#7b6f7a', '#353342', 243, 237]]
let s:p.inactive.middle = [['#7b6f7a', '#353342', 243, 237]]
let s:p.inactive.left = [['#7b6f7a', '#353342', 243, 237], ['#7b6f7a', '#353342', 243, 237], ['#7b6f7a', '#353342', 243, 237]]
let g:lightline#colorscheme#yui_dark#palette = lightline#colorscheme#fill(s:p)

