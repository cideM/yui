-- This file is mostly a port of https://raw.githubusercontent.com/tmux/tmux/master/colour.c
-- Also see the PR adding this functionality: https://github.com/tmux/tmux/pull/432
local hsluv = require "hsluv"

local M = {}

local function colour_dist_sq(R, G, B, r, g, b)
	return (R - r) * (R - r) + (G - g) * (G - g) + (B - b) * (B - b)
end

local function colour_to_6cube(v)
	if v < 48 then
		return 0
	elseif v < 114 then
		return 1
	end
	return (v - 35) // 40
end

-- Convert an RGB triplet to the xterm(1) 256 colour palette.
--
-- xterm provides a 6x6x6 colour cube (16 - 231) and 24 greys (232 - 255). We
-- map our RGB colour to the closest in the cube, also work out the closest
-- grey, and use the nearest of the two.
--
-- Note that the xterm has much lower resolution for darker colours (they are
-- not evenly spread out), so our 6 levels are not evenly spread: 0x0, 0x5f
-- (95), 0x87 (135), 0xaf (175), 0xd7 (215) and 0xff (255). Greys are more
-- evenly spread (8, 18, 28 ... 238).
M.color_find_256 = function(r, g, b)
	-- The colors which are represented are all the R/G/B combination where each
	-- channel is one of 6 possible values:
	-- 0x0, 0x5f (95), 0x87 (135), 0xaf (175), 0xd7 (215) and 0xff (255).
	local q2c = { 0x00, 0x5f, 0x87, 0xaf, 0xd7, 0xff }

	-- Map RGB to 6x6x6 cube.
	local ir, ig, ib =
		colour_to_6cube(r), colour_to_6cube(g), colour_to_6cube(b)
	local cr, cg, cb = q2c[ir + 1], q2c[ig + 1], q2c[ib + 1]

	-- If we have hit the colour exactly, return early.
	if cr == r and cg == g and cb == b then
		return 16 + (36 * ir) + (6 * ig) + ib
	end

	-- Work out the closest grey (average of RGB).
	local grey_avg = (r + g + b) // 3
	local grey_idx, grey
	if grey_avg > 238 then
		grey_idx = 23
	else
		grey_idx = (grey_avg - 3) // 10
	end
	grey = 8 + (10 * grey_idx)

	-- Is grey or 6x6x6 colour closest?
	local d = colour_dist_sq(cr, cg, cb, r, g, b)
	local idx
	if colour_dist_sq(grey, grey, grey, r, g, b) < d then
		idx = 232 + grey_idx
	else
		idx = 16 + (36 * ir) + (6 * ig) + ib
	end
	return idx
end

M.hex_to_rgb = function(hex)
	hex = hex:gsub("#", "")
	return tonumber("0x" .. hex:sub(1, 2)),
		tonumber("0x" .. hex:sub(3, 4)),
		tonumber("0x" .. hex:sub(5, 6))
end

M.hex_to_256 = function(hex)
	return M.color_find_256(M.hex_to_rgb(hex))
end

-----------------------------------------------------------------------
-----------------------------------------------------------------------
-- The code below this line is NOT part of the original tmux file!   --
-----------------------------------------------------------------------
-----------------------------------------------------------------------

M.brighten = function(hexcolor, percentage)
	local hsl = hsluv.hex_to_hsluv(hexcolor)
	local available = percentage < 0 and hsl[3] or 100 - hsl[3]
	hsl[3] = hsl[3] + available * percentage
	return hsluv.hsluv_to_hex(hsl)
end

local function luminance(c)
	-- Copied from the TS code here: https://github.com/ricokahler/color2k/blob/main/src/parseToRgba.ts#L119
	local r, g, b = table.unpack(hsluv.hex_to_rgb(c))
	r = r * 255 -- hex_to_rgb returns values between 0 and 1
	g = g * 255
	b = b * 255

	local f = function(x)
		local channel = x / 255
		if channel <= 0.03928 then
			return channel / 12.92
		end
		return ((channel + 0.055) / 1.055) ^ 2.4
	end

	return 0.2126 * f(r) + 0.7152 * f(g) + 0.0722 * f(b)
end

-- Measure the contrast between two colors. I don't know anything about
-- color spaces so I'm just using the formula from the WCAG 2.0 spec.
M.contrast = function(color1, color2)
	-- This function is used in: https://github.com/primer/prism but comes from
	-- the 'color2k' TS library
	local l1 = luminance(color1)
	local l2 = luminance(color2)

	if l1 > l2 then
		return (l1 + 0.05) / (l2 + 0.05)
	end

	return (l2 + 0.05) / (l1 + 0.05)
end

-- find_color_with_ratio finds a color that has the desired contrast ratio
-- with the base color. Delta is the amount to change the color by each
-- iteration. The color with the closest contrast ratio is returned.
-- Smaller deltas will result in more accurate results.
-- Pass a positive delta to brighten the color, and a negative delta to darken it.
M.find_color_with_ratio = function(color, contrast_ratio, base, delta)
	if not delta then
		error "delta is required"
	end

	local results = {}

	local cur = color
	while true do
		next = M.brighten(cur, delta):lower()

		if next == cur then
			break
		end

		local result = {
			color = next,
			contrast_diff = math.abs(M.contrast(next, base) - contrast_ratio),
		}
		table.insert(results, result)

		cur = next
	end

	local t = results
	if #t == 0 then
		error(
			"No color found "
				.. " with contrast ratio "
				.. contrast_ratio
				.. " from "
				.. color
				.. " to "
				.. base
		)
	end

	local best = t[1]
	for _, result in ipairs(t) do
		if result.contrast_diff < best.contrast_diff then
			best = result
		end
	end

	return best.color
end

-- Taken from a gist by harrygallagher4
-- https://gist.github.com/harrygallagher4/76434f43fcc2cf3c085c6e8dae0195c4
local function linearTween(start, stop)
	return function(i)
		return (((stop - start) * i) + start)
	end
end

-- Taken from a gist by harrygallagher4
-- https://gist.github.com/harrygallagher4/76434f43fcc2cf3c085c6e8dae0195c4
local function radialTween(start, stop)
	start = math.rad(start)
	stop = math.rad(stop)

	local delta = math.atan(math.sin(stop - start), math.cos(stop - start))
	return function(i)
		return ((math.deg(start + (delta * i)) + 360) % 360)
	end
end

-- Taken from a gist by harrygallagher4
-- https://gist.github.com/harrygallagher4/76434f43fcc2cf3c085c6e8dae0195c4
local function blend_hsluv(start, stop, ratio)
	ratio = ratio or 0.5

	local h = radialTween(start[1], stop[1])
	local s = linearTween(start[2], stop[2])
	local l = linearTween(start[3], stop[3])

	return { h(ratio), s(ratio), l(ratio) }
end

-- Taken from a gist by harrygallagher4
-- https://gist.github.com/harrygallagher4/76434f43fcc2cf3c085c6e8dae0195c4
-- ratio is a number between 0 and 1, where 0 is the start color and 1 is the
-- stop color
M.blend_hex = function(start, stop, ratio)
	local c1 = hsluv.hex_to_hsluv(start)
	local c2 = hsluv.hex_to_hsluv(stop)

	local mix = blend_hsluv(c1, c2, ratio)
	return hsluv.hsluv_to_hex(mix)
end

return M
