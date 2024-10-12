let s:p = {'normal': {}, 'inactive': {}, 'insert': {}, 'replace': {}, 'visual': {}, 'tabline': {}}
let s:p.visual.left = [['#3856d1', '#e5dcf3', 62, 254], ['#3D3C44', '#dcd2d2', 238, 188]]
let s:p.tabline.tabsel = [['#3D3C44', '#e6dfdf', 238, 254]]
let s:p.tabline.middle = [['#aa95a1', '#e6dfdf', 247, 254]]
let s:p.tabline.left = [['#aa95a1', '#e6dfdf', 247, 254]]
let s:p.replace.left = [['#B22E32', '#f2d8d8', 125, 224], ['#3D3C44', '#dcd2d2', 238, 188]]
let s:p.normal.warning = [['#615413', '#fde37c', 58, 222]]
let s:p.normal.right = [['#3D3C44', '#d3c5c5', 238, 251], ['#3D3C44', '#dcd2d2', 238, 188], ['#3D3C44', '#e6dfdf', 238, 254]]
let s:p.normal.middle = [['#3D3C44', '#e6dfdf', 238, 254]]
let s:p.normal.left = [['#3D3C44', '#d3c5c5', 238, 251], ['#3D3C44', '#dcd2d2', 238, 188], ['#3D3C44', '#e6dfdf', 238, 254]]
let s:p.normal.error = [['#B22E32', '#f2d8d8', 125, 224]]
let s:p.insert.left = [['#565633', '#e8e792', 239, 186], ['#3D3C44', '#dcd2d2', 238, 188]]
let s:p.inactive.right = [['#aa95a1', '#e6dfdf', 247, 254], ['#aa95a1', '#e6dfdf', 247, 254], ['#aa95a1', '#e6dfdf', 247, 254]]
let s:p.inactive.middle = [['#aa95a1', '#e6dfdf', 247, 254]]
let s:p.inactive.left = [['#aa95a1', '#e6dfdf', 247, 254], ['#aa95a1', '#e6dfdf', 247, 254], ['#aa95a1', '#e6dfdf', 247, 254]]
let g:lightline#colorscheme#yui#palette = lightline#colorscheme#fill(s:p)

