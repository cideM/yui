let s:p = {'normal': {}, 'inactive': {}, 'insert': {}, 'replace': {}, 'visual': {}, 'tabline': {}}
let s:p.visual.left = [['#69aafd', '#292b3c', 75, 236], ['#9295a6', '#171820', 247, 234]]
let s:p.tabline.tabsel = [['#9295a6', '#171820', 247, 234]]
let s:p.tabline.middle = [['#4f5264', '#171820', 240, 234]]
let s:p.tabline.left = [['#4f5264', '#171820', 240, 234]]
let s:p.replace.left = [['#ee5c66', '#2b283b', 203, 236], ['#9295a6', '#171820', 247, 234]]
let s:p.normal.warning = [['#cfb787', '#302b3b', 180, 236]]
let s:p.normal.right = [['#86899d', '#16171f', 103, 234], ['#9295a6', '#171820', 247, 234], ['#9395a6', '#181921', 247, 234]]
let s:p.normal.middle = [['#9395a6', '#181921', 247, 234]]
let s:p.normal.left = [['#86899d', '#16171f', 103, 234], ['#9295a6', '#171820', 247, 234], ['#9395a6', '#181921', 247, 234]]
let s:p.normal.error = [['#ee5c66', '#2b283b', 203, 236]]
let s:p.insert.left = [['#70cf92', '#2a2e36', 78, 236], ['#9295a6', '#171820', 247, 234]]
let s:p.inactive.right = [['#4f5264', '#171820', 240, 234], ['#4f5264', '#171820', 240, 234], ['#4f5264', '#171820', 240, 234]]
let s:p.inactive.middle = [['#4f5264', '#171820', 240, 234]]
let s:p.inactive.left = [['#4f5264', '#171820', 240, 234], ['#4f5264', '#171820', 240, 234], ['#4f5264', '#171820', 240, 234]]
let g:lightline#colorscheme#yui_dark#palette = lightline#colorscheme#fill(s:p)

