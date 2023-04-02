local yui = require("yui")
local theme = require("theme")
print(theme.make_theme(yui.term_colors, yui.option_groups, yui.groups))
