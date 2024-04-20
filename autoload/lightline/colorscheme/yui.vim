let s:p = {'normal': {}, 'inactive': {}, 'insert': {}, 'replace': {}, 'visual': {}, 'tabline': {}}
let s:p.visual.left = [['#3856d1', '#DDE4F8', 62, 189], ['#303036', '#dcd2d2', 236, 188]]
let s:p.tabline.tabsel = [['#37363e', '#e6dfdf', 237, 254]]
let s:p.tabline.middle = [['#7e7d87', '#e6dfdf', 244, 254]]
let s:p.tabline.left = [['#7e7d87', '#e6dfdf', 244, 254]]
let s:p.replace.left = [['#B22E32', '#F4D7D7', 125, 224], ['#303036', '#dcd2d2', 236, 188]]
let s:p.normal.warning = [['#906100', '#ffedc7', 94, 230]]
let s:p.normal.right = [['#2a2a30', '#d3c5c5', 236, 251], ['#303036', '#dcd2d2', 236, 188], ['#37363e', '#e6dfdf', 237, 254]]
let s:p.normal.middle = [['#37363e', '#e6dfdf', 237, 254]]
let s:p.normal.left = [['#2a2a30', '#d3c5c5', 236, 251], ['#303036', '#dcd2d2', 236, 188], ['#37363e', '#e6dfdf', 237, 254]]
let s:p.normal.error = [['#B22E32', '#F4D7D7', 125, 224]]
let s:p.insert.left = [['#346e27', '#C5E8BF', 238, 187], ['#303036', '#dcd2d2', 236, 188]]
let s:p.inactive.right = [['#7e7d87', '#e6dfdf', 244, 254], ['#7e7d87', '#e6dfdf', 244, 254], ['#7e7d87', '#e6dfdf', 244, 254]]
let s:p.inactive.middle = [['#7e7d87', '#e6dfdf', 244, 254]]
let s:p.inactive.left = [['#7e7d87', '#e6dfdf', 244, 254], ['#7e7d87', '#e6dfdf', 244, 254], ['#7e7d87', '#e6dfdf', 244, 254]]
let g:lightline#colorscheme#yui#palette = lightline#colorscheme#fill(s:p)

