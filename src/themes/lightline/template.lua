local interpolate = require("lib/strings").interpolate
local merge = require("lib/table").merge

return function(colors, name)
	return interpolate(
		[[
let s:p = {'normal': {}, 'inactive': {}, 'insert': {}, 'replace': {}, 'visual': {}, 'tabline': {}}
let s:p.visual.left = [${LlVisualLeft1}, ${LlNormalOuter}]
let s:p.tabline.tabsel = [${LlTablineTabsel}]
let s:p.tabline.middle = [${LlTablineMiddle}]
let s:p.tabline.left = [${LlTablineLeft}]
let s:p.replace.left = [${LlReplaceLeft1}, ${LlNormalOuter}]
let s:p.normal.warning = [${LlNormalWarning}]
let s:p.normal.right = [${LlNormalOutermost}, ${LlNormalOuter}, ${LlNormalNextToMiddle}]
let s:p.normal.middle = [${LlNormalMiddle}]
let s:p.normal.left = [${LlNormalOutermost}, ${LlNormalOuter}, ${LlNormalNextToMiddle}]
let s:p.normal.error = [${LlNormalError}]
let s:p.insert.left = [${LlInsertLeft1}, ${LlNormalOuter}]
let s:p.inactive.right = [${LlInactiveOutermost}, ${LlInactiveOuter}, ${LlInactiveNextToMiddle}]
let s:p.inactive.middle = [${LlInactiveMiddle}]
let s:p.inactive.left = [${LlInactiveOutermost}, ${LlInactiveOuter}, ${LlInactiveNextToMiddle}]
let g:lightline#colorscheme#${name}#palette = lightline#colorscheme#fill(s:p)
]],
		merge(colors, { name = name })
	)
end
