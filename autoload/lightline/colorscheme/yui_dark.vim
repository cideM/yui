let s:p = {'normal': {}, 'inactive': {}, 'insert': {}, 'replace': {}, 'visual': {}, 'tabline': {}}
let s:p.visual.left = [['#69aafd', '#2d293f', 75, 236], ['#DCDBDB', '#454253', 253, 238]]
let s:p.tabline.tabsel = [['#DCDBDB', '#33313f', 253, 237]]
let s:p.tabline.middle = [['#796e78', '#33313f', 243, 237]]
let s:p.tabline.left = [['#796e78', '#33313f', 243, 237]]
let s:p.replace.left = [['#ee5c66', '#2e2737', 203, 236], ['#DCDBDB', '#454253', 253, 238]]
let s:p.normal.warning = [['#cfb787', '#322b38', 180, 236]]
let s:p.normal.right = [['#DCDBDB', '#555266', 253, 240], ['#DCDBDB', '#454253', 253, 238], ['#DCDBDB', '#33313f', 253, 237]]
let s:p.normal.middle = [['#DCDBDB', '#33313f', 253, 237]]
let s:p.normal.left = [['#DCDBDB', '#555266', 253, 240], ['#DCDBDB', '#454253', 253, 238], ['#DCDBDB', '#33313f', 253, 237]]
let s:p.normal.error = [['#ee5c66', '#2e2737', 203, 236]]
let s:p.insert.left = [['#70cf92', '#2b2d3a', 78, 236], ['#DCDBDB', '#454253', 253, 238]]
let s:p.inactive.right = [['#796e78', '#33313f', 243, 237], ['#796e78', '#33313f', 243, 237], ['#796e78', '#33313f', 243, 237]]
let s:p.inactive.middle = [['#796e78', '#33313f', 243, 237]]
let s:p.inactive.left = [['#796e78', '#33313f', 243, 237], ['#796e78', '#33313f', 243, 237], ['#796e78', '#33313f', 243, 237]]
let g:lightline#colorscheme#yui_dark#palette = lightline#colorscheme#fill(s:p)

