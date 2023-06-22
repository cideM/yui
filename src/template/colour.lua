-- This file is mostly a port of https://raw.githubusercontent.com/tmux/tmux/master/colour.c
-- Also see the PR adding this functionality: https://github.com/tmux/tmux/pull/432
local hsluv = require("hsluv")

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
	local ir, ig, ib = colour_to_6cube(r), colour_to_6cube(g), colour_to_6cube(b)
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
	return tonumber("0x" .. hex:sub(1, 2)), tonumber("0x" .. hex:sub(3, 4)), tonumber("0x" .. hex:sub(5, 6))
end

M.hex_to_256 = function(hex)
	return M.color_find_256(M.hex_to_rgb(hex))
end

-- The code below this line is not part of the original tmux file!

M.lightness = function(color, amount)
	local color_hsluv = hsluv.hex_to_hsluv(color)
	color_hsluv[3] = color_hsluv[3] + amount
	return hsluv.hsluv_to_hex(color_hsluv)
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

-- This function is used in: https://github.com/primer/prism but comes from
-- the 'color2k' TS library
M.contrast = function(color1, color2)
	local l1 = luminance(color1)
	local l2 = luminance(color2)

	if l1 > l2 then
		return (l1 + 0.05) / (l2 + 0.05)
	end

	return (l2 + 0.05) / (l1 + 0.05)
end

return M
