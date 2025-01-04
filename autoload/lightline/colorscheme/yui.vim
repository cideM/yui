let s:p = {'normal': {}, 'inactive': {}, 'insert': {}, 'replace': {}, 'visual': {}, 'tabline': {}}
let s:p.visual.left = [['#42267d', '#ccc2f2', 54, 183], ['#5c4040', '#e5dede', 239, 254]]
let s:p.tabline.tabsel = [['#5c4040', '#e6dfdf', 239, 254]]
let s:p.tabline.middle = [['#a57575', '#e9e3e3', 138, 254]]
let s:p.tabline.left = [['#a57575', '#e9e3e3', 138, 254]]
let s:p.replace.left = [['#B22E32', '#f2d8d8', 125, 224], ['#5c4040', '#e5dede', 239, 254]]
let s:p.normal.warning = [['#615413', '#fde37c', 58, 222]]
let s:p.normal.right = [['#614343', '#dbd1d1', 239, 188], ['#5c4040', '#e5dede', 239, 254], ['#604747', '#ebe6e6', 239, 254]]
let s:p.normal.middle = [['#604747', '#ebe6e6', 239, 254]]
let s:p.normal.left = [['#614343', '#dbd1d1', 239, 188], ['#5c4040', '#e5dede', 239, 254], ['#604747', '#ebe6e6', 239, 254]]
let s:p.normal.error = [['#B22E32', '#f2d8d8', 125, 224]]
let s:p.insert.left = [['#565633', '#e8e792', 239, 186], ['#5c4040', '#e5dede', 239, 254]]
let s:p.inactive.right = [['#a57575', '#e9e3e3', 138, 254], ['#a57575', '#e9e3e3', 138, 254], ['#a57575', '#e9e3e3', 138, 254]]
let s:p.inactive.middle = [['#a57575', '#e9e3e3', 138, 254]]
let s:p.inactive.left = [['#a57575', '#e9e3e3', 138, 254], ['#a57575', '#e9e3e3', 138, 254], ['#a57575', '#e9e3e3', 138, 254]]
let g:lightline#colorscheme#yui#palette = lightline#colorscheme#fill(s:p)

