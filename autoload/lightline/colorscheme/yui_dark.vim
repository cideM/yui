let s:p = {'normal': {}, 'inactive': {}, 'insert': {}, 'replace': {}, 'visual': {}, 'tabline': {}}
let s:p.visual.left = [['#69aafd', '#3d3b51', 75, 238], ['#eae9e9', '#474355', 255, 239]]
let s:p.tabline.tabsel = [['#e0dfdf', '#3e3b4b', 254, 238]]
let s:p.tabline.middle = [['#837f7f', '#3e3b4b', 244, 238]]
let s:p.tabline.left = [['#837f7f', '#3e3b4b', 244, 238]]
let s:p.replace.left = [['#ee5c66', '#443C51', 203, 238], ['#eae9e9', '#474355', 255, 239]]
let s:p.normal.warning = [['#cfb787', '#473f50', 180, 238]]
let s:p.normal.right = [['#f5f4f4', '#4f4b5f', 255, 240], ['#eae9e9', '#474355', 255, 239], ['#e0dfdf', '#3e3b4b', 254, 238]]
let s:p.normal.middle = [['#e0dfdf', '#3e3b4b', 254, 238]]
let s:p.normal.left = [['#f5f4f4', '#4f4b5f', 255, 240], ['#eae9e9', '#474355', 255, 239], ['#e0dfdf', '#3e3b4b', 254, 238]]
let s:p.normal.error = [['#ee5c66', '#443C51', 203, 238]]
let s:p.insert.left = [['#70cf92', '#373f39', 78, 237], ['#eae9e9', '#474355', 255, 239]]
let s:p.inactive.right = [['#837f7f', '#3e3b4b', 244, 238], ['#837f7f', '#3e3b4b', 244, 238], ['#837f7f', '#3e3b4b', 244, 238]]
let s:p.inactive.middle = [['#837f7f', '#3e3b4b', 244, 238]]
let s:p.inactive.left = [['#837f7f', '#3e3b4b', 244, 238], ['#837f7f', '#3e3b4b', 244, 238], ['#837f7f', '#3e3b4b', 244, 238]]
let g:lightline#colorscheme#yui_dark#palette = lightline#colorscheme#fill(s:p)

