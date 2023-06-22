local colour = require("colour")
local lighten = colour.lightness

local Lightline = {}

setmetatable(Lightline, {
	__call = function(_, ...)
		return Lightline:new(...)
	end,
	__tostring = function(__self)
		return __self:to_vim()
	end,
	__index = function(_, k)
		return rawget(Lightline, k)
	end,
})

function Lightline:new(palette)
	local bg_shades = {}
	local fg_shades = {}

	for i, factor in ipairs { 5, 0, -5 } do
		bg_shades[i] = lighten(palette.statusline_bg, factor)
		fg_shades[i] = lighten(palette.statusline_fg, factor)
	end

	-- higher index = darker, meaning lightline components towards the side of the
	-- statusline should use higher indexes
	local bg_shades_inactive = {
		bg_shades[1],
		bg_shades[1],
		bg_shades[1],
	}

	local fg_shades_inactive = {
		lighten(fg_shades[1], 15),
		lighten(fg_shades[1], 15),
		lighten(fg_shades[1], 15),
	}

	local t = {
		palette = palette,
		bg_shades = bg_shades,
		fg_shades = fg_shades,
		bg_shades_inactive = bg_shades_inactive,
		fg_shades_inactive = fg_shades_inactive,
	}

	setmetatable(t, getmetatable(self))
	return t
end

function Lightline:to_vim()
	local fg_shades = self.fg_shades
	local bg_shades = self.bg_shades
	local fg_shades_inactive = self.fg_shades_inactive
	local bg_shades_inactive = self.bg_shades_inactive

	local config = {
		normal = {
			left = {
				{ fg_shades[3], bg_shades[3] },
				{ fg_shades[2], bg_shades[2] },
			},
			right = {
				{ fg_shades[3], bg_shades[3] },
				{ fg_shades[3], bg_shades[3] },
				{ fg_shades[2], bg_shades[2] },
			},
			middle = { { fg_shades[1], bg_shades[1] } },
			error = { { self.palette.error_fg, self.palette.error_bg } },
			warning = { { self.palette.warning_fg, self.palette.warning_bg } },
		},
		insert = {
			left = {
				{ self.palette.info_fg, self.palette.info_bg },
				{ fg_shades[2], bg_shades[2] },
			},
		},
		visual = {
			left = {
				{ self.palette.focus_fg, self.palette.focus_bg },
				{ fg_shades[2], bg_shades[2] },
			},
		},
		replace = {
			left = {
				{ self.palette.warning_fg, self.palette.warning_bg },
				{ fg_shades[2], bg_shades[2] },
			},
		},
		inactive = {
			left = {
				{ fg_shades_inactive[3], bg_shades_inactive[3] },
				{ fg_shades_inactive[3], bg_shades_inactive[3] },
				{ fg_shades_inactive[2], bg_shades_inactive[2] },
			},
			right = {
				{ fg_shades_inactive[3], bg_shades_inactive[3] },
				{ fg_shades_inactive[3], bg_shades_inactive[3] },
				{ fg_shades_inactive[2], bg_shades_inactive[2] },
			},
			middle = { { fg_shades_inactive[1], bg_shades_inactive[1] } },
		},
		tabline = {
			left = { { self.palette.fg, self.palette.bg } },
			middle = { { self.palette.fg, self.palette.bg } },
			tabsel = { { self.palette.statusline_fg, self.palette.statusline_bg } },
		},
	}

	local out = {
		"let s:p = {'normal': {}, 'inactive': {}, 'insert': {}, 'replace': {}, 'visual': {}, 'tabline': {}}",
	}

	-- We want to iterate over keys in a table in a predictable and stable order
	-- to avoid Git diffs due to random key order when iterating over a table.
	local config_keys = {}
	for k in pairs(config) do
		table.insert(config_keys, k)
	end

	table.sort(config_keys, function(a, b)
		return a > b
	end)

	for _, mode in ipairs(config_keys) do
		local part = config[mode]

		local names = {}
		for name in pairs(part) do
			table.insert(names, name)
		end

		-- Sort the names so that the lightline colors are defined in a predictable order
		-- to avoid Git diffs due to random key order when iterating over a table.
		table.sort(names, function(a, b)
			return a > b
		end)

		for _, name in ipairs(names) do
			local loop_buf = {}
			local lightline_groups = part[name]

			for _, colors in ipairs(lightline_groups) do
				local fg, bg, style = table.unpack(colors)
				local fg_code, bg_code = colour.hex_to_256(fg), colour.hex_to_256(bg)

				local line
				if style ~= nil then
					line =
						-- let s:p.{mode}.{where} = [ [ {guifg}, {guibg}, {ctermfg}, {ctermbg} ], ... ]
						string.format("['%s', '%s', %d, %d, '%s']", fg, bg, fg_code, bg_code, style)
				else
					line = string.format("['%s', '%s', %d, %d]", fg, bg, fg_code, bg_code)
				end

				table.insert(loop_buf, line)
			end

			local line = table.concat(loop_buf, ", ")
			table.insert(out, string.format("let s:p.%s.%s = [%s]", mode, name, line))
		end
	end

	table.insert(out, "let g:lightline#colorscheme#yui#palette = lightline#colorscheme#fill(s:p)")

	return table.concat(out, "\n")
end

return Lightline
