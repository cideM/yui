local function gen_variant(t, dsl)
	local lightline = dsl.lightline
	local get = dsl.get
	return {
		LlNormalMiddle = lightline {
			t.layer1.fg,
			t.layer1.bg,
		},
		LlNormalNextToMiddle = lightline {
			t.layer1.fg,
			t.layer1.bg,
		},
		LlNormalOuter = lightline {
			t.layer2.fg,
			t.layer2.bg,
		},
		LlNormalOutermost = lightline {
			t.layer3.fg,
			t.layer3.bg,
		},
		LlInactiveMiddle = lightline {
			get { "StatusLineNC", "guifg" },
			get { "StatusLineNC", "guibg" },
		},
		LlInactiveNextToMiddle = lightline {
			get { "LlInactiveMiddle", "fg" },
			get { "LlInactiveMiddle", "bg" },
		},
		LlInactiveOuter = lightline {
			get { "LlInactiveNextToMiddle", "fg" },
			get { "LlInactiveNextToMiddle", "bg" },
		},
		LlInactiveOutermost = lightline {
			get { "LlInactiveOuter", "fg" },
			get { "LlInactiveOuter", "bg" },
		},
		LlVisualLeft1 = lightline { t.info.fg, t.info.bg },
		LlTablineTabsel = lightline {
			get { "StatusLine", "guifg" },
			get { "StatusLine", "guibg" },
		},
		LlTablineMiddle = lightline {
			get { "TabLine", "guifg" },
			get { "TabLine", "guibg" },
		},
		LlTablineLeft = lightline {
			get { "TabLine", "guifg" },
			get { "TabLine", "guibg" },
		},
		LlReplaceLeft1 = lightline { t.error.fg, t.error.bg },
		LlNormalWarning = lightline { t.warning.fg, t.warning.bg },
		LlNormalError = lightline { t.error.fg, t.error.bg },
		LlInsertLeft1 = lightline { t.success.fg, t.success.bg },
	}
end

return function(t, dsl)
	return {
		light = gen_variant(t.light, dsl),
		dark = gen_variant(t.dark, dsl),
	}
end
